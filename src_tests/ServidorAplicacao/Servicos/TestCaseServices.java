/*
 * TestCaseServices.java
 *
 * Created on 2003/04/05
 */

package ServidorAplicacao.Servicos;

import junit.framework.TestCase;
import ServidorAplicacao.FenixServiceException;
import ServidorAplicacao.GestorServicos;
import ServidorAplicacao.IUserView;
import ServidorAplicacao.Servico.Autenticacao;
import ServidorPersistente.OJB.SuportePersistenteOJB;
import Tools.dbaccess;

/**
  * @author Luis Cruz & Sara Ribeiro
  * 
 **/
public abstract class TestCaseServices extends TestCase {

	protected GestorServicos gestor = null;
	protected IUserView userViewAuthorized = null;
	protected IUserView userViewNotAuthorized = null;
	private dbaccess dbAcessPoint = null;

	protected Object[] args = null;
	protected Object result = null;

	public TestCaseServices(String testName) {
		super(testName);
	}

	protected void setUp() {
		try {
			dbAcessPoint = new dbaccess();
			dbAcessPoint.openConnection();
			dbAcessPoint.backUpDataBaseContents("etc/testBackup.xml");
			dbAcessPoint.loadDataBase(getDataSetFilePath());
			dbAcessPoint.closeConnection();
		} catch (Exception ex) {
			fail("Setup failed loading database with test data set: " + ex);
		}
		// to clear cache
		SuportePersistenteOJB.resetInstance();
		gestor = GestorServicos.manager();
		setUserViewAuthorized();
		setUserViewNotAuthorized();
	}

	/**
	 * @return
	 */
	protected String getDataSetFilePath() {
		return "etc/testDataSet.xml";
	}

	protected void tearDown() {
//		try {
//			dbAcessPoint.openConnection();
//			dbAcessPoint.loadDataBase("etc/testBackup.xml");
//			dbAcessPoint.closeConnection();
//		} catch (Exception ex) {
//			System.out.println("Tear down failed: " +ex);
//		}
	}
	
	public String getApplication(){
		return Autenticacao.EXTRANET;
	}

	protected void callServiceWithAuthorizedUserView()
		throws FenixServiceException {
		result =
			gestor.executar(
				userViewAuthorized,
				getNameOfServiceToBeTested(),
				args);
	}

	protected void callServiceWithUnauthorizedUserView()
		throws FenixServiceException {
		result =
			gestor.executar(
				userViewNotAuthorized,
				getNameOfServiceToBeTested(),
				args);
	}

	/**
	 * This method must return a String with the name of the service to be tested.
	 */
	protected abstract String getNameOfServiceToBeTested();

	/**
	 * This method must return 'true' if the service needs authorization to be runned and 'false' otherwise.
	 */
	protected boolean needsAuthorization() {
		return false;
	}

	/**
	 * @return
	 */
	public IUserView getUserViewAuthorized() {
		return userViewAuthorized;
	}

	/**
	 * @return
	 */
	public IUserView getUserViewNotAuthorized() {
		return userViewNotAuthorized;
	}

	/**
	 * @param
	 */
	public void setUserViewAuthorized() {
		String argsForAuthentication[] = { "user", "pass" , getApplication()};

		try {
			userViewAuthorized =
				(IUserView) gestor.executar(
					null,
					"Autenticacao",
					argsForAuthentication);
		} catch (Exception ex) {
			fail("Failed obtainning an authorized user view");
		}
	}

	/**
	 * @param
	 */
	public void setUserViewNotAuthorized() {
		String argsForAuthentication[] = { "julia", "pass" , getApplication()};

		try {
			userViewNotAuthorized =
				(IUserView) gestor.executar(
					null,
					"Autenticacao",
					argsForAuthentication);
		} catch (Exception ex) {
			fail("Failed obtainning an unauthorized user view");
		}
	}

}
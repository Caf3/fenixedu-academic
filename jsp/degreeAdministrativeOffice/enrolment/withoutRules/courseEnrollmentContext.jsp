<%@ page language="java" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<logic:present name="infoStudentEnrolmentContext">
	<bean:define id="studentNumber" name="infoStudentEnrolmentContext" property="infoStudentCurricularPlan.infoStudent.number" />
	<bean:define id="executionYear" name="infoStudentEnrolmentContext" property="infoExecutionPeriod.infoExecutionYear.year" />
</logic:present>

<table width="100%" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td bgcolor="#FFFFFF" class="infoselected">
			<b><bean:message key="label.student.enrollment.number"/></b>&nbsp;
			<logic:present name="studentNumber">
				<bean:write name="studentNumber" />
			</logic:present>
			<br/>
			<b><bean:message key="label.executionYear" /></b>&nbsp;
			<logic:present name="executionYear">
				<bean:write name="executionYear" />
			</logic:present>
		</td>
	</tr>
</table>

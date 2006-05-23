package net.sourceforge.fenixedu.presentationTier.Action.publico;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sourceforge.fenixedu.domain.ExecutionCourse;
import net.sourceforge.fenixedu.presentationTier.Action.base.FenixDispatchAction;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class ExecutionCourseDA extends FenixDispatchAction {

    public ActionForward firstPage(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
    	final String executionCourseIDString = request.getParameter("executionCourseID");
    	final Integer executionCourseID = Integer.valueOf(executionCourseIDString);
    	final ExecutionCourse executionCourse = rootDomainObject.readExecutionCourseByOID(executionCourseID);
    	request.setAttribute("executionCourse", executionCourse);
        return mapping.findForward("execution-course-first-page");
    }

}
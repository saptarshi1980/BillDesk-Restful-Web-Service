package in.net.dpl.controller;

import in.net.dpl.model.TenderModel;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
@Controller
@RequestMapping(value="/register.htm")
public class TenderController {
   
	@RequestMapping(method = RequestMethod.GET)
    public String redirect() {
		System.out.println("TEST");
        return "tenderDetailsEntry";
    }
	
	
	
	@RequestMapping(method = RequestMethod.POST)
    public String processRegistration(HttpServletRequest request,Model model) {
         
       TenderModel tm=new TenderModel();
       tm.setTenderGroup(request.getParameter("tendergroup"));
       tm.setTenderRefNo(request.getParameter("ref_no"));
       tm.setTenderType(request.getParameter("tender_type"));
       tm.setEstimatedValue(request.getParameter("estimated_value"));
       tm.setOpeningDateTime(request.getParameter("datetimepicker_dark1"));
       tm.setClosingDateTime(request.getParameter("datetimepicker_dark2"));
       tm.setPrebidDateTime(request.getParameter("datetimepicker_dark3"));
       tm.setSubmissionDateTime(request.getParameter("datetimepicker_dark4"));
       tm.setScope(request.getParameter("scope"));
       model.addAttribute("tenderInfo", tm);
       
    return "tenderfileupload";
    }
}

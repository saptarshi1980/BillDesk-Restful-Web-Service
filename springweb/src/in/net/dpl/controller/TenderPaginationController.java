package in.net.dpl.controller;



import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import in.net.dpl.dao.TenderDAO;
import in.net.dpl.model.TenderModel;

@Controller
public class TenderPaginationController {

    @RequestMapping(value = "/tenderview.htm", method = 
	    RequestMethod.GET)
    public String printWelcome(HttpServletRequest request, HttpServletResponse response) {
    	System.out.println("Inside");
    	return "paginationTender";

    }

    @RequestMapping("/displaytender.htm")
        public String printWelcomeDisplay(HttpServletRequest request, HttpServletResponse response, @RequestParam("pageNumber") String pageNumber) {
        	System.out.println("Inside");
        	return "displayTender";
}
    @RequestMapping("/GetTenderFiles.htm")
    public ModelAndView getTenderDetails(@RequestParam("params") String params) {
    	ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("spring.xml");
    	TenderDAO tdao=(TenderDAO) ctx.getBean("tdao");
    	List<String> tms = tdao.findTenderFile(params);
    	System.out.println(tms); 
    	ModelAndView model = new ModelAndView("displayFiles");
    	String date=right(params,8);
    	String referenceNo=params.substring(0,params.length()-8);
    	System.out.println("Date-"+date);
    	System.out.println("Ref No-"+referenceNo);
		model.addObject("files",tms);
		model.addObject("ref_no",referenceNo);
		model.addObject("date",date);
    	return model;
}

    @RequestMapping(value="/listDeptTender.htm",method = RequestMethod.GET)
    public ModelAndView getDeptTender(@RequestParam("params") String params) {
    	ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("spring.xml");
    	//TenderDAO tdao=(TenderDAO) ctx.getBean("tdao");
    	//List<String> tms = tdao.findTenderFile(params);
    	//System.out.println(tms); 
    	ModelAndView model = new ModelAndView("paginationTender");
    	model.addObject("params",params);
       	return model;
}
    
    public String right(String str, int len) {
        if (str == null) {
            return null;
        }
        if (len < 0) {
            return "";
        }
        if (str.length() <= len) {
            return str;
        }
        return str.substring(str.length() - len);
    }
    
    
}
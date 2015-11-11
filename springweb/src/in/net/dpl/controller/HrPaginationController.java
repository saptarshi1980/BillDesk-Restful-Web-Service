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

import in.net.dpl.dao.HrDAO;

import in.net.dpl.model.TenderModel;

@Controller
public class HrPaginationController {



    @RequestMapping(value="/listHr.htm",method = RequestMethod.GET)
    public ModelAndView getDeptTender() {
    	
    	ModelAndView model = new ModelAndView("paginationHr");
    
       	return model;
}
    @RequestMapping("/GetHrFiles.htm")
    public ModelAndView getTenderDetails(@RequestParam("params") String params) {
    	ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("spring.xml");
    	HrDAO hrdao=(HrDAO) ctx.getBean("hrdao");
    	List<String> fms = hrdao.findPdfFile(params);
    	System.out.println(fms); 
    	ModelAndView model = new ModelAndView("displayHrFiles");
    	model.addObject("files",fms);
    	return model;
}
    
    
    
}
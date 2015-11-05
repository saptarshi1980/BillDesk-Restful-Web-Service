package in.net.dpl.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import in.net.dpl.dao.TenderDAO;
import in.net.dpl.model.TenderAuth;
import in.net.dpl.model.TenderModel;
import in.net.dpl.utility.TodayAsString;
import org.springframework.context.support.ClassPathXmlApplicationContext;

@Controller
public class TenderLoginAuth {
	
	@RequestMapping(value = "/tenderLoginAuth.htm", method = RequestMethod.POST)
	public String displayForm(@RequestParam("user_id") String user_id,@RequestParam("password") String password,HttpServletRequest request) {
		//request.setAttribute("user_id", user_id);
		//request.setAttribute("password", password);
		
		TenderAuth ta=new TenderAuth();
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("spring.xml");
    	TenderDAO tdao=(TenderDAO) ctx.getBean("tdao");
    	String data=tdao.tenderLoginAuth(user_id, password);
    	
    	if(!data.matches("UNAUTHORIZED"))
    	{
    		//ta.setUserId(user_id);
    		request.setAttribute("deptName", data);
    		return "tenderDetailsEntry";
    	}else{
    		return "tender_login";
    	}
	}

}

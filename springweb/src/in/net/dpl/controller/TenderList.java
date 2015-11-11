package in.net.dpl.controller;

import org.springframework.stereotype.Controller;
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
import in.net.dpl.model.TenderModel;
import in.net.dpl.utility.TodayAsString;
import org.springframework.context.support.ClassPathXmlApplicationContext;


@Controller
public class TenderList {
	
	@RequestMapping(value = "/tenderList.htm", method = RequestMethod.GET)
	public String displayForm(Model model,HttpServletRequest request) {
		
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("spring.xml");
    	TenderDAO tdao=(TenderDAO) ctx.getBean("tdao");
    	List<TenderModel> ltm=new ArrayList<TenderModel>();
    	ltm=tdao.tenderList();
    	System.out.println("Size-"+ltm.size());
    	request.setAttribute("ltm",ltm);
    	return "tenderList";
	}

}

package in.net.dpl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class OtherLogin{
	@RequestMapping(value="/fileUploadLogin.htm",method = RequestMethod.GET)
	public ModelAndView fileindex(){
 
		ModelAndView model = new ModelAndView("file_upload_login"); 
		return model;
	}
	
	@RequestMapping(value="/hrUploadLogin.htm",method = RequestMethod.GET)
	public ModelAndView hrindex(){
 
		ModelAndView model = new ModelAndView("hr_upload_login"); 
		return model;
	}
	
	@RequestMapping(value="/tariffUploadLogin.htm",method = RequestMethod.GET)
	public ModelAndView tariffindex(){
 
		ModelAndView model = new ModelAndView("tariff_upload_login"); 
		return model;
	}
}

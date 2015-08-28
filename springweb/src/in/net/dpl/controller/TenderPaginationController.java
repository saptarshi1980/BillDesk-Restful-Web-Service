package in.net.dpl.controller;



import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

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
    
}
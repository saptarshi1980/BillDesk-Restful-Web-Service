package in.net.dpl.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FileDownloadController {

	@RequestMapping("/downloadtender.htm")
	    public void doDownload(@RequestParam("file_name") String file_name,HttpServletResponse response) {
		      
		try {
	        String filePathToBeServed = "C:/uploads/"+file_name;
	        File fileToDownload = new File(filePathToBeServed);
	        InputStream inputStream = new FileInputStream(fileToDownload);
	        response.setContentType("application/force-download");
	        response.setHeader("Content-Disposition", "attachment; filename="+file_name+".pdf"); 
	        IOUtils.copy(inputStream, response.getOutputStream());
	        response.flushBuffer();
	        inputStream.close();
	    }catch (IOException e){
	        
	        e.printStackTrace();
	    } 
		catch (Exception e){
	        
	        e.printStackTrace();
	    }	
}
}

package in.net.dpl.controller;


import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


 
/**
 * Handles requests for the application file upload requests
 */
@Controller
public class FileUploadController {
 
    
    /**
     * Upload single file using Spring Controller
     */
    @RequestMapping(value = "/uploadFile.htm", method = RequestMethod.POST)
    public @ResponseBody
    String uploadFileHandler(@RequestParam("tender_group") String tender_group,@RequestParam("ref_no") String ref_no,@RequestParam("tender_type") String tender_type,@RequestParam("estimated_value") String estimated_vale,@RequestParam("opening_date") String opening_date,@RequestParam("closing_date") String closing_date,@RequestParam("prebid_date") String prebid_date,@RequestParam("submission_date") String submission_date,@RequestParam("scope") String scope,
            @RequestParam("file") MultipartFile file) {
 
        System.out.println("Tender group-"+tender_group);
    	if (!file.isEmpty()) {
            try {
                byte[] bytes = file.getBytes();
                String name=file.getOriginalFilename();
                System.out.println("File Name-"+name);
                // Creating the directory to store file
                String rootPath = System.getProperty("C:/uploads");
                //File dir = new File(rootPath + File.separator + "tmpFiles");
                File dir = new File(rootPath+ File.separator);
                if (!dir.exists())
                    dir.mkdirs();
 
                // Create the file on server
                File serverFile = new File("c:/uploads"+ File.separator + name);
                BufferedOutputStream stream = new BufferedOutputStream(
                        new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
 
                               return "You successfully uploaded file="  ;
            } catch (Exception e) {
                return "You failed to upload  => " + e.getMessage();
            }
        } else {
            return "You failed to upload because the file was empty.";
        }
    }
 
    /**
     * Upload multiple file using Spring Controller
     */
    @RequestMapping(value = "/xxxxxxxxxx.htm", method = RequestMethod.POST)
    public @ResponseBody
    String uploadMultipleFileHandler(@RequestParam("name") String[] names,
            @RequestParam("file") MultipartFile[] files) {
 
        if (files.length != names.length)
            return "Mandatory information missing";
 
        String message = "";
        for (int i = 0; i < files.length; i++) {
            MultipartFile file = files[i];
            String name = names[i];
            try {
                byte[] bytes = file.getBytes();
 
                // Creating the directory to store file
                String rootPath = System.getProperty("catalina.home");
                File dir = new File(rootPath + File.separator + "tmpFiles");
                if (!dir.exists())
                    dir.mkdirs();
 
                // Create the file on server
                File serverFile = new File(dir.getAbsolutePath()
                        + File.separator + name);
                BufferedOutputStream stream = new BufferedOutputStream(
                        new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
 
               
                message = message + "You successfully uploaded file=" + name
                        + "<br />";
            } catch (Exception e) {
                return "You failed to upload " + name + " => " + e.getMessage();
            }
        }
        return message;
    }
    @RequestMapping(value = "/show.htm", method = RequestMethod.GET)
	public String displayForm() {
		return "file_upload_form";
	}
	
	
	/*public String save(
			@ModelAttribute("uploadForm") FileUploadForm uploadForm,
					Model map) {
		
		List<MultipartFile> files = uploadForm.getFiles();

		List<String> fileNames = new ArrayList<String>();
		
		if(null != files && files.size() > 0) {
			for (MultipartFile multipartFile : files) {

				//String fileName = multipartFile.getOriginalFilename();
				if (!multipartFile.isEmpty()) {
		            try {
		                byte[] bytes = multipartFile.getBytes();
		                String name=multipartFile.getOriginalFilename();
		                System.out.println("File Name-"+name);
		                // Creating the directory to store file
		                String rootPath = System.getProperty("C:/uploads");
		                //File dir = new File(rootPath + File.separator + "tmpFiles");
		                File dir = new File(rootPath+ File.separator);
		                if (!dir.exists())
		                    dir.mkdirs();
		 
		                // Create the file on server
		                File serverFile = new File("c:/uploads"+ File.separator + name);
		                BufferedOutputStream stream = new BufferedOutputStream(
		                        new FileOutputStream(serverFile));
		                stream.write(bytes);
		                stream.close();
		 
		                               
		            } catch (Exception e) {
		                
		            }
		        } else {
		            
		        }
				
				//fileNames.add(fileName);
				//Handle file content - multipartFile.getInputStream()

			}
			
		}
		
		map.addAttribute("files", fileNames);
		return "file_upload_success";
	}*/
	private String saveDirectory = "C:/uploads/";
	
	@RequestMapping(value = "/uploadMultipleFile.htm", method = RequestMethod.POST)
	public String save(
            @ModelAttribute("uploadForm") FileUploadForm uploadForm,
                    Model map) throws IllegalStateException, IOException {
         
        List<MultipartFile> files = uploadForm.getFiles();
 
        List<String> fileNames = new ArrayList<String>();
         
        if(null != files && files.size() > 0) {
            for (MultipartFile multipartFile : files) {
 
                String fileName = multipartFile.getOriginalFilename();
                fileNames.add(fileName);
                //Handle file content - multipartFile.getInputStream()
                multipartFile.transferTo(new File(saveDirectory + multipartFile.getOriginalFilename()));   //Here I Added
            }
        }
         
        map.addAttribute("files", fileNames);
        return "file_upload_success";
    }
}
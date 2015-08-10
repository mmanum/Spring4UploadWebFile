package net.xaduin.spring4.uploadwebfile.controller;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;




@Controller
@RequestMapping("/")
public class FileUploadControler {

	@PostConstruct
	public void showInit() {
	   System.out.println("---- The Bean " + this.getClass().getName() + " it's initialized ----");
	}
	
	
	@RequestMapping(value = "upload", method = RequestMethod.GET )
	public ModelAndView displayForm() {
				
		ModelAndView mav = new ModelAndView("uploadfile");
		return mav;
	}
	
	
	@RequestMapping(value = "savefiles", method = RequestMethod.POST )
	public ModelAndView save( 	@ModelAttribute("uploadForm") FileUploadForm uploadForm,
								Model map) throws IllegalStateException, IOException {
				
		String saveDirectory = "uploads";
		
		List<MultipartFile> uploadFiles = uploadForm.getFiles();
		List<String> fileNames = new ArrayList<String>();
		
		if(null != uploadFiles && uploadFiles.size > 0) {
			for(MultipartFile multipartFile : uploadFiles) {
				String fileName = multipartFile.getOriginalFilename();
				if(!"".equalsIgnoreCase(fileName)) {
					multipartFile.transferTo(new File(saveDirectory + fileName));
					fileNames.add(fileName);
				}
			}
				
		}
		map.addAttribute("files", fileNames);
		ModelAndView mav = new ModelAndView("uploadfilesuccess");
		return mav;
	}

}

package com.lwz.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Controller
public class UploadController {
    @RequestMapping("/toUpload")
    public String toUpload(){
        return "upload";
    }

    @PostMapping("/doUpload")
    public String doUpload(MultipartFile photo, HttpServletRequest request) throws IOException {
//        System.out.println(photo.getOriginalFilename());
        String ext = photo.getOriginalFilename().substring(photo.getOriginalFilename().lastIndexOf("."));
        String newFile= UUID.randomUUID()+ext;
        photo.transferTo(new File(request.getServletContext().getRealPath("/static/upload/") + newFile));
        return "redirect:/book/list";

    }
}

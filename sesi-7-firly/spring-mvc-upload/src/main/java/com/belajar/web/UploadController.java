package com.belajar.web;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author didik wahyudi
 */
@Controller
public class UploadController {
    
       
@RequestMapping(value = "/foto/uploadFoto", method = RequestMethod.GET)
    public void UploadFoto() {
        System.out.print("upload foto");
    }

@RequestMapping(value = "/foto/uploadFoto", method = RequestMethod.POST)
    public ModelMap ProsesUploadFoto(@RequestParam("photofile") MultipartFile hasilUpload) throws Exception {
        String fileName = hasilUpload.getOriginalFilename();
        File file = new File("src/main/webapp/WEB-INF/templates/foto upload/"+fileName);
        hasilUpload.transferTo(file);
        ModelMap mm = new ModelMap();
        String pesan = "sudah di upload";
        mm.addAttribute("pesan", pesan);
        return mm;
    
    //System.out.print("proses upload foto");
    }
@RequestMapping("/foto/daftarFoto")
    public ModelMap daftarFoto() {
        List<Upload> f = new ArrayList<Upload>();
        String dir = "src/main/webapp/WEB-INF/templates/foto upload/";
        File fileFoto = new File(dir);
        File[] daftar = fileFoto.listFiles();
        for(File file : daftar){
            if(file.isFile()){
                Upload u = new Upload();
                u.setFileName(file.getName());
                u.setUkuran(file.length()/1024);
                f.add(u);
            }
        }
        
        ModelMap mm = new ModelMap();
        mm.addAttribute("daftarFoto", f);
        return mm;
    }
}


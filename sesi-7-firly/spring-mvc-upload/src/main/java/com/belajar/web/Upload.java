package com.belajar.web;

/**
 * Hello world!
 *
 */
public class Upload 
{
    private String fileName;
    private Long ukuran;

   public void setFileName(String fileName){
       this.fileName = fileName;
   }
    
   public String getFileName(){
       return fileName;
   }
   
   public void setUkuran(Long ukuran){
       this.ukuran = ukuran;
   }
    
   public Long getUkuran(){
       return ukuran;
   }
    
}

package net.xaduin.spring4.uploadwebfiles.form;

import java.util.List;
import org.springframework.web.multipart.MultipartFile;
 
public class FileUploadForm {
 
    private List<MultipartFile> uploadFiles;
 
    public List<MultipartFile> getFiles() {
        return uploadFiles;
    }
 
    public void setFiles(List<MultipartFile> files) {
        this.uploadFiles = files;
    }
}
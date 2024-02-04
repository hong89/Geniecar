package com.rental.geniecar.common.file;

import java.io.File;

import org.springframework.core.io.FileSystemResource;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
 class FileDownloadController {
		
		// JJ
		// 이미지 다운로드
		@GetMapping("/downloadFile/{fileName:.+}")
	    public ResponseEntity<FileSystemResource> downloadFile(@PathVariable String fileName) {
	        String filePath = "C:\\geniecar_images" + File.separator + fileName;
	        File file = new File(filePath);

	        return ResponseEntity
	                .ok()
	                .body(new FileSystemResource(file));
	    }
	}
package com.victor.dongwha.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.victor.dongwha.common.FileUtils;
import com.victor.dongwha.service.FileService;
import com.victor.dongwha.vo.FileVO;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

@RestController
public class FileApiController {

	@Autowired private FileService fileService;
	@Autowired private FileUtils fileUtils;

    /* // 파일 리스트 조회
    @GetMapping("/posts/{postId}/files")
    public List<FileResponse> findAllFileByPostId(@PathVariable final Long postId) {
        return fileService.findAllFileByPostId(postId);
    } */

    // 첨부파일 다운로드
    @GetMapping("/posts/files/{seq}/download")
    public ResponseEntity<Resource> downloadFile(@PathVariable final Long seq) {
				System.out.println("################## file id ######################" + seq);
        FileVO file = fileService.findFile(seq);
				System.out.println("################### file vo ######################" + file);
        Resource resource = fileUtils.readFileResource(file);
        try {
            String filename = URLEncoder.encode(file.getOrgName(), "UTF-8");
            return ResponseEntity.ok()
                    .contentType(MediaType.APPLICATION_OCTET_STREAM)
                    .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; fileName=\"" + filename + "\";")
                    .header(HttpHeaders.CONTENT_LENGTH, file.getFileSize() + "")
                    .body(resource);

        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("filename encoding failed : " + file.getOrgName());
        }
    }

}
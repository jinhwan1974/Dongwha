package com.victor.dongwha.common;

import com.victor.dongwha.vo.FileVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.UUID;

@Component
@Slf4j
public class FileUtils {

    private final String uploadPath = Paths.get("D:", "develop", "upload-files").toString();

    /**
     * 단일 파일 업로드
     * @author juyeon
     * @date 2023-07-11
     **/
    public FileVO uploadFile(MultipartFile multipartFile) {

        if (multipartFile.isEmpty()) {
            return null;
        }

        String saveName = generateSaveFilename(multipartFile.getOriginalFilename());

        String today = LocalDate.now().format(DateTimeFormatter.ofPattern("yyMMdd"));
        // String uploadPath = getUploadPath(today) + File.separator + saveName; // 저장날짜 임시주석처리 (해당 컬럼 없음)
        String uploadPath = getUploadPath() + File.separator + saveName;
        log.info("maki ::: {}", uploadPath);
        File uploadFile = new File(uploadPath);

        try {
            multipartFile.transferTo(uploadFile);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

        return FileVO.builder()
                .orgName(multipartFile.getOriginalFilename())
                .fileName(saveName)
                .fileType(StringUtils.getFilenameExtension(saveName))
                .fileSize(multipartFile.getSize())
                .build();
    }

    /**
     * 저장 파일명 생성
     * @author juyeon
     * @version 1.0.0
     * @date 2023-07-11
     **/
    private String generateSaveFilename(final String filename) {
        String uuid = UUID.randomUUID().toString().replaceAll("-", ""); // 저장파일명 랜덤문자열변환
        String extension = StringUtils.getFilenameExtension(filename); // 확장자명
        return uuid + "." + extension;
    }

    /**
     * 업로드 경로 반환
     * @author juyeon
     * @version 1.0.0
     * @date 2023-07-11
     **/
    private String getUploadPath() {
        return makeDirectories(uploadPath);
    }

    private String getUploadPath(final String addPath) {
        return makeDirectories(uploadPath + File.separator + addPath);
    }

    /**
     * 업로드 폴더 생성
     * @author juyeon
     * @version 1.0.0
     * @date 2023-07-11
     **/
    private String makeDirectories(final String path) {
        File dir = new File(path);
        if (!dir.exists()) {
            dir.mkdirs();
        }
        return dir.getPath();
    }

    /**
     * 다운로드 첨부파일(리소스) 조회
     * @author juyeon
     * @version 1.0.0
     * @date 2023-07-18
     **/
    public Resource readFileResource(FileVO fileVO) {
        String fileName = fileVO.getFileName(); // 파일VO에서 저장된 파일명을 가져온다.
        Path filePath = Paths.get(uploadPath, fileName); // 파일경로 + 저장된 파일명을 통해 저장된 파일 경로를 세팅한다.
        try {
            Resource resource = new UrlResource(filePath.toUri()); // 저장된 파일 경로를 통해 resource 변수에 해당 파일의 리소스를 담아준다.
            if(!resource.exists() || !resource.isFile()) { // 1.리소스가 존재하지않거나 또는 2.리소스가 파일이 아니면 runtime exception 예외 처리한다.
                throw new RuntimeException("파일을 찾을 수 없습니다. : " + filePath); // 파일을 찾을수 없습니다. + 찾으려는 파일경로를 로그에 남김.
            }

            return resource;
        } catch(Exception e) { // 모든 예외 (최상위 예외)
            throw new RuntimeException("파일을 찾을 수 없습니다. : " + filePath); // 그 외의 모든 예외에 대해 runtime exception 예외 처리한다.
        }
    }



}

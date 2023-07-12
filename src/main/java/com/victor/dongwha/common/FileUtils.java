package com.victor.dongwha.common;

import com.victor.dongwha.vo.FileVO;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.UUID;

@Component
public class FileUtils {

    private final String uploadPath = Paths.get("D:", "develop", "upload-files").toString();

    /**
     * 단일 파일 업로드
     * @author juyeon
     * @version 1.0.0
     * @date 2023-07-11
     **/
    public FileVO uploadFile(MultipartFile multipartFile) {

        if (multipartFile.isEmpty()) {
            return null;
        }

        String saveName = generateSaveFilename(multipartFile.getOriginalFilename());
        String today = LocalDate.now().format(DateTimeFormatter.ofPattern("yyMMdd")).toString();
        String uploadPath = getUploadPath(today) + File.separator + saveName;
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
        if (dir.exists() == false) {
            dir.mkdirs();
        }
        return dir.getPath();
    }

}

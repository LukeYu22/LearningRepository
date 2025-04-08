package com.luke.learning;


import com.alibaba.fastjson2.JSON;
import com.luke.learning.infrastructure.po.VideoDownloadDO;
import com.luke.learning.infrastructure.repository.VideoDownloadRepository;
import com.luke.learning.types.enmus.VideoDownloadEnums;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@Slf4j
@SpringBootTest
public class SameMapperMethodNameApplicationTests {

    @Resource
    private VideoDownloadRepository videoDownloadRepository;

    @Test
    public void test_getFailedVideo(){
        List<VideoDownloadDO> videoList = videoDownloadRepository.getVideoListByStatus(VideoDownloadEnums.StatusEnum.FAILED.getCode());
        log.info("Failed Video List: {}", JSON.toJSONString(videoList));
    }

    @Test
    public void test_getSuccessVideo(){
        List<VideoDownloadDO> videoList = videoDownloadRepository.getVideoList(VideoDownloadEnums.StatusEnum.COMPLETED.getCode());
        log.info("Success Video List: {}", JSON.toJSONString(videoList));
    }

}

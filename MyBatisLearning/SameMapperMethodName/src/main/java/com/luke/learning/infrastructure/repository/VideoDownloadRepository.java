package com.luke.learning.infrastructure.repository;

import com.luke.learning.infrastructure.dao.VideoDownloadMapper;
import com.luke.learning.infrastructure.po.VideoDownloadDO;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class VideoDownloadRepository {

    @Resource
    private VideoDownloadMapper videoDownloadMapper;

    public List<VideoDownloadDO> getVideoListByStatus(Integer status) {
        return videoDownloadMapper.getVideoListByStatus(status);
    }

    public List<VideoDownloadDO> getVideoList(Integer status) {
        return videoDownloadMapper.getVideoListByStatus(VideoDownloadDO.builder()
                        .status(status)
                        .build());
    }


}

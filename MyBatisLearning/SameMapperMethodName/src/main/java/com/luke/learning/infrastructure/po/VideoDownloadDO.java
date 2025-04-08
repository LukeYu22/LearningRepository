package com.luke.learning.infrastructure.po;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class VideoDownloadDO {

    /**
     * 主键ID
     */
    private Long id;

    /**
     * 视频URL
     */
    private String videoUrl;

    /**
     * 视频标题
     */
    private String title;

    /**
     * 下载状态：0-待下载 1-下载中 2-下载完成 3-下载失败
     */
    private Integer status;

    /**
     * 文件保存路径
     */
    private String filePath;

    /**
     * 文件大小(字节)
     */
    private Long fileSize;

    /**
     * 错误信息
     */
    private String errorMsg;

    /**
     * 重试次数
     */
    private Integer retryCount;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 更新时间
     */
    private Date updateTime;

}

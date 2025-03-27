CREATE TABLE `video_download` (
                                  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
                                  `video_url` varchar(512) NOT NULL COMMENT '视频URL',
                                  `title` varchar(255) DEFAULT NULL COMMENT '视频标题',
                                  `status` tinyint NOT NULL DEFAULT '0' COMMENT '下载状态：0-待下载 1-下载中 2-下载完成 3-下载失败',
                                  `file_path` varchar(512) DEFAULT NULL COMMENT '文件保存路径',
                                  `file_size` bigint DEFAULT NULL COMMENT '文件大小(字节)',
                                  `error_msg` varchar(512) DEFAULT NULL COMMENT '错误信息',
                                  `retry_count` int NOT NULL DEFAULT '0' COMMENT '重试次数',
                                  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                                  PRIMARY KEY (`id`),
                                  KEY `idx_status` (`status`),
                                  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='视频下载任务表';
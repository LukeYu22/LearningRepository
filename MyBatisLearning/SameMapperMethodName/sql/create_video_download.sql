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

INSERT INTO `video_download` (`video_url`, `title`, `status`, `file_path`, `file_size`, `error_msg`, `retry_count`, `create_time`, `update_time`) VALUES
('https://example.com/videos/abc123.mp4', '2024春节晚会精彩片段', 2, '/data/videos/2024/abc123.mp4', 156789012, NULL, 0, '2024-02-10 10:00:00', '2024-02-10 10:05:00'),
('https://example.com/videos/def456.mp4', '年度最佳运动时刻', 1, NULL, NULL, NULL, 0, '2024-02-10 11:15:00', '2024-02-10 11:15:00'),
('https://example.com/videos/ghi789.mp4', '美食纪录片第一集', 3, NULL, NULL, '网络连接超时', 2, '2024-02-10 12:30:00', '2024-02-10 12:45:00'),
('https://example.com/videos/jkl012.mp4', '宠物搞笑视频合集', 2, '/data/videos/2024/jkl012.mp4', 98765432, NULL, 0, '2024-02-10 14:20:00', '2024-02-10 14:30:00'),
('https://example.com/videos/mno345.mp4', '科技新闻周刊', 0, NULL, NULL, NULL, 0, '2024-02-10 15:45:00', '2024-02-10 15:45:00'),
('https://example.com/videos/pqr678.mp4', '儿童教育课程', 2, '/data/videos/2024/pqr678.mp4', 245678901, NULL, 1, '2024-02-10 16:30:00', '2024-02-10 16:40:00'),
('https://example.com/videos/stu901.mp4', '旅游风景记录', 3, NULL, NULL, '文件格式不支持', 3, '2024-02-10 17:20:00', '2024-02-10 17:50:00'),
('https://example.com/videos/vwx234.mp4', '音乐现场演出', 1, NULL, NULL, NULL, 0, '2024-02-10 18:10:00', '2024-02-10 18:10:00'),
('https://example.com/videos/yz567.mp4', '健身教程基础篇', 2, '/data/videos/2024/yz567.mp4', 123456789, NULL, 0, '2024-02-10 19:00:00', '2024-02-10 19:15:00'),
('https://example.com/videos/123abc.mp4', '动画电影预告片', 0, NULL, NULL, NULL, 0, '2024-02-10 20:30:00', '2024-02-10 20:30:00');


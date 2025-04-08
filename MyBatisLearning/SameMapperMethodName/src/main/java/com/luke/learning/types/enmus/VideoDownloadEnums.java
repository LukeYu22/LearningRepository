package com.luke.learning.types.enmus;

import lombok.AllArgsConstructor;
import lombok.Getter;

public interface VideoDownloadEnums {

    @AllArgsConstructor
    @Getter
    enum StatusEnum {
        PENDING(0, "待下载"),
        DOWNLOADING(1, "下载中"),
        COMPLETED(2, "下载完成"),
        FAILED(3, "下载失败");

        private final Integer code;
        private final String desc;
    }

}

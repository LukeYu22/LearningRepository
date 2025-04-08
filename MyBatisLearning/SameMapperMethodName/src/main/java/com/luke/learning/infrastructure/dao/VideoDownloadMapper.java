package com.luke.learning.infrastructure.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.luke.learning.infrastructure.po.VideoDownloadDO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface VideoDownloadMapper extends BaseMapper<VideoDownloadDO> {


    /**
     * 说明
     * 下面定义了两个同名的方法，但是参数不同
     * 由于 java 的多态特性，支持方法的重载，因此能够编译通过
     *
     * 但是，执行后会出现下面的错误
     * Caused by: org.apache.ibatis.binding.BindingException: Parameter 'status' not found. Available parameters are [item, param1]
     *
     *
     */


    @Select("""
            select * from video_download where status = #{status}
            """)
    List<VideoDownloadDO> getVideoListByStatus(@Param("status") Integer status);


    @Select("""
            select * from video_download where status = #{item.status}
            """)
    List<VideoDownloadDO> getVideoListByStatus(@Param("item") VideoDownloadDO item);

}

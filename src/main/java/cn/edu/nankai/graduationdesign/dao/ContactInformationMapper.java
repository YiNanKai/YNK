package cn.edu.nankai.graduationdesign.dao;

import cn.edu.nankai.graduationdesign.model.ContactInformation;

public interface ContactInformationMapper {
    int deleteByPrimaryKey(Integer contactInformationId);

    int insert(ContactInformation record);

    int insertSelective(ContactInformation record);

    ContactInformation selectByPrimaryKey(Integer contactInformationId);

    int updateByPrimaryKeySelective(ContactInformation record);

    int updateByPrimaryKey(ContactInformation record);
}
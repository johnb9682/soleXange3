package com.soleXange.dao.sys;

import java.util.List;

import com.soleXange.model.sys.Attachment;

import core.dao.Dao;

/**
 * Multipart files的数据持久层的接口
 * Author: Bi Ran
 */
public interface AttachmentDao extends Dao<Attachment> {

	List<Object[]> queryFlowerList(String epcId);

	void deleteAttachmentByForestryTypeId(Long umTypeId);

	List<Object[]> querySensorList();

}

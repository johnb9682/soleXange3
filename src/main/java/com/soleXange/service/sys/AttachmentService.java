package com.soleXange.service.sys;

import java.util.List;

import com.soleXange.model.sys.Attachment;

import core.service.Service;

/**
 * multipart Files的业务逻辑层的接口
 * Author: Bi Ran
 */
public interface AttachmentService extends Service<Attachment> {

	List<Object[]> queryFlowerList(String epcId);

	void deleteAttachmentByForestryTypeId(Long umTypeId);

	List<Object[]> querySensorList();

}

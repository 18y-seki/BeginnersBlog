package jp.co.axiz.web.service;

import java.util.List;

import jp.co.axiz.web.entity.SelectForm;
import jp.co.axiz.web.entity.Users;

public interface SelectService {
	public List<Users>find(SelectForm form);
	}


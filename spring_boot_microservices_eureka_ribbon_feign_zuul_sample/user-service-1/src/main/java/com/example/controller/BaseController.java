package com.example.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import com.google.gson.Gson;

public class BaseController {
	protected final Log logger = LogFactory.getLog(getClass());

	protected static final Gson gson = new Gson();
}

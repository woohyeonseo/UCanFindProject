package com.you.can;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LogTestBasic {
public static void main(String[] args) {
	Logger logger = LoggerFactory.getLogger(LogTestBasic.class);
	
	logger.error("oh, no!!");
	logger.warn("Watch Out{},{}!",2019,"SON");
	logger.info("Hello,slf4j log!!");
	logger.debug("What's wrong with this??{}",2019);
	logger.trace("Here we are...");
			
}
}

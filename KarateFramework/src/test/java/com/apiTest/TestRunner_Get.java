package com.apiTest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestRunner_Get {

//	 @Test
//	 public Karate runtest() {
//		 return Karate.run("getReq","classpath:com/apiFeatures/getRespVariab.feature").relativeTo(getClass());
//	 }
	 
//	 @Test
//	 public Karate runJSONtest() {
//		 return Karate.run("classpath:com/apiFeatures/validateJSONArray.feature").relativeTo(getClass());
//	 }
	 
	 @Test
	 public Karate runXMLtest() {
		 return Karate.run("classpath:com/apiFeatures/validateXMLType.feature").relativeTo(getClass());
	 }
	 
//	 @Test
//	 public Karate runtestByfilepath() {
//		 return Karate.run("classpath:com/apiFeatures/getReq1.feature");
//	 }
	 
}

package com.spring.study.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
* @FileName :  StudyViewController.java
* @Project : study_vue
* @Date : 2023. 6. 25.
* @Author : ParkSejin
* @Description : ViewController
*/

@Controller
public class StudyViewController {
	
	private static final Logger logger = LoggerFactory.getLogger(StudyViewController.class);
	
	/**
	 * 로그인 페이지
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="study/studyView.do")
	public ModelAndView studyView(Locale locale, Model model, HttpServletRequest request) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/study/studyView");
		
		return mv;
	}
	
}

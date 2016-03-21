package com.javalec.spring_ex_pjt;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	//"/"이게 들어오면 내가 처리하겠다
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Member member, Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate ); //뷰에서 쓸 변수
		//String id = httpServletRequest.getParameter("id");
		//String pw = httpServletRequest.getParameter("pw");
		
		//model.addAttribute("id", id);
		//model.addAttribute("pw",pw);
		
		
		
		return "home"; //home은 확장명을 제외한 뷰의 이름!!
	}
	
	@RequestMapping("/member/memberView")
	public String viewMember(HttpServletRequest httpServletRequest, Model model){
		String id = httpServletRequest.getParameter("id");
		String pw = httpServletRequest.getParameter("pw");
		
		model.addAttribute("id", id);
		model.addAttribute("pw",pw);
		
		return "member/memberView";
	}
		
	
	@RequestMapping("/join/form")
	public String form(@RequestParam("name") String name,
		@RequestParam("pw") String pw, @RequestParam("email") String email, Model model){
		Member member = new Member();
		
		return "join/form";
	}
	
}



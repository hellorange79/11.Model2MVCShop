package com.model2.mvc.service.user.test;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.http.HttpResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.model2.mvc.service.domain.User;
import com.model2.mvc.service.user.UserService;

import sun.net.www.http.HttpClient;

@RestController
@RequestMapping("/*")
public class kakako {

	public kakako() {
		System.out.println(this.getClass());
	}

	@RequestMapping(value = "/kakaologin", produces = "application/json", method = {RequestMethod.GET,RequestMethod.POST})
	public String kakaoLogin(@RequestParam("code") String code, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		
		System.out.println("code:" + code);
		
		
		
		
		//여기서 code를 받아서 사용자 토큰을 요청하는(POST)과정이 필요한듯 나도 10분만에 팀원들한테 끌려나간다....아디오스.......넴뚜~~~

		// Business Logic
		
		return "redirect:http://127.0.0.1:8080/kakaologin&response_type=code";

	}

}
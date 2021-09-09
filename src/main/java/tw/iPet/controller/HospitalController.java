package tw.iPet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.iPet.domain.Hospital;
import tw.iPet.domain.HospitalPage;
import tw.iPet.service.HospitalService;

@Controller
public class HospitalController {
	@Autowired
	private HospitalService service;
	@GetMapping("/iii")
	@ResponseBody
	public HospitalPage  getiii() {
//		if(service.getHospitalById("100")!=null) {
//			return "OK";
//		}
		return service.selHospital("d");
//		return "Fail";

	}

}

package tw.iPet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.iPet.domain.Hospital;
import tw.iPet.domain.HospitalPage;
import tw.iPet.service.HospitalService;

@Controller
@RequestMapping("/hospital")
public class HospitalController {
	@Autowired
	private HospitalService service;

	@GetMapping("/showhospital")
	@ResponseBody
	public HospitalPage  ShowHospital(String keyWord,int page) {

		if(keyWord == null) {
			return service.getAllHospital(page);
		}else {
			return service.selHospital(keyWord, page);
		}

	}
	@GetMapping("/gethospital")
	@ResponseBody
	public Hospital getHospital(int id) {
		return service.getHospitalById(id);
	}

	@GetMapping("/updatahospital")
	@ResponseBody
	public String updataHospitla(Hospital hospital) {

		 if(service.upHospital(hospital)) {
			 return "OK";
		 }
		 return "Fail";
	}


	@GetMapping("/inserthospital")
	public String insertHospital(Hospital hospital) {
			service.insertHospital(hospital);
		return "admin-pet-hospital-edit";

	}



}

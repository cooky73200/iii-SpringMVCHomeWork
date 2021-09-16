package tw.iPet.controller;

import java.net.http.HttpRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import tw.iPet.domain.Hospital;
import tw.iPet.domain.HospitalPage;
import tw.iPet.service.HospitalService;

@Controller
public class HospitalController {
	@Autowired
	private HospitalService service;

	@PostMapping("/showhospital/{page}")
	@ResponseBody
	public HospitalPage  showHospital(@PathVariable("page") int page,@RequestBody Map<String,String> keyWord,Model m ) {

		System.out.println(keyWord.get("keyword"));
		HospitalPage hospitalList = null;
		if(keyWord.isEmpty()) {
			hospitalList = service.getAllHospital(page);
		}else {
			hospitalList = service.selHospital(keyWord.get("keyword"), page);
		}
		hospitalList.setCurrentPage(page);

		return hospitalList;


	}
	@GetMapping("/gethospital")
	public String getHospital(@RequestParam("id") int id,Model m) {
		m.addAttribute("hospital",service.getHospitalById(id));
		return "admin-pet-hospital-edit";
	}

	@PostMapping("/updatahospital")
	public String updataHospitla( Hospital hospital) {
		service.upHospital(hospital);
		 return "admin-pet-hospital";
	}


	@PostMapping("/inserthospital")
	public String insertHospital(Hospital hospital) {
		System.out.println(hospital);
			service.insertHospital(hospital);
		return "admin-pet-hospital";
	}

	@GetMapping("/deletehospital")
	public String deleteHospital(@RequestParam("id") int hospitalId) {
		service.delHospital(hospitalId);
		return "admin-pet-hospital";
	}



}

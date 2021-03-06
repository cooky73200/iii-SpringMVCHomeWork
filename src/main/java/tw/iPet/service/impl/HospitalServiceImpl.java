package tw.iPet.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tw.iPet.dao.HospitalDao;
import tw.iPet.domain.Hospital;
import tw.iPet.domain.HospitalPage;
import tw.iPet.service.HospitalService;

@Service
public class HospitalServiceImpl implements HospitalService {

	@Autowired
	private HospitalDao hospitalDao;

	@Override
	public Hospital getHospitalById(int id) {
		return hospitalDao.getHospitalById(id);

	}

	@Override
	public boolean insertHospital(Hospital hospital) {
		List<Hospital> list = hospitalDao.checkHospital(hospital);
		if(list.isEmpty()) {
			hospitalDao.insertHospital(hospital);
			return true;
		}
		return false;
	}

	@Override
	public void upHospital(Hospital hospital) {
		 hospitalDao.upHospital(hospital);
	}

	@Override
	public boolean delHospital(int id) {

		return hospitalDao.delHospital(id);
	}

	@Override
	public HospitalPage  selHospital(String keyWord,int currentPage) {
		currentPage= currentPage== 0 ? 1:currentPage;
		return hospitalDao.selHospital(keyWord, currentPage);
	}

	@Override
	public HospitalPage getAllHospital(int currentPage) {
		currentPage= currentPage== 0 ? 1:currentPage;
		return hospitalDao.getAllHospital(currentPage);
	}

}

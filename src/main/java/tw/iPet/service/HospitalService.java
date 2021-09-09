package tw.iPet.service;


import java.util.List;

import tw.iPet.domain.Hospital;
import tw.iPet.domain.HospitalPage;

public interface HospitalService {

	public Hospital getHospitalById(int id);

	public boolean insertHospital(Hospital hospital);

	public boolean upHospital(Hospital hospital);

	public boolean delHospital(int id);

	public HospitalPage  selHospital(String keyWord);



}

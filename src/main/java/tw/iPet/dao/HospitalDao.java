package tw.iPet.dao;

import java.util.List;

import tw.iPet.domain.Hospital;
import tw.iPet.domain.HospitalPage;

public interface HospitalDao {

	public Hospital getHospitalById(int id);

	public void insertHospital(Hospital hospital);

	public List<Hospital> checkHospital(Hospital hospital);

	public void upHospital(Hospital hospital);

	public boolean delHospital(int id);

	public HospitalPage  selHospital(String keyWord,int currentPage);

	public HospitalPage getAllHospital(int currentPage);



}

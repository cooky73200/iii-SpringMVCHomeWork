package tw.iPet.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.NativeQuery;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import tw.iPet.dao.HospitalDao;
import tw.iPet.domain.Hospital;
import tw.iPet.domain.HospitalPage;

@Repository
@Transactional
public class HospitalDaoImpl implements HospitalDao {
	@Autowired
	private SessionFactory factory;

	@Override
	public Hospital getHospitalById(int id) {
		return factory.getCurrentSession().get(Hospital.class, id);
	}

	@Override
	public void insertHospital(Hospital hospital) {
		factory.getCurrentSession().save(hospital);
	}

	@Override
	public List<Hospital> checkHospital(Hospital hospital) {
		String hql = "from Hospital p where p.hospitalName = :hospitalName and p.address = :address";
		Query<Hospital> query = factory.getCurrentSession().createQuery(hql, Hospital.class);
		return query.setParameter("hospitalName", hospital.getHospitalName())
				.setParameter("address", hospital.getAddress()).list();

	}

	@Override
	public boolean upHospital(Hospital hospital) {
		String hql = "update Hospital p set " + " p.hospitalName = :hospitalName , " + " p.address = :address "
				+ " p.area = :area " + " p.tel = :tel " + " where p.hospitalId = :id";
		Query<Hospital> query = factory.getCurrentSession().createQuery(hql, Hospital.class);
		query.setParameter("hospitalName", hospital.getHospitalName()).setParameter("address", hospital.getAddress())
				.setParameter("area", hospital.getArea()).setParameter("area", hospital.getTel())
				.setParameter("id", hospital.getHospitalId());
		return (query.executeUpdate() > 0);

	}

	@Override
	public boolean delHospital(int id) {
		String hql = " delete Hospital p where p.hospitalId = :id  ";
		Query<Hospital> query = factory.getCurrentSession().createQuery(hql, Hospital.class);
		query.setParameter("id", id);
		return (query.executeUpdate() > 0);

	}

	@Override
	public HospitalPage selHospital(String keyWord) {
		String hql = "FROM Hospital p WHERE p.area like :keyWord or p.hospitalName like :keyWord or p.tel like :keyWord";
		Query<Hospital> query = factory.getCurrentSession().createQuery(hql, Hospital.class);
		query.setParameter("keyWord", "%" + "台北" + "%");
		List<Hospital> allHospital = query.list();

		HospitalPage hospitalPage = new HospitalPage();
		hospitalPage.setTotalCount(allHospital.size());
		int pageCount = hospitalPage.getPageCount();
		int page = allHospital.size() % pageCount == 0
				? allHospital.size() / pageCount
				: (allHospital.size() / pageCount) + 1;

		hospitalPage.setPage(page);

		List<Hospital> currentHospital = new ArrayList<>();
		int initCount = 25 *pageCount;
		for(int i = 1 ;i<=pageCount;i++) {
			if(initCount <=allHospital.size()-1) {
				currentHospital.add(allHospital.get(initCount));
			}
			initCount ++;
		}
		hospitalPage.setHospitalList(currentHospital);

		return hospitalPage;
	}

}

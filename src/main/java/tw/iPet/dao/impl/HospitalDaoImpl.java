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
	public void upHospital(Hospital hospital) {
		factory.getCurrentSession().update(hospital);

	}

	@Override
	public boolean delHospital(int id) {
		String sql = "delete hospital where hospitalId = :id";
		NativeQuery query = factory.getCurrentSession().createSQLQuery(sql);
		query.setParameter("id", id);
		return (query.executeUpdate()>0);

	}

	@Override
	public HospitalPage selHospital(String keyWord, int currentPage) {
		System.out.println(keyWord);
		String hql = "FROM Hospital p WHERE p.area like :keyWord or p.address like :keyWord or p.hospitalName like :keyWord or p.tel like :keyWord";
		Query<Hospital> query = factory.getCurrentSession().createQuery(hql, Hospital.class);
		query.setParameter("keyWord", "%" + keyWord + "%");
		List<Hospital> hospitalList = query.list();

		return putInHospitalPage(hospitalList, currentPage);

	}

	@Override
	public HospitalPage getAllHospital(int currentPage) {
		String hql = "from Hospital";
		Query<Hospital> query = factory.getCurrentSession().createQuery(hql, Hospital.class);
		List<Hospital> hospitalList = query.list();
		return putInHospitalPage(hospitalList, currentPage);

	}

	private HospitalPage putInHospitalPage(List<Hospital> hospitalList, int currentPage) {
		HospitalPage hPage = new HospitalPage();

		hPage.setTotalCount(hospitalList.size());

		int pageCount = hPage.getPageCount();
		int page = hospitalList.size() % pageCount == 0 ? hospitalList.size() / pageCount
				: (hospitalList.size() / pageCount) + 1;

		hPage.setPage(page );

		List<Hospital> currentHospital = new ArrayList<>();
		int initCount = (currentPage-1) * pageCount;
		for (int i = 1; i < pageCount; i++) {
			if (initCount <= hospitalList.size() - 1) {
				currentHospital.add(hospitalList.get(initCount));
			}
			initCount++;
		}
		hPage.setHospitalList(currentHospital);

		return hPage;

	}

}

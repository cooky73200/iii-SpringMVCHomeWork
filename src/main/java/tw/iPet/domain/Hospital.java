package tw.iPet.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "hospital")
@Data @Builder @NoArgsConstructor @AllArgsConstructor
@Component
public class Hospital {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="HOSPITALID")
	private int hospitalId;
	@Column(name="HOSPITALNAME")
	private String hospitalName;
	@Column(name="ADDRESS")
	private String address;
	@Column(name="AREA")
	private String area;
	@Column(name="TEL")
	private String tel;




}

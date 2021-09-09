package tw.iPet.domain;

import java.util.List;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @Builder @NoArgsConstructor @AllArgsConstructor
@Component
public class HospitalPage {

	@Builder.Default
	private int pageCount = 10;
	private int page;
	private int totalCount;
	private List<Hospital> hospitalList;


}
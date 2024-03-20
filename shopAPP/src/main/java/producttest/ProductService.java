package producttest;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

//DTO 역할; DB생성, 테이블생성한걸 자바와 연동해줌 (create database, create table)

/*  DB에 연동을 안한다면 [ DAO ] 필요  
	DAO 역할 ; DB연결 없이 객체를 생성할 샘플데이터를 만들어 Map 형태로 메모리에 저장하고 사용
 	Controller에게 전체상품목록과 개별상품정보, 삭제정보, 갱신정보를 제공하기 위한 서비스 클래스 */
public class ProductService {

	Map<String, Product> products = new HashMap<>();	//id는 String타입, Product타입 받을거야
	
	// 생성자; 초기화 | 제품목록 만들기
	public ProductService() {
					//key(상품번호 id), value
		products.put("101", new Product("101", "낑깡", 50000, "2024-3-1")); // 길면 변수로 처리해 new Product("101", "사과", 50000, "2024-3-1")
		products.put("102", new Product("102", "수박", 1000, "2024-3-2"));
		products.put("103", new Product("103", "딸기", 2500, "2024-3-4"));
		products.put("104", new Product("104", "오렌지", 3300, "2024-3-4"));
		products.put("105", new Product("105", "복숭아", 22000, "2024-3-1"));
		products.put("106", new Product("106", "리치", 30000, "2024-3-1"));
	}
	
	// 제품목록 리스트 | 메소드 findall(), view 연결- productList.jsp에 넘길거야
	public List<Product> findAll() {
		return new ArrayList<Product>(products.values());	// 배열에 products.values 총 6개 정보가 담김
	}
	
	// 개별상품 상세정보 | find(찾는항목에 대한 값) or get, productInfo.jsp
	public Product find(String id) {
		return products.get(id);
		
	}
	
	// 삭제 | delete(삭제할 항목), 삭제 후 전체목록 출력- productList.jsp
	public List<Product> delete(String id) {
		products.remove(id); // key=id, id자료 삭제
		return new ArrayList<Product>(products.values());
	}
	
}

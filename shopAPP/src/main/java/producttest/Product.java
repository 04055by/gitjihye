package producttest;

import java.util.Objects;

// DTO 역할; DB생성, 테이블생성한걸 자바와 연동해줌 (create database, create table)
// DAO 역할; 처리
public class Product {

	private String id; 		// 과일의 상품번호
	private String name;	// 과일 이름
	private int price;		// 과일 가격
	private String date;	// 입고일
	
	
	// 생성자
	public Product(String id, String name, int price, String date) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.date = date;
	}

	// 게터세터 
	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}
	
	
	// toString()
	@Override
	public String toString() {
	return "Product [id=" + id + ", name=" + name + ", price=" + price + ", date=" + date + "]";
	}

	// equals와 hashcode 재정의
	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Product other = (Product) obj;
		return Objects.equals(id, other.id);
	}
	
	
	
}

package model;

public class Order {
	//private String order_id;
	private String name;
	private String address;
	private String phone;
	
	
	public Order() {
		super();
	}
	/*public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}*/
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Order( String name, String address, String phone) {
		super();
		this.name = name;
		this.address = address;
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "Order [ name=" + name + ", address=" + address + ", phone=" + phone + "]";
	}
}

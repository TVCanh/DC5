package collection;

import java.util.Comparator;

public class Student2 implements Comparable<Student2> {
	
	private int id;
	private String name;
	private int age;
	
	public Student2(int id, String name, int age) {
		this.id = id;
		this.name = name;
		this.age = age;
	}
	@Override
	public int compareTo(Student2 o) {
		if(this.getAge() < o.getAge()) {
			return -1;
		}else if(this.getAge() > o.getAge()) {
			return 1 ;
		}else{
			return 0;
		}
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	 @Override
	 public String toString() {
		 return "Student [id= " + id+" ,name = "+name+" ,age= "+age+" ]" ;
	 }
	
}

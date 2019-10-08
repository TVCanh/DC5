package collection;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class CollectionExample2 {
	public static void print(List<Student> student) {
		for(Student stu: student) {
			System.out.println(stu);
		}
		System.out.println("------------------");
	}
	public static void main(String[] args) {
		List<Student> student = new ArrayList<Student>();
		Student student1 = new Student(1, "thomas", 20);
		Student student2 = new Student(2, "david", 25);
		Student student3 = new Student(3, "Alex", 30);
		Student student4 = new Student(4, "John", 18);
		student.add(student1);
		student.add(student2);
		student.add(student3);
		student.add(student4);
		
		StudentAgeComparator ageComparator = new StudentAgeComparator();
		System.out.println("max: "+Collections.max(student, ageComparator));
		System.out.println("min: "+Collections.min(student, ageComparator));
		Collections.sort(student, ageComparator);
		print(student);
		Collections.reverse(student);
		print(student);
		
		Comparator<Student> comp = Collections.reverseOrder(ageComparator);
		Collections.sort(student, comp);
		print(student);
		
		Comparator<Student> c = Collections.reverseOrder(comp);
		Collections.sort(student, c);
		print(student); 
	}
}

package collection;

import java.awt.print.Printable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class CollectionExample3 {
	public static void print(List<Student2> student) {
		for(Student2 stu: student) {
			System.out.println(stu);
		}
		System.out.println("------------------");
	}
	public static void main(String[] args) {
		List<Student2> list = new ArrayList<Student2>();
		Student2 std1 = new Student2(0, "abc", 10);
		Student2 std2 = new Student2(1, "abc", 20);
		Student2 std3 = new Student2(2, "abc",5);
		Student2 std4 = new Student2(3, "abc", 40);
		
		list.add(std1);
		list.add(std2);
		list.add(std3);
		list.add(std4);
		
		System.out.println("max: "+ Collections.max(list));
		System.out.println("min: "+Collections.min(list));
		print(list);
		Collections.sort(list);
		print(list);
		Collections.reverse(list);
		print(list);
		
		Comparator<Student2> comp = Collections.reverseOrder();
		Collections.sort(list, comp);
		print(list);
		
		Comparator<Student2> c= Collections.reverseOrder(comp);
		Collections.sort(list, c);
		print(list);
	}
}

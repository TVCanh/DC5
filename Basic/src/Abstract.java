import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Abstract {
	public static void main(String[] args) {
		Pattern pattern = Pattern.compile("\\d+(?:\\.\\d+)?"); // Match int or float
		String str="INR100INRINR20.500INR";
		Matcher matcher = pattern.matcher(str) ;
		if(matcher.find()){
		    System.out.println(matcher.group());
		    System.out.println(matcher.group(0));
		}
	}
	
}

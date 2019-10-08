
public class TryCatch {
	public static void main(String[] args) {
		// tryCatch();
		tryCatchFinally();
	}

	public static void tryCatch() {
		int[] arr = new int[4];
		try {
			System.out.println(arr.length);
			int i = arr[4];
			System.out.println("Inside try ");
		} catch (Exception ie) {
			System.out.println("Exception: " + ie);
		}
		System.out.println("outside the try-catch");
	}

	public static void tryCatchFinally() {
		int[] arr = new int[4];
		try {
			int i = arr[4];
			System.out.println("inside try!");
		} catch (Exception ie) {
			System.out.println("Inside catch! " + ie);
		} finally {
			System.out.println("Inside finally!");
		}
		System.out.println("Outside try-catch-finally!");
	}
}

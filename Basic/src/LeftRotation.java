
public class LeftRotation {
	public static void main(String[] args) {
		int[] a = { 1, 2, 3, 4, 5 };
		int index = 4;
		int c =0; int d=0;
		int[] arr1= new int[a.length-index];
		int[] arr2 = new int[index];
		
		//int tmp=0;
		for(int i=0;i<a.length; i++) {
			if(i < arr1.length) {
				arr1[c] = a[index+i];
				//c++;
			}else {
				arr2[d]=a[i-(a.length-index)];
				d++;
			}
		}
		for(int i= 0;i<a.length;i++) {
			if(i<arr1.length) {
				a[i]=arr1[i];
			}else {
				a[i]=arr2[i-arr1.length];
			}
		}

		print(a);

	}

	public static void print(int[] a) {
		for (int i = 0; i < a.length; i++) {
			System.out.print(a[i] + " ");
		}
	}
}

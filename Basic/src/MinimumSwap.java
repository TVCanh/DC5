import java.util.Arrays;

public class MinimumSwap {
	private static void swap(int[] array, int i, int j) {
        int temp = array[i];
        array[i] = array[j];
        array[j] = temp;
    }


	public static int minimunSwaps(int[] arr) {
		int step = 0;
		int tmp = 1;
		int j = 0;
		int tam = 0;
		for (int i = 0; i < arr.length; i++) {
			if (arr[i] == tmp) {
				if (arr[i] != (i + 1)) {
					// swap(arr[i],arr[j]) ;
					System.out.println(Arrays.toString(arr));
					tam = arr[i];
					arr[i] = arr[j];
					arr[j] = tam;

					step++;
					j++;
					tmp++;
					i = 0;

				} else {
					j++;
					tmp++;
					i++;
				}
			}
		}
		System.out.println(Arrays.toString(arr));
		return step;
	}
	
	static int minimumSwaps(int[] array) {
        int n = array.length - 1;
        int minSwaps = 0;
        for (int i = 0; i < n; i++) {
            if (i < array[i] - 1) {
                swap(array, i,(array[i] - 1));
                minSwaps++;
                i--;
            }
        }
        return minSwaps;
    }

	public static void main(String[] args) {
		int[] a = { 4, 3, 1, 2 };
		int[] b = { 2, 3, 4, 1, 5 };
		int[] c = { 1, 3, 5, 2, 4, 6, 7 };

		System.out.println(minimumSwaps(c));
		// Arrange(a);
	}
}

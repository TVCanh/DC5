
public class NewYearChaos {
	static void minimumBribes(int[] q) {
		int swap = 0;
		for (int i = q.length - 1; i >= 0; i--) {
			int j = 0;
			if (q[i]-(i+1) > 2) {
				System.out.println("Too chaotic");
				return;
			}
			if (q[i] - 2 > 0) {
				j = q[i] - 2;
			}

			while (j <= i) {
				if (q[j] > q[i]) {
					swap++;
				}
				j++;
			}
		}
		System.out.println(swap);
	}

	public static void main(String[] args) {
		int[] q = { 2, 1, 5, 3, 4 };
		int[] a = { 1, 2, 5, 3, 4, 7, 8, 6 };
		int[] b = { 5, 1, 2, 3, 7, 8, 6, 4 };
		minimumBribes(q);
	}
}

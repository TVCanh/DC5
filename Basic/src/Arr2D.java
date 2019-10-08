
import java.io.*;
import java.math.*;
import java.security.*;
import java.text.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.regex.*;

public class Arr2D {

    // Complete the hourglassSum function below.
    static int hourglassSum(int[][] arr) {
        int sum=0;
        int sumMax=-99999;
        for(int row=0; row<=3;row++){
            for(int col=0;col<=3;col++){
            	//sum=0;
                sum+=arr[row][col];
                sum+=arr[row][col+1];
                sum+=arr[row][col+2];
                sum+=arr[row+1][col+1];
                sum+=arr[row+2][col];
                sum+=arr[row+2][col+1];
                sum+=arr[row+2][col+2];
                if(sum>sumMax){
                    sumMax=sum;
                    sum=0;
                }else {
                	//sum=0;
                }
                //sumMax=Math.max(sum,sumMax);
            }
        }
        return sumMax;
    }
    public static void main(String[] args) {
      	int arr[][]= { {1,1,1,0,0,0}, {0,1,0,0,0,0},{1,1,1,0,0,0}, {0,0,2,4,4,0},{0,0,0,2,0,0},{0,0,1,2,4,0}} ;

        int result = hourglassSum(arr);
        System.out.println(result);
	}

}


public class EX위치비교 {

	public static void main(String[] args) {

		
		int[] point= {92,32,52,9,81,2,68};
		int min=Math.abs(point[0]-point[1]);
		int length=0;
		
		int a=0, b=0;
		
		for(int i=0;i<point.length;i++) {
			
			for(int j=1;j<point.length;j++) {
				length=point[i]-point[j];
				length=Math.abs(length);
				if(min>length && length>0) {
					min=length;
					a=i;
					b=j;
				}
			}
		}
		System.out.println("result: ["+a+","+b+"]");
	
	}

}

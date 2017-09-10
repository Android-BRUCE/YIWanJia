
import java.util.Scanner;

public class Test {
    @org.junit.Test
    public void test1(){
    int num = 101;
    if(num<0||num>100){
        System.out.println("out!");
        //0-60 e 60-70 d 70-80 c 80-90 d 90-100 e
    }else{
        switch (
            num<60?1:(num<70?2:(num<80)?3:(num<90?4:(num<100?5:5)))
                ){
            case 1: System.out.println("E");break;
            case 2:System.out.println("D");break;
            case 3:System.out.println("C");break;
            case 4:System.out.println("B");break;
            case 5:System.out.println("A");break;
        }

    }
int[] array={78,12,96,-5,23};
for(int i=0;i<array.length-1;i++){
    for(int j=i+1;j<array.length;j++){
        if(array[i]>array[j]){
            int tem = array[i];
            array[i]=array[j];
            array[j]=tem;
        }
    }
}
for (int i=0;i<5;i++){
    System.out.println(array[i]);
}
String  s = "hello Java World";
double a = 100.1;
        System.out.println(s.toUpperCase());
        System.out.println(s.substring(4,8));
    }
}

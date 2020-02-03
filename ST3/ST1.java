import java.util.Scanner;
class Racer{

    public static int dis(int breakingSpeed, int breakingTime, int constantSpeed, int time ){
        return constantSpeed * (time - breakingTime) + breakingSpeed* breakingTime;
    }
}


public class ST1{
    public static void main(String args[]){
            Scanner in = new Scanner(System.in);
            System.out.println("Enter number of racers: ");
            int n = in.nextInt();
            System.out.println("Enter time for which distance is to be measured: ");
            int time = in.nextInt();
            int breakingSpeed[] = new int[n];
            int constantSpeed[] = new int[n];
            int breakingTime[] = new int[n];
            int maxDist = -1;
            for(int i=0;i<n;i++){
                System.out.println("Enter breakingspeed, constantspeed and breakingTime");
                breakingSpeed[i] = in.nextInt();
                constantSpeed[i] = in.nextInt();
                breakingTime[i] = in.nextInt();
                if(breakingTime[i] > time) {
                    System.out.println("Incorrect input");
                    i--;
                    continue;
                }
                int dist = Racer.dis(breakingSpeed[i],breakingTime[i],constantSpeed[i],time);
                maxDist = Math.max(dist,maxDist);
                System.out.println("The distance is " + dist);
            }
            System.out.println("The max distance  is" + maxDist);

    }
}
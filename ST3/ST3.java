import java.util.Scanner;
public class ST3{
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        int m = in.nextInt();
        double p = 1 - in.nextDouble();
        boolean bomb[][] = new boolean[n+2][m+2];
        int calc[][] = new int[n+2][m+2];
        for(int i=1;i<=n;i++){
            for(int j=1;j<=m;j++){
                double r = Math.random();
                if(r>p){
                    bomb[i][j] = true;
                }
                else{
                    bomb[i][j] = false;
                }
            }
        }
        System.out.println("Bomb Array");
        for(int i=1;i<=n;i++){
            for(int j=1;j<=m;j++){
                if(bomb[i][j]){
                    System.out.print("* ");
                }
                else{
                    System.out.print(". ");
                }
            }
            System.out.println();
        }
        System.out.println("Count Array");
        for(int i=1;i<=n;i++){
            for(int j=1;j<=m;j++){
                int c = 0;
                if(bomb[i][j]){
                    System.out.print("* ");
                    continue;
                }
                if(bomb[i+1][j]){
                    c++;
                }

                if(bomb[i-1][j]){
                    c++;
                }
                if(bomb[i][j+1]){
                    c++;
                }
                if(bomb[i][j-1]){
                    c++;
                }
                if(bomb[i+1][j+1]){
                    c++;
                }
                if(bomb[i+1][j-1]){
                    c++;
                }
                if(bomb[i-1][j+1]){
                    c++;
                }
                if(bomb[i-1][j-1]){
                    c++;
                }
                System.out.print(c + " ");
            }
            System.out.println();
        }
    }
}
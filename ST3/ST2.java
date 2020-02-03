public class ST2{
    public static void main(String[] args) {
        Tax t = new Tax();
        Mobile one = new Mobile(30,"one");
        System.out.println(t.tax(one));    
        TV two = new TV(30,60);
        System.out.println(t.tax(two));    
        TV three = new TV(30);
        System.out.println(t.tax(three));    
        Tablet four = new Tablet(30);
        System.out.println(t.tax(four));    
    }
}

class Product{
    int price;
}

class TV extends Product {
    float tax;
    TV(int price ,int size){
        this.price = price;
        if(size<30){
            this.tax = 0.10f;
        }
        else{
            this.tax = 0.20f;
        }
    }
    TV(int price){
        this.price = price;
        this.tax = 0.1f;
    }
}
class HHD extends Product{
    String name;
}
class Mobile extends HHD{
    float tax;
    Mobile(int price,String name){
        this.price = price;
        this.tax = 0.1f;
        this.name = name;
    }
}
class Tablet extends HHD{
    float tax;
    Tablet(int price){
        this.price = price;
        this.tax = 0.1f;
        this.name = name;
    }
}

class Tax {
    public float tax(TV tv){
        return tv.price * tv.tax;
    }
    public float tax(Mobile mobile){
        return mobile.price * mobile.tax;
    }
    public float tax(Tablet tablet){
        return tablet.price * tablet.tax;
    }
}
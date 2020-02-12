import javax.swing.*; 
import java.awt.*;
public class ST4 
{ 
    public static void main(String[] args) 
    { 
        // creates instance of JFrame 
        JFrame frame1 = new JFrame(); 
  
        JButton _1 = new JButton("1"); 
        JButton _2 = new JButton("2"); 
        JButton _3 = new JButton("3"); 
        JButton _4 = new JButton("4"); 
        JButton _5 = new JButton("5"); 
        JButton _6 = new JButton("6"); 
        JButton _7 = new JButton("7"); 
        JButton _8 = new JButton("8"); 
        JButton _9 = new JButton("9"); 
        JButton _0 = new JButton("0"); 
        JButton _plusm = new JButton("+/-"); 
        JButton _plus = new JButton("+"); 
        JButton _minus = new JButton("-"); 
        JButton _star = new JButton("*"); 
        JButton _slash = new JButton("/");
        JButton _dot = new JButton(".");
        
        JButton _xsquare = new JButton("x\u00B2"); 
        JButton _xcube = new JButton("x\u00B3"); 
        JButton _xry = new JButton("x\u207F"); 
        JButton _obyx = new JButton("1/x"); 
        JButton _root = new JButton("\u221A"); 
        JButton _cuberoot = new JButton("\u221B"); 
        JButton _yroot = new JButton("\u207F\u221A"); 
        JButton _sin = new JButton("sin"); 
        JButton _cos = new JButton("cos"); 
        JButton _tan = new JButton("tan"); 
        JButton _asin = new JButton("asin"); 
        JButton _acos = new JButton("acos"); 
        JButton _atan = new JButton("atan"); 
        JButton _log = new JButton("log"); 
        JButton _sinh = new JButton("sinh");
        JButton _cosh = new JButton("cosh");
        JButton _tanh = new JButton("tanh");
        JButton _log10 = new JButton("log10");
        JButton _nfact = new JButton("n!"); 
        

        frame1.add(_xsquare);   
        frame1.add(_xcube);
        frame1.add(_xry);   
        frame1.add(_obyx);   
        frame1.add(_root);   
        frame1.add(_cuberoot);   
        frame1.add(_yroot);   
        frame1.add(_sin);   
        frame1.add(_cos);   
        frame1.add(_tan);
        frame1.add(_asin);
        frame1.add(_acos);
        frame1.add(_log);
        frame1.add(_atan);   
        frame1.add(_sinh);
        frame1.add(_cosh);
        frame1.add(_tanh);
        frame1.add(_log10);
        frame1.add(_nfact);



        _xsquare.setBounds(300 + 90, 350, 60 + 10, 30); 
        _xcube.setBounds(300 + 160 + 10,350, 60 + 10, 30); 
        _xry.setBounds(300 + 230 + 20,350, 60 + 10, 30); 
        _obyx.setBounds(300 + 90,300, 60 + 10, 30); 
        _root.setBounds(300 + 160 + 10,300, 60 + 10, 30); 
        _cuberoot.setBounds(300 + 230 + 20,300, 60 + 10, 30); 
        _yroot.setBounds(300 + 90,250, 60 + 10, 30); 
        _sin.setBounds(300 + 160 + 10,250, 60 + 10, 30); 
        _cos.setBounds(300 + 230 + 20,250, 60 + 10, 30); 
        _tan.setBounds(300 + 90,400, 60 + 10, 30); 
        _asin.setBounds(300 + 230 + 20,400, 60 + 10, 30);
        _acos.setBounds(300 + 160 + 10,400, 60 + 10, 30); 
        _log.setBounds(300 + 300 + 30,400, 60 + 10, 30); 
        _atan.setBounds(300 + 300 + 30,250, 60 + 10, 30);
        _sinh.setBounds(300 + 300 + 30,300, 60 + 10, 30);
        _cosh.setBounds(300 + 300 + 30,350, 60 + 10, 30);
        _tanh.setBounds(300 + 300 + 30,350, 60 + 10, 30);
        _log10.setBounds(300 + 300 + 30,350, 60 + 10, 30);
        _nfact.setBounds(300 + 300 + 30,350, 60 + 10, 30);

        // x axis, y axis, width, height 

        _1.setBounds(90, 350, 60, 30); 
        _2.setBounds(160,350, 60, 30); 
        _3.setBounds(230,350, 60, 30); 
        _4.setBounds(90,300, 60, 30); 
        _5.setBounds(160,300, 60, 30); 
        _6.setBounds(230,300, 60, 30); 
        _7.setBounds(90,250, 60, 30); 
        _8.setBounds(160,250, 60, 30); 
        _9.setBounds(230,250, 60, 30); 
        _0.setBounds(90,400, 60, 30); 
        _plusm.setBounds(230,400, 60, 30);
        _dot.setBounds(160,400, 60, 30); 
        _slash.setBounds(300,400, 60, 30); 
        _plus.setBounds(300,250, 60, 30);
        _minus.setBounds(300,300, 60, 30);
        _star.setBounds(300,350, 60, 30);
   
        frame1.add(_1);   
        frame1.add(_2);
        frame1.add(_3);   
        frame1.add(_4);   
        frame1.add(_5);   
        frame1.add(_6);   
        frame1.add(_7);   
        frame1.add(_8);   
        frame1.add(_9);   
        frame1.add(_0);
        frame1.add(_plusm);
        frame1.add(_slash);
        frame1.add(_dot);
        frame1.add(_plus);   
        frame1.add(_minus);
        frame1.add(_star);
         

        
        frame1.setSize(900, 500) ; 
        frame1.setLayout(null);   
        frame1.setVisible(true); 
        frame1.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
    } 
} 
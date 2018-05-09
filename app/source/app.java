import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class app extends PApplet {


int colR = 0;
int colG = 0;
int colB = 0;

public void setup(){
  
  importParams();
}
public void draw(){
 background(colR, colG, colB); 
}

public void importParams(){
  String file [] = loadStrings("params.csv");
  String params [] = file[0].split(",");
  colR = PApplet.parseInt(params[0]);
  colG = PApplet.parseInt(params[1]);
  colB = PApplet.parseInt(params[2]);
}
  public void settings() {  size(800,600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "app" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

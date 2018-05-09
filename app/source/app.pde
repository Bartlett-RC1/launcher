
int colR = 0;
int colG = 0;
int colB = 0;

void setup(){
  size(800,600);
  importParams();
}
void draw(){
 background(colR, colG, colB); 
}

void importParams(){
  String file [] = loadStrings("params.csv");
  String params [] = file[0].split(",");
  colR = int(params[0]);
  colG = int(params[1]);
  colB = int(params[2]);
}
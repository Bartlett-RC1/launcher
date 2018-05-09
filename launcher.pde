
int numIterations = 10;

int minR = 0;
int minG = 0;
int minB = 0;

int maxR = 255;
int maxG = 255;
int maxB = 255;


void setup() {
  size(400, 400);
}

void draw() {
}

void setParams() {

  println("setting params");
  int colR = int(random(minR, maxR));
  int colG = int(random(minG, maxG));
  int colB = int(random(minB, maxB));

  String params = colR + "," + colG + "," + colB;

  PrintWriter output = createWriter("app/params.csv");
  output.println(params);
  output.flush();
  output.close();

  println("params set: " + colR + "," + colG + "," + colB);
}

void runApp() {

  println("launching app...");
  launch("C:\\Users\\Daghan\\Desktop\\launcher\\launcher.bat");
}

void keyPressed() {
  for (int i=0; i<numIterations; i++) {
    setParams();
    runApp();
    delay(1000);
  }
}
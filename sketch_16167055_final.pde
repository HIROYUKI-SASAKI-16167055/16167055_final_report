float baseH = 20;

float arm1W = 12;
float arm1D = 12;
float arm1L = 20;

float arm2W = 10;
float arm2D = 10;
float arm2L = 30;

float arm3W = 5;
float arm3D = 5;
float arm3L = 30;

float angleZ = 0;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;

float dif = 5;

float Px = 0;
float Py = 0;
float Pz = arm1L + arm2L + arm3L;

void setup(){
  size(1000, 800, P3D);  
  camera(80, 80, 100, 0, 0, 0, 0, 0, -1);
  noStroke();  
}

void draw(){
  
}
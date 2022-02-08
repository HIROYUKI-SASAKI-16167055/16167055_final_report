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
  background(255);
  directionalLight(255, 255, 255, -1, -1, -1);

  if(keyPressed){
    // viewpoint control
    if(key == 'z'){
      angleZ = angleZ + dif;
    } else if(key == 'Z'){
      angleZ = angleZ - dif;
    }
    // specify Pr coordinates
      else if(key == 'r'){
      Py = 20;
      Px = 20;
      Pz = -10;
    } else if(key == 'g'){
      Py = -30;
      Px = 20;
      Pz = 10;
    } else if(key == 'b'){
      Py = -20;
      Px = -20;
      Pz = 30;
    } else if(key == 'c'){
      Py = 10;
      Px = -30;
      Pz = 20;
    } else if(key == 'm'){
      Py = -40;
      Px = -20;
      Pz = 0;
    } else if(key == 'y'){
      Py = -10;
      Px = 40;
      Pz = 30;
    } else if(key == 'k'){
      Py = 40;
      Px = -10;
      Pz = 20;
    } else if(key == 'w'){
      Py = 30;
      Px = 30;
      Pz = 20;
    }
  }

  float C3 = (sq(Px)+sq(Py)+sq(Pz-arm1L)-sq(arm2L)-sq(arm3L))/(2*arm2L*arm3L);
  float S3 = sqrt(1-sq(C3));
  
  float A = sqrt(sq(Px)+sq(Py));
  float B = Pz-arm1L;
  float M = arm2L+arm3L*C3;
  float N = arm3L*S3;

  float theta1 = atan2(Py, Px);
  float theta2 = atan2((M*A-N*B),(N*A+M*B));
  float theta3 = atan2(S3, C3);

  rotateZ(radians(angleZ));
  translate(0,0,baseH/2);

  //set colorPoint(x, y, z, r, g ,b)
  //red
  colorPoint(20, 20, -10, 255, 0, 0);
  //green
  colorPoint(-30, 20, 10, 0, 255, 0);
  //blue
  colorPoint(-20, -20, 30, 0, 0, 255);
  //cyan
  colorPoint(10, -30, 20, 0, 255, 255);
  //magenta
  colorPoint(-40, -20, 0, 255, 0, 255);
  //yellow
  colorPoint(-10, 40, 30, 255, 255, 0);
  //black
  colorPoint(40, -10, 20, 0, 0, 0);
  //white
  colorPoint(30, 30, 20, 255, 255, 255);

  //base
  fill(100);
  box(10,10,baseH);

  //1st link
  rotateZ(theta1);
  translate(0,0,baseH/2+arm1L/2);
  fill(150);
  box(arm1W,arm1D,arm1L);

  //2nd link
  //go to 2nd joint
  translate(0,0,0);
  rotateX(theta2);  
  //go to center of 2nd joint
  translate(0,0,arm2L/2);
  fill(200);
  box(arm2W,arm2D,arm2L);

  //3rd link
  // go to 3rd joint
  translate(0, 0, arm2L/2);
  rotateX(theta3);
  // go to center of 3rd joint
  translate(0, 0, arm3L/2);
  fill(250);
  box(arm3W,arm3D,arm3L);
}
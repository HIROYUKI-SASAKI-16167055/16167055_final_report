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
  background(255);
  directionalLight(255, 255, 255, -1, -1, -1);

  if(keyPressed){
    // viewpoint control
    if(key == 'z'){
      angleZ = angleZ + dif;
    }
    if(key == 'Z'){
      angleZ = angleZ - dif;
    }

    // specify Pr coordinates
    if(key == 'r'){
      Py = 20;
      Px = 20;
      Pz = -10;
    }
    if(key == 'g'){
      Py = -30;
      Px = 20;
      Pz = 10;
    }
    if(key == 'b'){
      Py = -20;
      Px = -20;
      Pz = 30;
    }
    if(key == 'c'){
      Py = 10;
      Px = -30;
      Pz = 20;
    }
    if(key == 'm'){
      Py = -40;
      Px = -20;
      Pz = 0;
    }
    if(key == 'y'){
      Py = -10;
      Px = 40;
      Pz = 30;
    }
    if(key == 'k'){
      Py = 40;
      Px = -10;
      Pz = 20;
    }
    if(key == 'w'){
      Py = 30;
      Px = 30;
      Pz = 20;
    }
  }
}
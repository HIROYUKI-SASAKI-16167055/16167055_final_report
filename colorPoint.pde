void colorPoint(float x, float y, float z, float r, float g, float b){
  pushMatrix();
  translate(x,-y,z);
  fill(r, g, b);
  sphere(4);
  popMatrix();
}
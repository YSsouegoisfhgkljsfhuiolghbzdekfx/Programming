class Bullets{
  float ox, oy;
  Bullets(float x_, float y_){
    this.ox=x_;
    this.oy=y_;
  }
  void display(){
  pushMatrix();
  rect(ox,oy,5,10);
  oy-=10;
  if(oy<0){
    BulletsArrayList.remove(0);
    println("test");
  }
  popMatrix();
  }
}



class Circles{
  float ox,oy;
  Circles(float x_,float y_){
    this.ox = x_ - x;
    this.oy = y_ - y;
  }
  void display(){
    pushMatrix();
    translate(x, y);
    fill(#3FFF00);
    circle(ox,oy,10);
    popMatrix();
  }
}

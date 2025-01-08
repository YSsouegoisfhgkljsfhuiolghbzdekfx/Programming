float emojiset=0;
class emoji{
  float ox, oy;
  emoji(float x_, float y_){
    this.ox=x_;
    this.oy=y_;
  }
  void display(){
   if(emojiset==1){
   rect(ox,oy,40,40);
   }
   if(emojiset==2){
     circle(ox,oy,50);
   }
   if(emojiset==3){
   ellipse(ox,oy,90,100);
  }
  emojiset+=1;
  if(emojiset==4){
    emojiset=1;
  }
  }
  
}

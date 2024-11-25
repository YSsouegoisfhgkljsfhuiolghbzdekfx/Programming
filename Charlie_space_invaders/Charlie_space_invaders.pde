int shipx=0, bulletx=-10, bullety=height+20, cooldown=0;
boolean moveLeft=false,moveRight=false, bulletFired=false, press=false;
ArrayList<Bullets> BulletsArrayList=new ArrayList<Bullets>();
PImage img;

void setup(){
 fullScreen();
 shipx=width/2;
 background(0,0,0);
 img=loadImage("Alien1.PNG");
 frameRate=60;
}

void draw(){
  background(0,0,0);
  fill(0,255,0);
  rect(shipx,height/10*9,100,50);

  if(moveLeft==true && !(shipx<0)){
    shipx-=10;
  }
  if(moveRight==true && !(shipx>width-100)){
    shipx+=10;
  }
  
  for(int i=1; i<6; i++){
    rect(i*width/6, 50, 40, 40);
  }
  if(bulletFired&&bullety>0){
    rect(bulletx,bullety,5,10);
    bullety-=10;
    
  }
   for(int i=0; i<BulletsArrayList.size(); i++){
      Bullets Part=BulletsArrayList.get(i);
    Part.display();
    
    }
}


void keyPressed(){
  if(key=='d'){
    moveRight=true;
    moveLeft=false;
  }
  if(key=='a'){
    moveLeft=true;
    moveRight=false;
  }
  if(key==' '&&press==false){
    BulletsArrayList.add(new Bullets(shipx+47,height/10*9));
    press=true;
  }
}
void keyReleased(){
  if(key=='d'){
    moveRight=false;
  }
  if(key=='a'){
    moveLeft=false;
  }
  if(key==' '){
    press=false;
  }
  
    
  
  
}

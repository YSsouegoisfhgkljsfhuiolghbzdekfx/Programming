ArrayList<emoji> EmojiArrayList=new ArrayList<emoji>();
boolean hpressed =false, spressed=false,tpressed=false;
float heart = 0, smile = 0, star=0;
String winner = "❤";
PFont noto;
void setup(){
  fullScreen();
  noto = createFont("Noto Sans",120);
}

void draw(){
  background(0,0,0);
  textSize(16);
  text("Winner: "+ winner, width/2, height/3);    
  text("Heart Votes: "+heart, width/4, height/2+80);
  text("Smile Votes: "+smile, width/2, height/2+80);
  text("Star Votes: "+star, width/4*3, height/2+80);
  textSize(32);
  textFont(noto);
  text("❤", width/4,height/2);
  text("😊", width/2, height/2);
  text("⭐", width/4*3, height/2);
  if(hpressed==true){
    heart+=1;
    hpressed=false;
  }
  if(spressed==true){
    smile+=1;
    spressed=false;
  }
  if(tpressed==true){
    star+=1;
    tpressed=false;
    
  }
  if((heart>star) && (heart>smile)){
    winner="❤";
  }
  if((star>heart) && (star>smile)){
    winner="⭐";
  }
  if((smile>heart) && (smile>star)) {
    winner ="😊";
  }
}

void keyPressed(){
  if(key=='h'){
    hpressed=true;
  }
  if(key=='s'){
    spressed=true;
  }
  if(key=='t'){
    tpressed=true;
  }
}

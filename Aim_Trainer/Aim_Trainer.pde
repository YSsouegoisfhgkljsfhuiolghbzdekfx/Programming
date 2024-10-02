float x=400, y=400, shots=0, score=0, skill=0, hasStarted = 0, gameMode = 99999, stupidBugFixer = 0, classicHighScore=0, survivalHighScore=0, tensHighScore=0, fakeHighScore=0;
float newx = 0, newy = 0, ogx=random(1,3), ogy=random(0,3);
boolean up, down, left, right, mousepressed, P1duelTimeLoss, P2duelTimeLoss, basicTimeLoss, survivalTimeLoss, tensTimerLoss, fakeTimeLoss, fakeMissLoss, missLoss, untrackLoss;
boolean key1, key2, key3, p2cheat, oneGone, twoGone, threeGone;
ArrayList<Circles> CirclesArrayList= new ArrayList<Circles>();
float basicTimer=40, P1duelScore=0, P1tiebreaker=0,P2duelScore=0,P2tiebreaker=0, P2duelShots, survivalTimer=60, survivalTargetSize, tensTimer=60, moveTimer=random(10,30);
float moveHighScore=0, misses=0, trackHighScore, seizeHighScore, sequence, sequenceHighScore, sequenceScore, newnewx, newnewy, newnewnewx, newnewnewy, oldMouseX, oldMouseY;
float fpsHighScore, newnewnewnewx, newnewnewnewy, defenseHighScore, randomR, randomG, randomB, camoHighScore, clicks;
import java.awt.Robot;
Robot robot;
import processing.sound.*;
SoundFile file;
//PUT IN THE WOOD NOISE
void setup() {
  fullScreen();
  x=random(0,width);
  y=random(0,height);
  frameRate(60);
  try {
   robot = new Robot();
 }
 catch (Throwable e){
 }
 file = new SoundFile(this, "ambient-relaxing-music-for-you-15969.mp3");
 file.loop();
 file = new SoundFile(this, "85591__jankoehl__hit-wood10.wav");
}

float pythagorasA=0, pythagorasB=0, pythagorasC=0;

void draw() {
  
  background(0);
  
  if (hasStarted==0) {
    textSize(40);
    fill(0, 0, 255);
    text("AIM TRAINER", width/2-110, height/2-20);
    text("CLICK TO START", width/2-140, height/2+60);
    fill(#FFFFFF);
    circle(width/10,height/10,100);
    textSize(10);
    text("QUIT", width/10-10, height/10+70);
    circle(width/10,height/10*9,100);
    text("CREDITS", width/10-15, height/10*9+70);
    }
  if(hasStarted==1){
    basicTimeLoss=false;
    fill(255,0,0);
    circle(width/6,height/4,150);
    textSize(15);
    text("CLASSIC", width/6-27, height/4+100);
    fill(0,255,0);
    circle(width/3,height/4,150);
    text("DUEL", width/3-10, height/4+100);
    fill(0,0,255);
    circle(width/2,height/4,150);
    text("SURVIVAL", width/2-24, height/4+100);
    fill(255,255,0);
    circle(width/3*2,height/4,150);
    text("PERFECT 10s", width/3*2-35, height/4+100);
    fill(255,127,0);
    circle(width/6*5,height/4,150);
    text("FAKE TARGETS", width/6*5-43, height/4+100);
    fill(#FFFFFF);
    circle(width/6*5,height/4*3, 150);
    text("MAIN MENU", width/6*5-38, height/4*3+100);
    fill(255,0,255);
    circle(width/6,height/4*3,150);
    text("MOVING TARGETS", width/6-52, height/4*3+100);
    fill(0,255,255);
    circle(width/3,height/4*3,150);
    text("TARGET TRACKER", width/3-52, height/4*3+100);
    fill(255,0,127);
    circle(width/2,height/4*3,150);
    text("SEIZURE CLASSIC", width/2-54, height/4*3+100);
    fill(0,255,127);
    circle(width/3*2,height/4*3,150);
    text("2 PLAYER MOVING TARGETS", width/3*2-80, height/4*3+100);
    fill(127,0,255);
    circle(width/6, height/2, 150);
    text("SEQUENCING", width/6-43, height/2+100);
    fill(127,255,0);
    circle(width/3,height/2,150);
    text("FPS", width/3-13, height/2+100);
    fill(127,127,0);
    circle(width/3*2,height/2,150);
    text("DEFENSE",width/3*2-30,height/2+100);
    fill(0,127,127);
    circle(width/6*5,height/2,150);
    text("CAMOUFLAGE",width/6*5-43,height/2+100);
    fill(127,0,127);
    text("CPS TEST",width/2-30,height/2+100);
    circle(width/2,height/2,150);
  }
  if(hasStarted>=2 && gameMode==0){
    fill(#FFFFFF);
    textSize(40);
    text("CREDITS:", width/2, 100);
    text("PRESS 1 TO LEAVE", 300, height/2);
    textSize(30);
    text("CHARLIE KIRKMAN", width/2, 200);
    text("HAYDEN I AM UNABLE TO DISCLOSE THAT INFORMATION", width/2, 300);
    text("MICAH BRICKMAN", width/2, 500);
    text("PAUL DOYLE", width/2, 600);
    text("PAUL DOYLE", width/2, 601);
    text("SANDRO", width/2, 400);
    text("SERGEY SAFIKANOV", width/2, 700);
    textSize(20);
    text("Did most of the coding", width/2, 250);
    text("Did most of the actual coding", width/2, 350);
    text("Made a for loop", width/2, 550);
    text("Suggested the idea for survival mode", width/2, 650);
    text("Added circles", width/2, 450);
    text("Composed ambiance",width/2,750);
    if(key1==true){
      hasStarted=0;
     
    }
    
   
  }
  if(hasStarted==2 && gameMode==1){
    textSize(30);
    text("RULES:", 300, 100);
    textSize(20);
    text("Each time you click, you will score points based on", 300, 200);
    text("how close you clicked to the center.", 300, 250);
    text("Your score is the average score of your shots.", 300, 300);
    text("After the game ends, you will also know the sum of your shots", 300, 350);
    text("The game will end after you take more than 1/2 a second to take a shot or you miss 25 times.", 300, 400);
    text("CLICK TO START", 300, 450);
    basicTimer=40;
    basicTimeLoss=false;
    stupidBugFixer=0;
    CirclesArrayList.clear();
    shots=0;
    score=0;
    skill=0;
    misses=0;
  }
  if(hasStarted==2 && gameMode==5){
    textSize(20);
    text("RULES:", 300, 100);
    text("There will be two targets.", 300, 200);
    text("The one will normal coloring is real.", 300, 250);
    text("The one with green is fake.", 300, 300);
    text("If you ever click the fake target, you lose.", 300, 350);
    text("If you take more than 3/4 seconds to click a target, you lose.", 300, 400);
    text("If you miss, you lose", 300, 450);
    text("CLICK TO START", 300, 550);
    basicTimer=45;
    fakeMissLoss=false;
    fakeTimeLoss=false;
    score=0;
    shots=0;
    skill=0;
  }
  if(hasStarted>=3 && gameMode==5 && fakeTimeLoss==false && fakeMissLoss==false){
    
    if(basicTimer<0){
      fakeTimeLoss=true;
    }
    
    fill(0,255,0);
    circle(newx, newy, 275);
    circle(newx, newy, 250);
    fill(#161617);
    circle(newx, newy, 225);
    circle(newx, newy, 200);
    fill(#0081FF);
    circle(newx, newy, 175);
    circle(newx, newy, 150);
    fill(#FF0100);
    circle(newx, newy, 125);
    circle(newx, newy, 100);
    fill(#FFFF00);
    circle(newx, newy, 75);
    circle(newx, newy, 50);
    circle(newx, newy, 25);
    
    fill(#FFFFFF);
    circle(x, y, 275);
    circle(x, y, 250);
    fill(#161617);
    circle(x, y, 225);
    circle(x, y, 200);
    fill(#0081FF);
    circle(x, y, 175);
    circle(x, y, 150);
    fill(#FF0100);
    circle(x, y, 125);
    circle(x, y, 100);
    fill(#FFFF00);
    circle(x, y, 75);
    circle(x, y, 50);
    circle(x, y, 25);
    
    basicTimer-=1;

    if (mousepressed==true&&hasStarted>=4) {
      file.play();
      if(stupidBugFixer==1){
        CirclesArrayList.add(new Circles(mouseX, mouseY));
      }
      shots+=1;
      if(shots==1 && stupidBugFixer==0){
        score=0;
        shots=0;
        stupidBugFixer=1;
        basicTimer=45;
      }

      float AvalX = mouseX - x;
      float AvalY = mouseY - y;

      float AvalXPow = pow(AvalX, 2);
      float AvalYPow = pow(AvalY, 2);

      float AvalHPow  = AvalXPow + AvalYPow;

      float AvalH = sqrt(AvalHPow);
      
      float targetMin = 0;
      float targetMax = 25/2;
      int round = 0;
      boolean loopdone = false;
      
      while (round<=11 && loopdone == false) {
        println(round);
        if (AvalH>=targetMin*round&&AvalH<targetMax*round) {
          score+=12-round;
          if(round==1){
            score-=1;
            
          }
          loopdone = true;
        } else {
          round+=1;
        }
      }
      if(round==12 && hasStarted>=4){
        fakeMissLoss=true;
        file.stop();
      }

      x=random(0, width);
      y=random(0, height);
      newx=random(0, width);
      newy=random(0, height);
      mousepressed=false;
      basicTimer=45;
      skill=(score/shots);
    }
    textSize(35);
    text("Score: "+skill, 100, 100);
  }


  if((hasStarted>=3)&&(gameMode==1) && basicTimeLoss==false && missLoss==false) {
    
    if(basicTimer<0){
      basicTimeLoss=true;
    }
    
    fill(#FFFFFF);
    circle(x, y, 275);
    circle(x, y, 250);
    fill(#161617);
    circle(x, y, 225);
    circle(x, y, 200);
    fill(#0081FF);
    circle(x, y, 175);
    circle(x, y, 150);
    fill(#FF0100);
    circle(x, y, 125);
    circle(x, y, 100);
    fill(#FFFF00);
    circle(x, y, 75);
    circle(x, y, 50);
    circle(x, y, 25);
    basicTimer-=1;

    
    
    for (int i=0; i<CirclesArrayList.size(); i++) {
      Circles Part = CirclesArrayList.get(i);
      if (hasStarted>2 ) {

        Part.display();
      }
    }
    if (mousepressed==true&&hasStarted>=3) {
      file.play();
      if(stupidBugFixer==1){
        CirclesArrayList.add(new Circles(mouseX, mouseY));
      }
      shots+=1;
      if(shots==1 && stupidBugFixer==0){
        score=0;
        shots=0;
        stupidBugFixer=1;
        basicTimer=40;
      }

      float AvalX = mouseX - x;
      float AvalY = mouseY - y;

      float AvalXPow = pow(AvalX, 2);
      float AvalYPow = pow(AvalY, 2);

      float AvalHPow  = AvalXPow + AvalYPow;

      float AvalH = sqrt(AvalHPow);
      
      float targetMin = 0;
      float targetMax = 25/2;
      int round = 0;
      boolean loopdone = false;
      
      while (round<=11 && loopdone == false) {
        println(round);
        if (AvalH>=targetMin*round&&AvalH<targetMax*round) {
          score+=12-round;
          if(round==1){
            score-=1;
            
          }
          loopdone = true;
        } else {
          round+=1;
          
        }
        if(round>=12){
          misses+=1;
          loopdone = true;
          file.stop();
        }
      }
      
      
      if(misses==25){
        missLoss=true;
      }
      x=random(0, width);
      y=random(0, height);
      mousepressed=false;
      basicTimer=40;
      skill=(score/shots);
    }
    textSize(35);
    text("Score: "+skill, 100, 100);
  }
  
  
  if(hasStarted>=3&&gameMode==5 && fakeTimeLoss==true){
    if(score>fakeHighScore){
      fakeHighScore=score;
    }
    textSize(20);
    text("You took more than 3/4s of a second to take a shot.", 300, 100);
    text("You lose.", 300, 150);
    text("Your average score was "+skill, 300, 200);
    text("Your total score was "+score, 300, 250);
    text("Your high score is "+fakeHighScore, 300, 300);
    text("PRESS 1 TO PLAY AGAIN", 300, 450);
    text("PRESS 2 TO RETURN TO THE GAME SELECTOR", 300, 500);
    text("PRESS 3 TO RETURN TO THE MAIN MENU", 300, 550);
    if(key1==true){
      hasStarted=2;
     
    }
    if(key2==true){
      hasStarted=1;
      
    }
    if(key3==true){
      hasStarted=0;
    }
  }
  
  
  if(hasStarted>=3&&gameMode==5 && fakeMissLoss==true){
    if(score>fakeHighScore){
      fakeHighScore=score;
    }
    textSize(20);
    text("You didn't click the target.", 300, 100);
    text("You lose.", 300, 150);
    text("Your average score was "+skill, 300, 200);
    text("Your total score was "+score, 300, 250);
    text("Your high score is "+fakeHighScore, 300, 300);
    text("PRESS 1 TO PLAY AGAIN", 300, 450);
    text("PRESS 2 TO RETURN TO THE GAME SELECTOR", 300, 500);
    text("PRESS 3 TO RETURN TO THE MAIN MENU", 300, 550);
    if(key1==true){
      hasStarted=2;
     
    }
    if(key2==true){
      hasStarted=1;
      
    }
    if(key3==true){
      hasStarted=0;
    }
  }
  
  if(hasStarted>=3 && gameMode ==1 && missLoss==true){
    if(score>classicHighScore){
      classicHighScore=score;
    }
    textSize(20);
    text("You missed 25 shots.", 300, 100);
    text("You lose.", 300, 150);
    text("Your average score was "+skill, 300, 200);
    text("Your total score was "+score, 300, 250);
    text("Your high score is "+classicHighScore, 300, 300);
    text("PRESS 1 TO PLAY AGAIN", 300, 450);
    text("PRESS 2 TO RETURN TO THE GAME SELECTOR", 300, 500);
    text("PRESS 3 TO RETURN TO THE MAIN MENU", 300, 550);
    if(key1==true){
      hasStarted=2;
     
    }
    if(key2==true){
      hasStarted=1;
      
    }
    if(key3==true){
      hasStarted=0;
    }
  }
  
  if(hasStarted>=3&&gameMode==1 && basicTimeLoss==true){
    if(score>classicHighScore){
      classicHighScore=score;
    }
    textSize(20);
    text("You took more than half a second to take a shot.", 300, 100);
    text("You lose.", 300, 150);
    text("Your average score was "+skill, 300, 200);
    text("Your total score was "+score, 300, 250);
    text("Your high score is "+classicHighScore, 300, 300);
    text("PRESS 1 TO PLAY AGAIN", 300, 450);
    text("PRESS 2 TO RETURN TO THE GAME SELECTOR", 300, 500);
    text("PRESS 3 TO RETURN TO THE MAIN MENU", 300, 550);
    if(key1==true){
      hasStarted=2;
     
    }
    if(key2==true){
      hasStarted=1;
      
    }
    if(key3==true){
      hasStarted=0;
    }
  }
  if(hasStarted==2&&gameMode==2){
    fill(#FFFFFF);
    textSize(30);
    text("RULES:",300,100);
    textSize(20);
    text("Each player will have 25 shots on the target.", 300, 200);
    text("After player 1 takes their shots, player two will", 300, 250);
    text("take theirs, and then the game will end.", 300,300);
    text("Whoever has the highest total score will win.", 300,350);
    text("If there is a tie, whoever shot the tiebreaker", 300, 400);
    text("circle more is the winner.", 300, 450);
    text("If the match is still tied, it will end in a draw.", 300, 500);
    text("If a player takes more that 1/2 second for any shot, they instantly lose.", 300, 550);
    textSize(30);
    text("CLICK TO START", 300, 650);
    basicTimer=40;
    P1duelTimeLoss=false;
    P2duelTimeLoss=false;
    stupidBugFixer=0;
    P1duelScore=0;
    P2duelScore=0;
    P1tiebreaker=0;
    P2tiebreaker=0;
  }
  if (hasStarted>=3 && gameMode == 2 && hasStarted<=28 && P1duelTimeLoss==false){
    fill(#FFFFFF);
    circle(x, y, 275);
    circle(x, y, 250);
    fill(#161617);
    circle(x, y, 225);
    circle(x, y, 200);
    fill(#0081FF);
    circle(x, y, 175);
    circle(x, y, 150);
    fill(#FF0100);
    circle(x, y, 125);
    circle(x, y, 100);
    fill(#FFFF00);
    circle(x, y, 75);
    circle(x, y, 50);
    circle(x, y, 25);
    basicTimer=basicTimer-1;
    
    if(basicTimer<0){
      P1duelTimeLoss=true;
    }
    
    if (mousepressed==true&&hasStarted>=3) {
      file.play();
      if(stupidBugFixer==1){
        CirclesArrayList.add(new Circles(mouseX, mouseY));
      }
      shots+=1;
      if(P2duelShots==1 && stupidBugFixer==0){
        P2duelScore=0;
        P2duelShots=0;
        stupidBugFixer=1;
        basicTimer=40;
        hasStarted-=1;
      }

      float AvalX = mouseX - x;
      float AvalY = mouseY - y;

      float AvalXPow = pow(AvalX, 2);
      float AvalYPow = pow(AvalY, 2);

      float AvalHPow  = AvalXPow + AvalYPow;

      float AvalH = sqrt(AvalHPow);
      
      float targetMin = 0;
      float targetMax = 25/2;
      int round = 0;
      boolean loopdone = false;
      
      while (round<=11 && loopdone == false) {
        println(round);
        if (AvalH>=targetMin*round&&AvalH<targetMax*round) {
          P1duelScore+=12-round;
          if(round==1){
            P1duelScore-=1;
            P1tiebreaker+=1;
          }
          loopdone = true;
        } else {
          round+=1;
          if(round==12){
            file.stop();
          }
        }
      }
      

      x=random(0, width);
      y=random(0, height);
      mousepressed=false;
      basicTimer=40;
    }
    textSize(35);
    text("Score: "+P1duelScore, 100, 100);
  }
  
  if(hasStarted>=3 && hasStarted<=28 && gameMode==2 && P1duelTimeLoss==true){
    textSize(20);
    fill(#FFFFFF);
    text("Player 1, you took more than half a second to make a shot.", 300, 100);
    text("You lose.", 300, 150);
    textSize(30);
    text("PRESS 1 TO PLAY AGAIN", 300, 450);
    text("PRESS 2 TO RETURN TO THE GAME SELECTOR", 300, 500);
    text("PRESS 3 TO RETURN TO THE MAIN MENU", 300, 550);
    
     if(key1==true){
      hasStarted=2;
     
    }
    if(key2==true){
      hasStarted=1;
    }
    if(key3==true){
      hasStarted=0;
    }
  }
  
  if(hasStarted==29&&gameMode==2){
    fill(#FFFFFF);
    textSize(20);
    text("Player 1, your round is over.", 300, 100);
    text("You scored "+P1duelScore, 300, 150);
    text("points, and hit the tiebreaker circle "+P1tiebreaker, 440, 150);
    text("times.", 300, 200);
    text("Player 2, click to start.", 300, 250);
     basicTimer=40;
      if(key1==true){
      hasStarted=2;
     
    }
    if(key2==true){
      hasStarted=1;
    }
    if(key3==true){
      hasStarted=0;
    }
    
  }
  if(hasStarted>=30&&hasStarted<=54&&P2duelTimeLoss==false&&gameMode==2){
    fill(#FFFFFF);
    circle(x, y, 275);
    circle(x, y, 250);
    fill(#161617);
    circle(x, y, 225);
    circle(x, y, 200);
    fill(#0081FF);
    circle(x, y, 175);
    circle(x, y, 150);
    fill(#FF0100);
    circle(x, y, 125);
    circle(x, y, 100);
    fill(#FFFF00);
    circle(x, y, 75);
    circle(x, y, 50);
    circle(x, y, 25);
    
    if(basicTimer<0){
      P2duelTimeLoss=true;
    }
    if (mousepressed==true&&hasStarted>=3) {
      file.play();
      if(stupidBugFixer==1){
        CirclesArrayList.add(new Circles(mouseX, mouseY));
      }
      P2duelShots+=1;
      if(shots==1 && stupidBugFixer==0){
        P2duelScore=0;
        shots=0;
        stupidBugFixer=1;
        basicTimer=40;
      }

      float AvalX = mouseX - x;
      float AvalY = mouseY - y;

      float AvalXPow = pow(AvalX, 2);
      float AvalYPow = pow(AvalY, 2);

      float AvalHPow  = AvalXPow + AvalYPow;

      float AvalH = sqrt(AvalHPow);
      
      float targetMin = 0;
      float targetMax = 25/2;
      int round = 0;
      boolean loopdone = false;
      
      while (round<=11 && loopdone == false) {
        println(round);
        if (AvalH>=targetMin*round&&AvalH<targetMax*round) {
          P2duelScore+=12-round;
          if(round==1){
            P2duelScore-=1;
            P2tiebreaker+=1;
          }
          loopdone = true;
        } else {
          round+=1;
          if(round==12){
            file.stop();
          }
        }
      }
      
      basicTimer=40;
      x=random(0, width);
      y=random(0, height);
      mousepressed=false;
      
    }
    textSize(35);
    text("Score: "+P2duelScore, 100, 100);
    basicTimer-=1;
  }
  if(hasStarted>=30 && hasStarted<=54 && gameMode==2 && P2duelTimeLoss==true){
    textSize(20);
    text("Player 2, you took more than half a second to make a shot.", 300, 100);
    text("You lose.", 300, 150);
    textSize(30);
    text("PRESS 1 TO PLAY AGAIN", 300, 450);
    text("PRESS 2 TO RETURN TO THE GAME SELECTOR", 300, 500);
    text("PRESS 3 TO RETURN TO THE MAIN MENU", 300, 550);
     if(key1==true){
      hasStarted=2;
     
    }
    if(key2==true){
      hasStarted=1;
    }
    if(key3==true){
      hasStarted=0;
    }
  }
  if(hasStarted>=55&&gameMode==2){
    if(P1duelScore>P2duelScore||(P1duelScore==P2duelScore&&P1tiebreaker>P2tiebreaker)){
      textSize(20);
      text("Player 2, your round is over.", 300, 100);
      text("You scored "+P2duelScore, 300, 150);
      text("points, and hit the tiebreaker circle "+P2tiebreaker, 440, 150);
      text("times.", 300, 200);
      text("Player 1 scored "+P1duelScore, 300, 250);
      text("points, and hit the tiebreaker circle "+P1tiebreaker, 505, 250);
      text("times.", 300, 300);
      text("Therefore, Player 1 wins", 300, 350.);
      textSize(30);
      text("PRESS 1 TO PLAY AGAIN", 300, 450);
      text("PRESS 2 TO RETURN TO THE GAME SELECTOR", 300, 500);
      text("PRESS 3 TO RETURN TO THE MAIN MENU", 300, 550);
       if(key1==true){
      hasStarted=2;
     
    }
    if(key2==true){
      hasStarted=1;
    }
    if(key3==true){
      hasStarted=0;
    }
    }
    else{
      if(P2duelScore>P1duelScore||(P2duelScore==P1duelScore&&P2tiebreaker>P1tiebreaker)){
      textSize(20);
      text("Player 2, your round is over.", 300, 100);
      text("You scored "+P2duelScore, 300, 150);
      text("points, and hit the tiebreaker circle "+P2tiebreaker, 440, 150);
      text("times.", 300, 200);
      text("Player 1 scored "+P1duelScore, 300, 250);
      text("points, and hit the tiebreaker circle "+P1tiebreaker, 505, 250);
      text("times.", 300, 300);
      text("Therefore, Player 2 wins", 300, 350.);
      textSize(30);
      text("PRESS 1 TO PLAY AGAIN", 300, 450);
      text("PRESS 2 TO RETURN TO THE GAME SELECTOR", 300, 500);
      text("PRESS 3 TO RETURN TO THE MAIN MENU", 300, 550);
       if(key1==true){
      hasStarted=2;
     
    }
    if(key2==true){
      hasStarted=1;
    }
    if(key3==true){
      hasStarted=0;
    }
    }
    else{
      textSize(20);
      fill(#FFFFFF);
      text("Player 2, your round is over.", 300, 100);
      text("You scored "+P2duelScore, 300, 150);
      text("points, and hit the tiebreaker circle "+P2tiebreaker, 440, 150);
      text("times.", 300, 200);
      text("Player 1 scored "+P1duelScore, 300, 250);
      text("points, and hit the tiebreaker circle "+P1tiebreaker, 505, 250);
      text("times.", 300, 300);
      text("Therefore, the match is a draw.", 300, 350.);
      textSize(30);
      text("PRESS 1 TO PLAY AGAIN", 300, 450);
      text("PRESS 2 TO RETURN TO THE GAME SELECTOR", 300, 500);
      text("PRESS 3 TO RETURN TO THE MAIN MENU", 300, 550);
       if(key1==true){
      hasStarted=2;
     
    }
    if(key2==true){
      hasStarted=1;
    }
    if(key3==true){
      hasStarted=0;
    }
      }
    }
  }
  if(hasStarted==2 && gameMode==3){
    fill(0,0,255);
    textSize(30);
    text("RULES:", 300, 100);
    textSize(20);
    text("Each time you click on the target, you will gain 1 point.", 300, 200);
    text("Every frame, the target will get smaller.", 300, 250);
    text("After 1 second, the target will disappear completely.", 300, 300);
    text("If this happens, you will lose", 300, 350);
    textSize(30);
    text("CLICK TO START", 300, 450);
    survivalTimeLoss=false;
    score=0;
    survivalTimer=60;
  }
  if(hasStarted>=3 && gameMode==3 && survivalTimeLoss==false){
    
    
    
    survivalTargetSize=survivalTimer*4;
    circle(x,y,survivalTargetSize);
    if(mousepressed==true){
      file.play();
      pythagorasA=mouseX-x;
      pythagorasB=mouseY-y;
      pythagorasA=pow(pythagorasA,2);
      pythagorasB=pow(pythagorasB,2);
      pythagorasC=sqrt(pythagorasA+pythagorasB);
      if(pythagorasC<=survivalTargetSize){
        survivalTimer=60;
        x=random(0, width);
        y=random(0, height);
        
        score+=1;
      }
      else{
        file.stop();
      }
      mousepressed=false;
    }
    survivalTimer-=1;
    textSize(35);
    text("Score: "+score, 100, 100);
    if(survivalTimer<0){
      survivalTimeLoss=true;
    }
  }
  if(hasStarted>=3 && gameMode==3 && survivalTimeLoss==true){
    if(score>survivalHighScore){
      survivalHighScore=score;
    }
    textSize(20);
    text("You failed to click the target in under 1 second.", 300, 100);
    text("You lose.", 300, 150);
    text("Your final score was "+score, 300, 200);
    text("Your high score is "+survivalHighScore, 300, 250);
    textSize(30);
    text("PRESS 1 TO PLAY AGAIN", 300, 300);
    text("PRESS 2 TO RETURN TO THE GAME SELECTOR", 300, 350);
    text("PRESS 3 TO RETURN TO THE MAIN MENU", 300, 400);
    if(key1==true){
      hasStarted=2;
     
    }
    if(key2==true){
      hasStarted=1;
    }
    if(key3==true){
      hasStarted=0;
    }
  }
  if(hasStarted==2&&gameMode==4){
    textSize(30);
    text("RULES:", 300, 100);
    textSize(20);
    text("The only circles are inner yellow and bull's eye.", 300, 200);
    text("The bull's eye is worth twice as much as inner yellow.", 300, 250);
    text("You have 1/2 second to hit the target.", 300, 300);
    text("Good luck.", 300, 350);
    textSize(30);
    text("CLICK TO BEGIN", 300, 400);
    skill=0;
    score=0;
    shots=0;
    tensTimerLoss=false;
    tensTimer=40;
  }
  if(hasStarted>=3 && gameMode==4 && tensTimerLoss==false){
    fill(255,255,0);
    circle(x,y,50);
    circle(x,y,25);
     if(mousepressed==true){
      file.play();
      pythagorasA=mouseX-x;
      pythagorasB=mouseY-y;
      pythagorasA=pow(pythagorasA,2);
      pythagorasB=pow(pythagorasB,2);
      pythagorasC=sqrt(pythagorasA+pythagorasB);
      if(pythagorasC<=25){
        tensTimer=40;
        x=random(0, width);
        y=random(0, height);
        score+=2;
      }
      else{
         if(pythagorasC<=50){
           tensTimer=40;
        x=random(0, width);
        y=random(0, height);
        
        score+=1;
         }
         else{
         file.stop();
       }
       }
       
       mousepressed=false;
       shots+=1;
       skill=score/shots;
      } tensTimer-=1;
    textSize(35);
    text("Score: "+skill, 100, 100);
    if(tensTimer<0){
      tensTimerLoss=true;
      
  }
     
    }
    if(hasStarted>=3 && gameMode==4 && tensTimerLoss==true){
      if(score>tensHighScore){
        tensHighScore=score;
      }
      textSize(20);
      text("You failed to click the target in 1/2 second.", 300, 100);
      text("You lose.", 300, 150);
      text("Your average score was "+skill, 300, 200);
      text("Your total score was "+score, 300, 250);
      text("Your high score is "+tensHighScore, 300, 300);
      textSize(30);
      text("PRESS 1 TO PLAY AGAIN", 300, 350);
      text("PRESS 2 TO RETURN TO THE GAME SELECTOR", 300, 400);
      text("PRESS 3 TO RETURN TO THE MAIN MENU", 300, 450);
    if(key1==true){
      hasStarted=2;
     
    }
    if(key2==true){
      hasStarted=1;
    }
    if(key3==true){
      hasStarted=0;
    }
    }
    if(hasStarted==2 && gameMode==6){
      textSize(30);
      text("RULES", 300, 100);
      textSize(20);
      text("The target will move towards the corner of the screen farthest from it", 300, 200);
      text("If the center goes offscreen, you lose.", 300, 250);
      text("CLICK TO START", 300, 350);
      basicTimer=60;
      fakeMissLoss=false;
      fakeTimeLoss=false;
      score=0;
      skill=0;
      shots=0;
      CirclesArrayList.clear();
      stupidBugFixer=0;
    }
    if(hasStarted>=3 && gameMode==6 && fakeMissLoss==false && fakeTimeLoss==false){
      if(basicTimer<0){
        fakeTimeLoss=true;
      }
    fill(#FFFFFF);
    circle(x, y, 275);
    circle(x, y, 250);
    fill(#161617);
    circle(x, y, 225);
    circle(x, y, 200);
    fill(#0081FF);
    circle(x, y, 175);
    circle(x, y, 150);
    fill(#FF0100);
    circle(x, y, 125);
    circle(x, y, 100);
    fill(#FFFF00);
    circle(x, y, 75);
    circle(x, y, 50);
    circle(x, y, 25);
    basicTimer-=1;
    moveTimer-=1;
    if(moveTimer<=0 || (ogx>2 && ogy>2)){
      ogx=random(0,3);
      ogy=random(0,3);
      moveTimer=random(10,30);
    }
    
    if(ogx<=1){
      x+=width/240;
    }
    if(ogx>1 && ogx<=2){
      x-=width/240;
    }
    if(ogy<=1){
      y-=height/240;
    }
    if(ogy<=2 && ogy>1){
      y+=height/240;
    }
    else{
      y-=height/240;
    }
    
    for (int i=0; i<CirclesArrayList.size(); i++) {
      Circles Part = CirclesArrayList.get(i);
      if (hasStarted>2 ) {

        Part.display();
      }
    }
    if (mousepressed==true&&hasStarted>=3) {
      file.play();
      if(stupidBugFixer==1){
        CirclesArrayList.add(new Circles(mouseX, mouseY));
      }
      shots+=1;
      if(shots==1 && stupidBugFixer==0){
        score=0;
        shots=0;
        stupidBugFixer=1;
        basicTimer=60;
        CirclesArrayList.clear();
      }

      float AvalX = mouseX - x;
      float AvalY = mouseY - y;

      float AvalXPow = pow(AvalX, 2);
      float AvalYPow = pow(AvalY, 2);

      float AvalHPow  = AvalXPow + AvalYPow;

      float AvalH = sqrt(AvalHPow);
      
      float targetMin = 0;
      float targetMax = 25/2;
      int round = 0;
      boolean loopdone = false;
      
      while (round<=11 && loopdone == false) {
        println(round);
        if (AvalH>=targetMin*round&&AvalH<targetMax*round) {
          score+=12-round;
          if(round==1){
            score-=1;
            
          }
          loopdone = true;
        } else {
          round+=1;
          if(round==12){
            file.stop();
          }
          
        }
      }
      
      if(round>=12 && hasStarted>=4){
        fakeMissLoss=true;
      }

      x=random(0, width);
      y=random(0, height);
      ogx=random(0,3);
      ogy=random(0,3);
      mousepressed=false;
      basicTimer=60;
      skill=(score/shots);
      print(ogx);
      print(ogy);
    }
    textSize(35);
    text("Score: "+skill, 100, 100);
    if(x<0){
      ogx=1;
    }
    if(x>width){
      ogx=2;
    }
    if(y<0){
     ogy=2; 
    }
    if(y>height){
     ogy=1;
    }
   }
  if(hasStarted>=3 && gameMode==6 && fakeMissLoss==true){
    textSize(20);
    if(score>moveHighScore){
      moveHighScore=score;
    }
    text("You missed the target.", 300, 100);
    text("You lose.", 300, 150);
    text("Your average score was "+skill, 300, 200);
    text("Your total score was "+score, 300, 250);
    text("Your high score is "+moveHighScore, 300, 300);
    textSize(30);
    text("PRESS 1 TO PLAY AGAIN", 300, 350);
    text("PRESS 2 TO RETURN TO THE GAME SELECTOR", 300, 400);
    text("PRESS 3 TO RETURN TO THE MAIN MENU", 300, 450);
    if(key1==true){
      hasStarted=2;
     
    }
    if(key2==true){
      hasStarted=1;
    }
    if(key3==true){
      hasStarted=0;
    }
  }
  if(hasStarted>=3 && gameMode==6 && fakeTimeLoss==true){
    textSize(20);
    if(score>moveHighScore){
      moveHighScore=score;
    }
    text("You took too long to take a shot.", 300, 100);
    text("You lose.", 300, 150);
    text("Your average score was "+skill, 300, 200);
    text("Your total score was "+score, 300, 250);
    text("Your high score is "+moveHighScore, 300, 300);
    textSize(30);
    text("PRESS 1 TO PLAY AGAIN", 300, 350);
    text("PRESS 2 TO RETURN TO THE GAME SELECTOR", 300, 400);
    text("PRESS 3 TO RETURN TO THE MAIN MENU", 300, 450);
    if(key1==true){
      hasStarted=2;
     
    }
    if(key2==true){
      hasStarted=1;
    }
    if(key3==true){
      hasStarted=0;
    }
  }
  if(hasStarted==2 && gameMode == 7){
    textSize(30);
    text("RULES:", 300, 100);
    textSize(20);
    text("You must keep your mouse on the target.", 300, 200);
    text("If you ever leave the target, you lose.", 300, 250);
    text("If you ever click, you lose.", 300, 300);
    textSize(30);
    text("CLICK TO START", 300, 400);
    x=mouseX;
    y=mouseY;
    score=0;
    untrackLoss=false;
  }
  if(hasStarted==3 && gameMode == 7 && untrackLoss==false){
    circle(x,y,350);
    basicTimer-=1;
    moveTimer-=1;
    if(moveTimer<=0 || (ogx>2 && ogy>2)){
      ogx=random(0,3);
      ogy=random(0,3);
      moveTimer=random(10,30);
    }
    score+=1;
    if(ogx<=1){
      x-=width/360;
    }
    if(ogx>1 && ogx<=2){
      x+=width/360;
    }
    if(ogy<=1){
      y+=height/360;
    }
    if(ogy<=2 && ogy>1){
      y-=height/360;
    }
    
    if(ogy<=2 && ogx<=2){
      if(ogy<=1){
        y-=height/180;        
      }
      else{
        y+=height/180;
      }
      if(ogx<=1){
        x+=width/180;
       
      }
      else{
        x-=width/180;
      }
      }
    
    pythagorasA=mouseX-x;
    pythagorasB=mouseY-y;
    pythagorasA=pow(pythagorasA,2);
    pythagorasB=pow(pythagorasB,2);
    pythagorasC=sqrt(pythagorasA+pythagorasB);
    if(pythagorasC>175){
    untrackLoss=true;
  }
  if(x<0){
      ogx=0.9;
    }
  if(x>width){
      ogx=1.9;
    }
  if(y<0){
     ogy=1.9; 
    }
  if(y>height){
     ogy=0.9;
    }
}
  
  if(hasStarted>=4 && gameMode==7 && untrackLoss == false){
    if(score>trackHighScore){
      trackHighScore=score;
    }
    textSize(20);
    text("You clicked.", 300, 100);
    text("You lose.", 300, 150);
    text("Your score was "+score, 300, 200);
    text("Your high score is "+trackHighScore, 300, 250);
    textSize(30);
    text("PRESS 1 TO PLAY AGAIN", 300, 350);
    text("PRESS 2 TO RETURN TO THE GAME SELECTOR", 300, 400);
    text("PRESS 3 TO RETURN TO THE MAIN MENU", 300, 450);
    if(key1==true){
      hasStarted=2;
     
    }
    if(key2==true){
      hasStarted=1;
    }
    if(key3==true){
      hasStarted=0;
    }
  }
  if(hasStarted>=3 && gameMode==7 && untrackLoss==true){
    if(score>trackHighScore){
      trackHighScore=score;
    }
    textSize(20);
    text("You took the mouse off the target.", 300, 100);
    text("You lose.", 300, 150);
    text("Your score was "+score, 300, 200);
    text("Your high score is "+trackHighScore, 300, 250);
    textSize(30);
    text("PRESS 1 TO PLAY AGAIN", 300, 350);
    text("PRESS 2 TO RETURN TO THE GAME SELECTOR", 300, 400);
    text("PRESS 3 TO RETURN TO THE MAIN MENU", 300, 450);
    if(key1==true){
      hasStarted=2;
     
    }
    if(key2==true){
      hasStarted=1;
    }
    if(key3==true){
      hasStarted=0;
    }
  }
  
  
  
  if((hasStarted>=3)&&(gameMode==8) && basicTimeLoss==false && missLoss==false) {
    
    if(basicTimer<0){
      basicTimeLoss=true;
    }
    background(random(0,255),random(0,255),random(0,255));
    fill(#FFFFFF);
    circle(x, y, 275);
    circle(x, y, 250);
    fill(#161617);
    circle(x, y, 225);
    circle(x, y, 200);
    fill(#0081FF);
    circle(x, y, 175);
    circle(x, y, 150);
    fill(#FF0100);
    circle(x, y, 125);
    circle(x, y, 100);
    fill(#FFFF00);
    circle(x, y, 75);
    circle(x, y, 50);
    circle(x, y, 25);
    basicTimer-=1;

    
    
    for (int i=0; i<CirclesArrayList.size(); i++) {
      Circles Part = CirclesArrayList.get(i);
      if (hasStarted>2 ) {

        Part.display();
      }
    }
    if (mousepressed==true&&hasStarted>=3) {
    file.play();
      if(stupidBugFixer==1){
        CirclesArrayList.add(new Circles(mouseX, mouseY));
      }
      shots+=1;
      if(shots==1 && stupidBugFixer==0){
        score=0;
        shots=0;
        stupidBugFixer=1;
        basicTimer=40;
      }

      float AvalX = mouseX - x;
      float AvalY = mouseY - y;

      float AvalXPow = pow(AvalX, 2);
      float AvalYPow = pow(AvalY, 2);

      float AvalHPow  = AvalXPow + AvalYPow;

      float AvalH = sqrt(AvalHPow);
      
      float targetMin = 0;
      float targetMax = 25/2;
      int round = 0;
      boolean loopdone = false;
      
      while (round<=11 && loopdone == false) {
        println(round);
        if (AvalH>=targetMin*round&&AvalH<targetMax*round) {
          score+=12-round;
          if(round==1){
            score-=1;
            
          }
          loopdone = true;
        } else {
          round+=1;
          
        }
        if(round>=12){
          misses+=1;
          loopdone = true;
          file.stop();
        }
      }
      
      
      if(misses==25){
        missLoss=true;
      }
      x=random(0, width);
      y=random(0, height);
      mousepressed=false;
      basicTimer=40;
      skill=(score/shots);
    }
    textSize(35);
    text("Score: "+skill, 100, 100);
    
  }
  if(hasStarted==2 && gameMode==8){
    textSize(30);
    text("RULES:", 300, 100);
    textSize(20);
    text("Each time you click, you will score points based on", 300, 200);
    text("how close you clicked to the center.", 300, 250);
    text("Your score is the average score of your shots.", 300, 300);
    text("After the game ends, you will also know the sum of your shots", 300, 350);
    text("The game will end after you take more than 1/2 a second to take a shot or you miss 25 times.", 300, 400);
    text("CLICK TO START", 300, 450);
    basicTimer=40;
    basicTimeLoss=false;
    stupidBugFixer=0;
    CirclesArrayList.clear();
    shots=0;
    score=0;
    skill=0;
    misses=0;
  }
  if(hasStarted>=3 && gameMode == 8 && missLoss==true){
    textSize(20);
    if(score>seizeHighScore){
      seizeHighScore=score;
    }
    text("You missed 25 shots.", 300, 100);
    text("You lose.", 300, 150);
    text("Your average score was "+skill, 300, 200);
    text("Your total score was "+score, 300, 250);
    text("Your high score is "+seizeHighScore, 300, 300);
    text("PRESS 1 TO PLAY AGAIN", 300, 450);
    text("PRESS 2 TO RETURN TO THE GAME SELECTOR", 300, 500);
    text("PRESS 3 TO RETURN TO THE MAIN MENU", 300, 550);
    if(key1==true){
      hasStarted=2;
     
    }
    if(key2==true){
      hasStarted=1;
      
    }
    if(key3==true){
      hasStarted=0;
    }
  }
  if(hasStarted>=3&&gameMode==8 && basicTimeLoss==true){
    if(score>seizeHighScore){
      classicHighScore=score;
    }
    textSize(20);
    text("You took more than half a second to take a shot.", 300, 100);
    text("You lose.", 300, 150);
    text("Your average score was "+skill, 300, 200);
    text("Your total score was "+score, 300, 250);
    text("Your high score is "+seizeHighScore, 300, 300);
    text("PRESS 1 TO PLAY AGAIN", 300, 450);
    text("PRESS 2 TO RETURN TO THE GAME SELECTOR", 300, 500);
    text("PRESS 3 TO RETURN TO THE MAIN MENU", 300, 550);
    if(key1==true){
      hasStarted=2;
     
    }
    if(key2==true){
      hasStarted=1;
      
    }
    if(key3==true){
      hasStarted=0;
    }
  }
  if(hasStarted==2 && gameMode==9){
    textSize(30);
    text("RULES:", 300, 100);
    text("CLICK TO START", 300, 450);
    textSize(20);
    text("Player 1 will use the mouse and attempt to click the target.", 300, 200);
    text("Player 2 will use the WASD keys to move the target.", 300, 250);
    text("Player 1 will win if they click the target 10 times or Player 2 moves the target offscreen.", 300, 300);
    text("Player 2 will win if Player 1 ever misses or takes more than 1.5 seconds to take a shot.", 300, 350);
    basicTimer=120;
    score=0;
    missLoss=false;
    p2cheat=false;
    P1duelTimeLoss=false;
    x=random(0,width);
    y=random(0,height);
      
  }
  if(hasStarted>=3 && gameMode==9 && missLoss==false && score<10 && p2cheat==false && P1duelTimeLoss==false){
    
    if(basicTimer<0){
      P1duelTimeLoss=true;
    }
   
    circle(x,y,250);
    basicTimer-=1;
    
    if(mousePressed==true){
      
      pythagorasA=mouseX-x;
      pythagorasB=mouseY-y;
      pythagorasA=pow(pythagorasA,2);
      pythagorasB=pow(pythagorasB,2);
      pythagorasC=sqrt(pythagorasA+pythagorasB);
      if(pythagorasC<=150){
        score+=1;
        x=random(0,width);
        y=random(0,height);
        basicTimer=90;
        file.play();
      }
      else{
        if(hasStarted>=4){
          missLoss=true;
        }
      }
      mousePressed=false;
    }
    if(up==true){
      y-=10;
    }
    if(down==true){
      y+=10;
    }
    if(left==true){
      x-=10;
    }
    if(right==true){
      x+=10;
    }
    if(x<0 || x>width || y<0 || y>height){
      p2cheat=true;
    }
  }
  if(hasStarted>=3 && gameMode==9 && missLoss==true && score<10 && P1duelTimeLoss==false && p2cheat == false){
    textSize(20);
    text("Player 1, you missed the target.", 300, 100);
    text("You lose.", 300, 150);
    text("Player 2 wins.", 300, 200);
    text("PRESS 1 TO PLAY AGAIN", 300, 300);
    text("PRESS 2 TO RETURN TO THE GAME SELECTOR", 300, 350);
    text("PRESS 3 TO RETURN TO THE MAIN MENU", 300, 400);
    if(key1==true){
      hasStarted=2;
     
    }
    if(key2==true){
      hasStarted=1;
      
    }
    if(key3==true){
      hasStarted=0;
    }
  }
  if(hasStarted>=3 && gameMode==9 && missLoss==false && score<10 && P1duelTimeLoss==true && p2cheat == false){
    textSize(20);
    text("Player 1, you took too long to shoot.", 300, 100);
    text("You lose.", 300, 150);
    text("Player 2 wins.", 300, 200);
    text("PRESS 1 TO PLAY AGAIN", 300, 300);
    text("PRESS 2 TO RETURN TO THE GAME SELECTOR", 300, 350);
    text("PRESS 3 TO RETURN TO THE MAIN MENU", 300, 400);
    if(key1==true){
      hasStarted=2;
     
    }
    if(key2==true){
      hasStarted=1;
      
    }
    if(key3==true){
      hasStarted=0;
    }
  }
  if(hasStarted>=3 && gameMode==9 && missLoss==false && score<10 && P1duelTimeLoss==false && p2cheat == true){
    textSize(20);
    text("Player 2, you moved the target offscreen.", 300, 100);
    text("You lose.", 300, 150);
    text("Player 1 wins.", 300, 200);
    text("PRESS 1 TO PLAY AGAIN", 300, 300);
    text("PRESS 2 TO RETURN TO THE GAME SELECTOR", 300, 350);
    text("PRESS 3 TO RETURN TO THE MAIN MENU", 300, 400);
    if(key1==true){
      hasStarted=2;
     
    }
    if(key2==true){
      hasStarted=1;
      
    }
    if(key3==true){
      hasStarted=0;
    }
  }
  if(hasStarted>=3 && gameMode==9 && missLoss==false && score>=10 && P1duelTimeLoss==false && p2cheat == false){
    textSize(20);
    text("Player 1, you hit the target 10 times.", 300, 100);
    text("You win.", 300, 150);
    text("Player 2 loses.", 300, 200);
    text("PRESS 1 TO PLAY AGAIN", 300, 300);
    text("PRESS 2 TO RETURN TO THE GAME SELECTOR", 300, 350);
    text("PRESS 3 TO RETURN TO THE MAIN MENU", 300, 400);
    if(key1==true){
      hasStarted=2;
     
    }
    if(key2==true){
      hasStarted=1;
      
    }
    if(key3==true){
      hasStarted=0;
    }
  }
  if(hasStarted==2 && gameMode==10){
    textSize(30);
    text("RULES:", 300, 100);
    text("CLICK TO START", 300, 400);
    textSize(20);
    text("There will be 4 targets.", 300, 200);
    text("You must click the red one first, the green one second, the blue one third, and the yellow one fourth.", 300, 250);
    text("You have 1 second to click the red target and 1/2 second to click each subsequent target.", 300, 300);
    basicTimer=60;
    x=random(0,width);
    y=random(0,height);
    newx=random(0,width);
    newy=random(0,height);
    newnewx=random(0,width);
    newnewy=random(0,height);
    newnewnewx=random(0,width);
    newnewnewy=random(0,height);
    sequence=1;
    score=0;
    sequenceScore=0;
    basicTimeLoss=false;
    oneGone=false;
    twoGone=false;
    threeGone=false;
  }
  if(hasStarted>=3 && gameMode==10 && basicTimeLoss==false){
    basicTimer-=1;
    if(oneGone==false){
     fill(255,0,0);
    circle(x,y,200);
    
    }
    if(twoGone==false){
    
    fill(0,255,0);
    circle(newx,newy,200);
    }
    if(threeGone==false){
      fill(0,0,255);
    circle(newnewx,newnewy,200);
    }
    fill(255,255,0);
    circle(newnewnewx,newnewnewy,200);
    if(basicTimer<0){
      basicTimeLoss=true;
    }
    
    if(mousePressed==true){
      
      
      
      if(sequence==1){
         pythagorasA=mouseX-x;
         pythagorasB=mouseY-y;
         pythagorasA=pow(pythagorasA,2);
         pythagorasB=pow(pythagorasB,2);
         pythagorasC=sqrt(pythagorasA+pythagorasB);
        if(pythagorasC<=100){
          sequence+=1;
          oneGone=true;
          basicTimer=40;
          score+=1;
          file.play();
        }
      }
       if(sequence==2){
         pythagorasA=mouseX-newx;
         pythagorasB=mouseY-newy;
         pythagorasA=pow(pythagorasA,2);
         pythagorasB=pow(pythagorasB,2);
         pythagorasC=sqrt(pythagorasA+pythagorasB);
         if(pythagorasC<=100){
           sequence+=1;
           twoGone=true;
           basicTimer=40;
           score+=1;
           file.play();
         }
      }
      
      if(sequence==3){
         pythagorasA=mouseX-newnewx;
         pythagorasB=mouseY-newnewy;
         pythagorasA=pow(pythagorasA,2);
         pythagorasB=pow(pythagorasB,2);
         pythagorasC=sqrt(pythagorasA+pythagorasB);
         if(pythagorasC<=100){
           sequence+=1;
           threeGone=true;
           basicTimer=40;
           score+=1;
           file.play();
         }
      }
      if(sequence==4){
         pythagorasA=mouseX-newnewnewx;
         pythagorasB=mouseY-newnewnewy;
         pythagorasA=pow(pythagorasA,2);
         pythagorasB=pow(pythagorasB,2);
         pythagorasC=sqrt(pythagorasA+pythagorasB);
         if(pythagorasC<=100){
           file.play();
           sequence=1;
           x=random(0,width);
           y=random(0,height);
           newx=random(0,width);
           newy=random(0,height);
           newnewx=random(0,width);
           newnewy=random(0,height);
           newnewnewx=random(0,width);
           newnewnewy=random(0,height);
           oneGone=false;
           twoGone=false;
           threeGone=false;
           basicTimer=60;
           score+=1;
           sequenceScore+=1;
         }
      }
       mousePressed=false;
    }
    
  }
  if(gameMode==10 && hasStarted>=3 && basicTimeLoss==true){
    textSize(20);
    if(score>sequenceHighScore){
      sequenceHighScore=score;
    }
    text("You didn't click the right circle in time.", 300, 100);
    text("You lose.", 300, 150);
    text("Your score was "+score, 300, 200);
    text("You completed "+sequenceScore, 300, 250);
    text("sequences.", 460, 250);
    text("Your high score is "+sequenceHighScore, 300, 300);
    text("PRESS 1 TO PLAY AGAIN", 300, 400);
    text("PRESS 2 TO RETURN TO THE GAME SELECTOR", 300, 450);
    text("PRESS 3 TO RETURN TO THE MAIN MENU", 300, 500);
    if(key1==true){
      hasStarted=2;
     
    }
    if(key2==true){
      hasStarted=1;
      
    }
    if(key3==true){
      hasStarted=0;
    }
  }
  if(hasStarted==2 && gameMode==11){
    textSize(30);
    text("RULES:", 300, 100);
    text("CLICK TO START", 300, 350);
    textSize(20);
    text("You must move the crosshair to the target.", 300, 200);
    text("You have 1 second to hit the target.", 300, 250);
    x=random(0,width);
    y=random(0,height);
    oldMouseX=mouseX;
    oldMouseY=mouseY;
    basicTimer=60;
    basicTimeLoss=false;
    score=0;
  }
  if(hasStarted>=3 && gameMode==11 && basicTimeLoss==false){
   if(basicTimer<0){
     basicTimeLoss=true;
   }
    textSize(40);
    text("SCORE: "+score, 100, 100);
    noCursor();
    pushMatrix();
    fill(#FFFFFF);
    circle(x,y,200);
    popMatrix();
    fill(255,0,0);
    rect(width/2-10,height/2-3,20,6);
    rect(width/2-3,height/2-10,6,20);
    basicTimer-=1;
    for(float i=abs(mouseX-width/2); i>0; i-=1){
        if(mouseX>width/2){
          x-=1;
        }
        if(mouseX<width/2){
          x+=1;
        }
      }
      for(float i=abs(mouseY-height/2); i>0; i-=1){
        if(mouseY>height/2){
          y-=1;
        }
        if(mouseY<height/2){
          y+=1;
        }
      }
       robot.mouseMove(width/2,height/2);
     oldMouseX=mouseX;
     oldMouseY=mouseY;
     
     if(mousePressed==true){

      pythagorasA=x-width/2;
      pythagorasB=y-height/2;
      pythagorasA=pow(pythagorasA,2);
      pythagorasB=pow(pythagorasB,2);
      pythagorasC=sqrt(pythagorasA+pythagorasB);
      if(pythagorasC<106){
        x=random(0,width);
        y=random(0,height);
        score+=1;
        basicTimer=60;
        file.play();
      }
      mousePressed=false;
    }
    }
    
    if(gameMode==11 && hasStarted>=3 && basicTimeLoss==true){
      if(score>fpsHighScore){
        fpsHighScore=score;
      }
      cursor(ARROW);
      textSize(20);
      text("You took too long to make a shot.", 300, 100);
      text("You lose.",300,150);
      text("Your final score was "+score,300,200);
      text("Your high score is "+fpsHighScore,300,250);
      text("PRESS 1 TO PLAY AGAIN", 300, 350);
      text("PRESS 2 TO RETURN TO THE GAME SELECTOR", 300, 400);
      text("PRESS 3 TO RETURN TO THE MAIN MENU", 300, 450);
      if(key1==true){
        hasStarted=2;
     
      }
      if(key2==true){
        hasStarted=1;
      file = new SoundFile(this, "85591__jankoehl__hit-wood10.wav");
      }
      if(key3==true){
        hasStarted=0;
        file = new SoundFile(this, "85591__jankoehl__hit-wood10.wav");
      }
    }
 if(hasStarted==2 && gameMode==13){ 
textSize(30); 
text("RULES:", 300, 100); 
text("CLICK TO START", 300, 450); 
textSize(20); 
text("There will be five targets.", 300, 200); 
text("These targets will advance towards the right edge of the screen.",300,250); 
text("If any of these ever go offscreen or you miss 25 shots, you will lose.", 300, 300); 
text("Whenever you click a target, in addition to gaining points, you will reset its position.", 300, 350); 
x=random(0,width/4); 
y=random(0,height); 
newx=random(0,width/4); 
newy=random(0,height);
newnewx=random(0,width/4);
newnewy=random(0,height); 
newnewnewx=random(0,width/4); 
newnewnewy=random(0,height);
newnewnewnewx=random(0,width/4);
newnewnewnewy=random(0,height); 
score=0; 
basicTimeLoss=false;
missLoss=false; 
shots=0;
} 
if(hasStarted>=3 && gameMode==13 && basicTimeLoss==false && missLoss==false){ 
  if(shots>=25){
    missLoss=true;
  }
  fill(#FFFFFF); 
  circle(x,y,200); 
  circle(newx,newy,200); 
  circle(newnewx,newnewy,200); 
  circle(newnewnewx,newnewnewy,200); 
  circle(newnewnewnewx,newnewnewnewy,200); 
  x+=7;
  newx+=7;
  newnewx+=7; 
  newnewnewx+=7;
  newnewnewnewx+=7; 
  if(mousePressed==true){ 
    file.play();
    pythagorasA=mouseX-newnewnewnewx;
    pythagorasB=mouseY-newnewnewnewy;
    pythagorasA=pow(pythagorasA,2);
    pythagorasB=pow(pythagorasB,2);
    pythagorasC=sqrt(pythagorasA+pythagorasB); 
    if(pythagorasC<=100){ 
      score+=1;
      newnewnewnewx=random(0,width/4); 
      newnewnewnewy=random(0,height);



} 
else
{ 
  pythagorasA=mouseX-newnewnewx;
  pythagorasB=mouseY-newnewnewy;
  pythagorasA=pow(pythagorasA,2);
  pythagorasB=pow(pythagorasB,2);
  pythagorasC=sqrt(pythagorasA+pythagorasB); 
  if(pythagorasC<=100){ 
    score+=1; 
    newnewnewx=random(0,width/4); 
    newnewnewy=random(0,height);

} 
else
{ 
  pythagorasA=mouseX-newnewx;
  pythagorasB=mouseY-newnewy;
  pythagorasA=pow(pythagorasA,2);
  pythagorasB=pow(pythagorasB,2);
  pythagorasC=sqrt(pythagorasA+pythagorasB);
  if(pythagorasC<=100){ 
    score+=1;
    newnewx=random(0,width/4);
    newnewy=random(0,height);

} 
else
{ 
  pythagorasA=mouseX-newx; 
  pythagorasB=mouseY-newy;
  pythagorasA=pow(pythagorasA,2);
  pythagorasB=pow(pythagorasB,2);
  pythagorasC=sqrt(pythagorasA+pythagorasB); 
  if(pythagorasC<=100){ 
    score+=1;
    newx=random(0,width/4);
    newy=random(0,height);

} 
else

{
  pythagorasA=mouseX-x; 
  pythagorasB=mouseY-y;
  pythagorasA=pow(pythagorasA,2); 
  pythagorasB=pow(pythagorasB,2); 
  pythagorasC=sqrt(pythagorasA+pythagorasB); 
  if(pythagorasC<=100){ 
    score+=1;
    x=random(0,width/4);
    y=random(0,height);

} 
else{
shots+=1; 
file.stop();
} 
} 
} 
} 
} mousePressed=false;
} if(x>width+100 || newx>width+100 || newnewx>width+100 || newnewnewx>width+100 || newnewnewnewx>width+100)
{ 
basicTimeLoss=true; 
} 
if(shots>=25){ 
missLoss=true; 
} 
} if(hasStarted>=3 && gameMode==13 && basicTimeLoss==false && missLoss == true)
{ 
  if(score>defenseHighScore){
    defenseHighScore=score;
  }
textSize(20); 
text("You missed 25 shots.", 300, 100);
text("You lose.", 300, 150);
text("Your final score was "+score, 300, 200); 
text("Your high score is "+defenseHighScore, 300, 250); 
text("PRESS 1 TO PLAY AGAIN", 300, 350);
  text("PRESS 2 TO RETURN TO THE GAME SELECTOR", 300, 400);
    text("PRESS 3 TO RETURN TO THE MAIN MENU", 300, 450);
      if(key1==true){
        hasStarted=2;
     
      }
      if(key2==true){
        hasStarted=1;
      
      }
      if(key3==true){
        hasStarted=0;
      }
}
if(hasStarted>=3 && gameMode==13 && basicTimeLoss==true){
  if(score>defenseHighScore){
    defenseHighScore=score;
  }
  textSize(20);
  text("You let a target past.",300,100);
  text("You lose.",300,150);
  text("Your final score was "+score, 300, 200); 
text("Your high score is "+defenseHighScore, 300, 250); 
text("PRESS 1 TO PLAY AGAIN", 300, 350);
  text("PRESS 2 TO RETURN TO THE GAME SELECTOR", 300, 400);
    text("PRESS 3 TO RETURN TO THE MAIN MENU", 300, 450);
      if(key1==true){
        hasStarted=2;
     
      }
      if(key2==true){
        hasStarted=1;
      
      }
      if(key3==true){
        hasStarted=0;
      }
}
  if(hasStarted==2 && gameMode == 14){
  textSize(30);
  text("RULES:",300,100);
  text("CLICK TO START",300,400);
  textSize(20);
  text("The target is the same color as the target.",300,200);
  text("If you miss 25 shots, you lose.",300,250);
  text("If you don't hit the target in 1/2 a second, you lose.",300,300);
  randomR=random(0,255);
  randomG=random(0,255);
  randomB=random(0,255);
  x=random(0,width);
  y=random(0,height);
  basicTimeLoss=false;
  score=0;
  basicTimer=40;
  }
  if(hasStarted>=3 && gameMode==14 && basicTimeLoss==false){
    if(basicTimer<0){
      basicTimeLoss=true;
    }
  background(randomR,randomG,randomB);
  fill(randomR,randomG,randomB);
  circle(x,y,200);
  basicTimer-=1;
  if(mousePressed==true){
    pythagorasA=mouseX-x;
    pythagorasB=mouseY-y;
    pythagorasA=pow(pythagorasA,2);
    pythagorasB=pow(pythagorasB,2);
    pythagorasC=sqrt(pythagorasA+pythagorasB);
    if(pythagorasC<=100){
    score+=1;
    file.play();
    basicTimer=40;
    randomR=random(0,255);
    randomG=random(0,255);
    randomB=random(0,255);
    x=random(0,width);
    y=random(0,height);
  }
  mousePressed=false;
  }
  }
  if(hasStarted>=3 && gameMode==14 && basicTimeLoss==true){
    if(score>camoHighScore){
      camoHighScore=score;
    }
    textSize(20);
    fill(#FFFFFF);
    text("You took too long to hit the target.",300,100);
    text("You lose.",300,150);
    text("Your score was "+score,300,200);
    text("Your high score is "+camoHighScore,300,250);
    textSize(30);
    text("PRESS 1 TO PLAY AGAIN", 300, 350);
    text("PRESS 2 TO RETURN TO THE GAME SELECTOR", 300, 400);
    text("PRESS 3 TO RETURN TO THE MAIN MENU", 300, 450);
      if(key1==true){
        hasStarted=2;
     
      }
      if(key2==true){
        hasStarted=1;
      
      }
      if(key3==true){
        hasStarted=0;
      }
  }
  if(hasStarted==2 && gameMode == 12){
    textSize(30);
    text("RULES:",300,100);
    text("CLICK TO START",300,300);
    textSize(20);
    text("Click as fast as you can. You have 5 seconds.",300,200);
    basicTimer=300;
    clicks=0;
    basicTimeLoss=false;
    stupidBugFixer=0;
  }
  if(hasStarted>=3 && gameMode==12 && basicTimeLoss==false){
    basicTimer-=1;
    if(mousePressed == true && hasStarted>=4){
      clicks+=1;
      mousePressed = false;
    }
    if(basicTimer<0){
      basicTimeLoss=true;
    }
  }
  if(hasStarted>=3 && gameMode==12 && basicTimeLoss==true){
    if(stupidBugFixer==0){
     clicks=clicks/5;
     stupidBugFixer=1;
    }
    textSize(20);
    text("The test is over.",300,100);
    text("You averaged "+clicks,300,150);
    text("clicks per second.",450,150);
    text("PRESS 1 TO PLAY AGAIN", 300, 250);
    text("PRESS 2 TO RETURN TO THE GAME SELECTOR", 300, 300);
    text("PRESS 3 TO RETURN TO THE MAIN MENU", 300, 350);
      if(key1==true){
        hasStarted=2;
     
      }
      if(key2==true){
        hasStarted=1;
      
      }
      if(key3==true){
        hasStarted=0;
      }
  }
  
}




  
  



void keyPressed() {
  if (key=='w') {
    up=true;
  }
  if (key=='s') {
    down=true;
  }
  if (key=='d') {
    right=true;
  }
  if (key=='a') {
    left=true;
  }
  if (key=='1') {
    key1=true;
  }
  if (key=='2') {
    key2=true;
  }
  if (key=='3') {
    key3=true;
  }
}
void keyReleased() {
  if (key=='w') {
    up=false;
  }
  if (key=='s') {
    down=false;
  }
  if (key=='d') {
    right=false;
  }
  if (key=='a') {
    left=false;
  }
  if (key=='1') {
    key1=false;
  }
  if (key=='2') {
    key2=false;
  }
  if (key=='3') {
    key3=false;
  }
}

void mousePressed() {
  
  
  if (hasStarted>=0) {
    mousepressed = true;
    print(mousepressed);
  }
  if(hasStarted==0){
    file.play();
  pythagorasA=mouseX-width/10;
  pythagorasB=mouseY-height/10;
  pythagorasA=pow(pythagorasA,2);
  pythagorasB=pow(pythagorasB,2);
  pythagorasC=sqrt(pythagorasA+pythagorasB);
  if(pythagorasC<=50){
    exit();
  }
  else{
    pythagorasA=mouseX-width/10;
    pythagorasB=mouseY-height/10*9;
    pythagorasA=pow(pythagorasA,2);
    pythagorasB=pow(pythagorasB,2);
    pythagorasC=sqrt(pythagorasA+pythagorasB);
    if(pythagorasC<=50){
      gameMode=0;
      hasStarted+=2;
    }
  }
    
    
  }
  if(hasStarted==1){
  file.play();
  pythagorasA=mouseX-width/6;
  pythagorasB=mouseY-height/4;
  pythagorasA=pow(pythagorasA,2);
  pythagorasB=pow(pythagorasB,2);
  pythagorasC=sqrt(pythagorasA+pythagorasB);
  if(pythagorasC<=75){
    gameMode=1;
  }
  else{
    pythagorasA=mouseX-width/3;
    pythagorasB=mouseY-height/4;
    pythagorasA=pow(pythagorasA,2);
    pythagorasB=pow(pythagorasB,2);
    pythagorasC=sqrt(pythagorasA+pythagorasB);
    if(pythagorasC<=75){
    gameMode=2;
  }
    else{
      pythagorasA=mouseX-width/2;
      pythagorasB=mouseY-height/4;
      pythagorasA=pow(pythagorasA,2);
      pythagorasB=pow(pythagorasB,2);
      pythagorasC=sqrt(pythagorasA+pythagorasB);
      if(pythagorasC<=75){
      gameMode=3;
      }
      else{
        pythagorasA=mouseX-width/3*2;
        pythagorasB=mouseY-height/4;
        pythagorasA=pow(pythagorasA,2);
        pythagorasB=pow(pythagorasB,2);
        pythagorasC=sqrt(pythagorasA+pythagorasB);
        if(pythagorasC<=75){
        gameMode=4;
        }
        else{
          pythagorasA=mouseX-width/6*5;
          pythagorasB=mouseY-height/4;
          pythagorasA=pow(pythagorasA,2);
          pythagorasB=pow(pythagorasB,2);
          pythagorasC=sqrt(pythagorasA+pythagorasB);
          if(pythagorasC<=75){
            gameMode=5;
          
            
          }
          else{
            pythagorasA=mouseX-width/6*5;
            pythagorasB=mouseY-height/4*3;
            pythagorasA=pow(pythagorasA,2);
            pythagorasB=pow(pythagorasB,2);
            pythagorasC=sqrt(pythagorasA+pythagorasB);
            if(pythagorasC<=75){
              hasStarted= -1;
            }
            else{
               pythagorasA=mouseX-width/6;
               pythagorasB=mouseY-height/4*3;
               pythagorasA=pow(pythagorasA,2);
               pythagorasB=pow(pythagorasB,2);
               pythagorasC=sqrt(pythagorasA+pythagorasB);
               if(pythagorasC<=75){
               gameMode=6;
              }
              else{
                pythagorasA=mouseX-width/3;
                pythagorasB=mouseY-height/4*3;
                pythagorasA=pow(pythagorasA,2);
                pythagorasB=pow(pythagorasB,2);
                pythagorasC=sqrt(pythagorasA+pythagorasB);
                if(pythagorasC<=75){
                  gameMode=7;
                 }
                 else{
                  pythagorasA=mouseX-width/2;
                  pythagorasB=mouseY-height/4*3;
                  pythagorasA=pow(pythagorasA,2);
                  pythagorasB=pow(pythagorasB,2);
                  pythagorasC=sqrt(pythagorasA+pythagorasB);
                  if(pythagorasC<=75){
                    gameMode=8;
                  }
                  else{
                    pythagorasA=mouseX-width/3*2;
                    pythagorasB=mouseY-height/4*3;
                    pythagorasA=pow(pythagorasA,2);
                    pythagorasB=pow(pythagorasB,2);
                    pythagorasC=sqrt(pythagorasA+pythagorasB);
                    if(pythagorasC<=75){
                      gameMode=9;
                    }
                    else{
                      pythagorasA=mouseX-width/6;
                      pythagorasB=mouseY-height/2;
                      pythagorasA=pow(pythagorasA,2);
                      pythagorasB=pow(pythagorasB,2);
                      pythagorasC=sqrt(pythagorasA+pythagorasB);
                      if(pythagorasC<=75){
                        gameMode=10;
                      }
                      else{
                        pythagorasA=mouseX-width/3;
                        pythagorasB=mouseY-height/2;
                        pythagorasA=pow(pythagorasA,2);
                        pythagorasB=pow(pythagorasB,2);
                        pythagorasC=sqrt(pythagorasA+pythagorasB);
                        if(pythagorasC<=75){
                          gameMode=11;
                          file = new SoundFile(this, "doorslam-90782.mp3");
                        }
                        else{
                          pythagorasA=mouseX-width/3*2;
                          pythagorasB=mouseY-height/2;
                          pythagorasA=pow(pythagorasA,2);
                          pythagorasB=pow(pythagorasB,2);
                          pythagorasC=sqrt(pythagorasA+pythagorasB);
                          if(pythagorasC<=75){
                            gameMode=13;
                          }
                          else{
                             pythagorasA=mouseX-width/6*5;
                             pythagorasB=mouseY-height/2;
                             pythagorasA=pow(pythagorasA,2);
                             pythagorasB=pow(pythagorasB,2);
                             pythagorasC=sqrt(pythagorasA+pythagorasB);
                             if(pythagorasC<=75){
                               gameMode=14;
                             }
                             else{
                               pythagorasA=mouseX-width/2;
                               pythagorasB=mouseY-height/2;
                               pythagorasA=pow(pythagorasA,2);
                               pythagorasB=pow(pythagorasB,2);
                               pythagorasC=sqrt(pythagorasA+pythagorasB);
                               if(pythagorasC<=75){
                                 gameMode=12;
                               }
                               else{
                                 hasStarted-=1;
                                 file.stop();
                               }
                             }
                          }
                        }
                      }
                    }
                  }
                 }
               }
              }
            }
          }
        }
      }
    }
  }
  
  
  print(hasStarted);
  hasStarted+=1;
  }

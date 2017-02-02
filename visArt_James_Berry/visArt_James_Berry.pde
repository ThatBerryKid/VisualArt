///////////////////////////////////////////////////////////////
// VisArt
// JW.Berry/James W. Berry
//
//
// This program creates a visual using Sines and Cosines
// You can click and drag to change the vertical placement
// You can press the LEFT and RIGHT buttons to change the horizontal placement
//
//
// Parsons School for Design
// Core Lab: CT - Spring 2017
//
/////////////////////////////////////////////////////////////////
float rx=700/2;
float ry=random(50);
float rxx=700/2;
float rand;
float rand2;
int rdir;
float scal;
float amp;
PImage logo;

int t;
int tLim=4;
int time=1;

color rcol;

void setup() {
  size(700, 700);
  rcol=color(255);
  amp=100;
  rdir =1;
  logo = loadImage("JWBerry_fused_small_game.png");
  background(#FFEC7E, 10);
}

void draw() {
  if (tLim%20 <= 0) {
    amp = 200;
  } else {
    amp = 100;
  }
  image(logo, width-200, height-77, 200, 77);


  fill(rcol, 200);
  stroke(0, 50);
  rect(rx+rand, ry+rand2, 25, 25);


  scal+= .1;
  rand = sin(scal)*amp;
  //rx    = rxx+ rand;
  if (rdir==1) {
    rand2 = cos(scal)*amp;
  } else {
    rand2= -sin(scal)*amp;
  }
  if (mousePressed && mouseButton==LEFT) {
    ry=mouseY-50;
  }

  //time=millis()/1000;
  //if(time> = tLim){
  // tLim += 4;
  //}
  if (time<=150) {
    time+=1;
  }
  if (time>=151) {
    time=0;
    tLim+=44;
    ry=random(700);
        if (tLim>=height) {
          tLim=4;
        }
    rdir*=-1;
    rcol=color(random(200, 255), random(255), random(255));
  }

  rect(30, tLim, 40, 40);

  if (mousePressed && mouseButton==RIGHT) {
    background(#FFEC7E);
    rect(rx+rand, ry+rand2, 25, 25);
    rect(30, tLim, 40, 40);
  }
}

void keyPressed() {
  int k = keyCode;
  if (k == LEFT) {
    rx-=5;
  }
  if (k == RIGHT) {
    rx+=5;
  }
}
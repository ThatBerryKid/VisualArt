
float rx=300;
float ry=mouseY;
float rxx=300;
float rand;
float scal;

int t;
int tLim=4;
int time=1;

color rcol;

void setup() {
  size(600, 600);
  rcol=color(255);
}

void draw() {
  if(mousePressed){
  
  ry = mouseY-50;
  }
  //background(255);



  fill(rcol);
  rect(rx, ry, 25, 25);

  if (mousePressed) {
    scal+= .1;
    rand = sin(scal)*100;
    rx    = rxx + rand;
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
    tLim+=4;
    rcol=color(random(205), random(255), random(255));
  }




  rect(30, tLim, 40, 40);
}
//import com.hamoid.*;

//VideoExport videoExport;
float angle = 0.1;
int scalar = 50;
float speed = 0.1;

float angle2 = 0.02;
int scalar2 = 10;
float speed2 = 0.1;


void setup() {
  size(800, 800);
  colorMode(RGB);
  smooth();
  background(0);
  //videoExport = new VideoExport(this, "basic.mp4");
}

color from=color(200,50,1);
color co=from;

void draw() {
  fill(0, 0, 0, 10);
  rect(0, 0, 800, 800);
  stroke(random(0, 255), random(0, 255), random(0, 255));
  float x = 250 + sin(angle) * scalar;
  float y = 350 + cos(angle) * scalar;
  fill(255);
  ellipse(x, y, 50, 50);
  float x2 = 550 - sin(angle) * scalar;
  float y2 = 350 - cos(angle) * scalar;
  ellipse(x2, y2, 50, 50);
  float x3 = 400 - sin(angle2) * scalar2;
  float y3 = 500 - cos(angle2) * scalar2;
  ellipse(x3, y3, 10, 10);
  angle = angle + speed;
  angle2 = angle2 + speed2;
  strokeWeight(10);
  stroke(255);
  line(150, 150, 650, 150);
  strokeWeight(1);
  co=co+color(2,1,1);
  if(red(co)>255)
    co=co+color(-100,0,0);
  if(green(co)>200)
    co=co+color(0,-150,0);
  if(blue(co)>150)
    co=co+color(0,0,-150);
  fill(co);
  beginShape();
  curveVertex(200, 150);
  curveVertex(200, 150);
  curveVertex(300, 20);
  curveVertex(400, 20);
  curveVertex(500, 20);
  curveVertex(600, 150);
  curveVertex(600, 150);
  endShape();
  //videoExport.saveFrame();
}
Ball[] balls = new Ball[200];
PVector point;

void setup() {
  size(500, 500);
  point = new PVector(width/2,height/2);  //This PVector will be the point the balls interact with
  colorMode(HSB, 360, 100, 100);
  for (int i = 0; i < balls.length; i++) {
    balls[i] = new Ball();
  }
}
void draw() {
  background(0, 0, 100);
  for (int i = 0; i < balls.length; i++) {
    balls[i].display();
    balls[i].move();
    balls[i].edgeBounce();
    balls[i].ballCheck(point);  //call the ballCheck function, telling it to use the "point" PVector
  }
}


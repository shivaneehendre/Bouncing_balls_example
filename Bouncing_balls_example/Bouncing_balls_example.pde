Ball[] balls = new Ball[50];

void setup() {
  size(500, 500);
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
  }
}


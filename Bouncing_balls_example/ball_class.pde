class Ball {
  PVector loc, vel;
  int d;
  color c;

  Ball() {
    loc = new PVector(random(width), random(height));
    vel = PVector.random2D();
    d = 30;
    c = color(random(360), 100, 100);
  }

  void display() {
    fill(c, 100);
    stroke(c);
    strokeWeight(4);
    ellipse(loc.x, loc.y, d, d);
  }

  void move() {
    loc.add(vel);
  }
  //I made edgeBounce its own method in case I want to add other functionality when the balls hit the edge
  //Having this already pulled into its own function makes it easy to identify when balls hit the edge
  void edgeBounce() {
    if (loc.x > width) {
      vel.x = -abs(vel.x);
    } 
    if (loc.x < 0) {
      vel.x = abs(vel.x);
    }
    if (loc.y > height) {
      vel.y = -abs(vel.y);
    } 
    if (loc.y < 0) {
      vel.y = abs(vel.y);
    }
  }

  //As practice, I'm going to create a method that will indicate when the ball touches some point
  void ballCheck(PVector m) {  //I pass in one argument - a PVector that will be the point I check
    if (loc.dist(m) < d/2) {  //Check to see if the distance between the center of the circle and the PVector I'm checking is less than the radius
      c = color(random(360), 100, 100);  //Change the color randomly
    }
  }
}


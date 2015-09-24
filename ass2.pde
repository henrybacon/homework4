// I made the paddles respond to Mouse Y versus animation hope this is okay
class Paddle {
  float x, y;

  Paddle(float x) {
    this.x = x;
    this.y =y;
  }

  void draw(float y) {
    noStroke();
    fill(255);
    rect(x,this.y=y, 10, 40);
  }

  void move() {
    
    }
  }

class Ball {
  float x, y;
  float vx, vy;
  float size = 10;
  color c;

  Ball(float x, float y) {
    this.x = x;
    this.y = y;
    c = color(255);
    vx = random(4);
    vy = random(4);
  }

  void draw() {
    noStroke();
    fill(c);
    ellipse(x, y, size*2, size*2);
  }

  void move() {
    x += vx;
    y += vy;
    if (x < size || x > width-size) {
      vx = -vx;
    }
    if (y < size || y > height-size) {
      vy = -vy;
    }
  }
}

Ball b;
Paddle p;
Paddle p2;

void setup() {
  size(500, 500);
  colorMode(HSB); 
  b = new Ball(250,250);
  p = new Paddle(20);
  p2 = new Paddle(480);
}

void draw() {
  background(0);
  b.draw();
  b.move();
  p.draw(mouseY);
  p2.draw(mouseY-20);
}

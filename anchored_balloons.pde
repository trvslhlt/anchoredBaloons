//import processing.pdf.*;


Point[] points = new Point[0];
float rad = 400;
float colorJitter = 10;
void setup() {
  size(1000,700);
  //beginRecord(PDF,"anchored_circles.pdf");
  smooth();
  frameRate(5);
  background(255);
}

void draw() {
  for (int i = 0; i < points.length; i++) {
    points[i].jitter();
    points[i].display();
  }
  if (mousePressed) {
    Point p = new Point(mouseX, mouseY, random(5,rad));
    points = (Point[]) append(points,p);
  }
}

void mousePressed() {
  Point p = new Point(mouseX, mouseY, random(5,rad));
  points = (Point[]) append(points,p);
}

void keyPressed() {
  if(key == 'p') {
    //endRecord();
    if(looping) {
      noLoop();
    } else {
    loop();
    }
  }
}

  
  

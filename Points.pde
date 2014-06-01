
class Point {
  float anchorX;
  float anchorY;
  float arm;
  float iterArm;
  float diam;
  float c;
  float iterC;
  float finalX;
  float finalY;
  
  Point(float anchorX_, float anchorY_, float arm_) {
    anchorX = anchorX_;
    anchorY = anchorY_;
    arm = arm_;
    c = 255 - ((rad-arm)/rad)*255;
  }
  
  void jitter() {
    iterArm = random(0,arm);
    finalX = random(-iterArm,iterArm);
    finalY = (random(-1,1))*sqrt((arm*arm) - (finalX*finalX));
    finalX = anchorX + finalX;
    finalY = anchorY + finalY;
    iterC = c + random(-colorJitter,colorJitter);
    diam = sqrt(((finalX-anchorX)*(finalX-anchorX))+((finalY-anchorY)*(finalY-anchorY)))/2;
  }
  
  void display() {
      stroke(iterC);
      line(anchorX, anchorY, finalX, finalY);
      
      noStroke();
      fill(random(100)+iterC, random(100)+c, random(100)+c, iterC);
      ellipse(finalX, finalY, diam, diam);
  }
}
  
  

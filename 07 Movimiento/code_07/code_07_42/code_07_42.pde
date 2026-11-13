void setup() {
     size(1200, 1200);
     background(0);
     noStroke();
     translate(width/2, height/2);
     int pointCount = 12;
     int steps = 72;
     float outerRadius = width * 1.0;
     float innerRadiusFactor = 0.5;
     float innerRadius = outerRadius*innerRadiusFactor;
     float outerRadiusRatio = outerRadius/steps;
     float innerRadiusRatio = innerRadius/steps;
     float shadeRatio = 137.0/steps;
     float rotationRatio = 137.0/steps;
     
     for (int i=0; i<steps; i++) {
       stroke(255-shadeRatio*i, 100);
       fill(shadeRatio*i);
       noFill();
       pushMatrix();
       rotate(rotationRatio*i*PI/180);
       star(pointCount, outerRadius-outerRadiusRatio*i, innerRadius-innerRadiusRatio*i);
       popMatrix();
} }

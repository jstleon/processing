void setup() {
     size(700, 700);
     background(0);
     //presets
     int rows = 3;
     int cols = 3;
     float outerRadius = width/cols;
     // randomly generated
     int pointCount;
     int steps;
     float innerRadius;
     float outerRadiusRatio;
     float innerRadiusRatio;
     float shadeRatio;
     float rotationRatio;
     translate(outerRadius/2, outerRadius/2);
     for (int i=0; i<rows; i++) {
       for (int j=0; j<cols; j++) {
         pointCount = int(random(3, 21));
         steps = int(random(5, 21));
         innerRadius = outerRadius*random(.3, .13);
         outerRadiusRatio = outerRadius/steps;
         innerRadiusRatio = innerRadius/steps;
         float randCol = random(205, 255);
         shadeRatio = randCol/steps;
         rotationRatio = random(90, 300)/steps;
         pushMatrix();
         translate(outerRadius*j, outerRadius*i);
         for (int k=0; k<steps; k++) {
           fill(shadeRatio*k);
           stroke(randCol-shadeRatio*k, 100);
           pushMatrix();
           scale(.4);
           rotate(rotationRatio*k*PI/180);
           star(pointCount, outerRadius-outerRadiusRatio*k, innerRadius-innerRadiusRatio*k);
           popMatrix();
}
         popMatrix();
       }
} }

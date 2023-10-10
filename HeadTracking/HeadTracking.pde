import gab.opencv.*;
import processing.video.*;
import java.awt.Rectangle;

Capture cam;
OpenCV cv;

void setup() {
  size (640, 480);
  cam = new Capture(this);
  cv =new OpenCV(this, 640, 480);
  cv.loadCascade(OpenCV.CASCADE_FRONTALFACE);
  
  cam.start();
}

void draw() {
  if(cam.available()) 
    cam.read();
  image(cam, 0, 0);
  
  cv.loadImage(cam);
  Rectangle faces[] = cv.detect();
  
  stroke(#00FF00);
  noFill();
  for(int i = 0; i< faces.length; i++) {
    rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
  }
}

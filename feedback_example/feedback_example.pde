

PGraphics buffer;
float val=0;

void setup(){
  size(800,600);           // Size of Background/panel
  background(0);   //Color of Background, Black
  frameRate(30);    //Frame rate set at 30
  
  buffer = createGraphics(width, height, P2D);  
}

float angle;
float cosine;

void draw()
{          //Value at 10

  //Fade everything which is drawn
  noStroke();
  fill(0, 0, 0, 10);
  rect(0, 0, width, height);
  
  //Draw ellipses
  val+= 10;
  stroke(196,5,23);     //Stroke Color of the ellipse and rectangle/red
  noFill();               // No fill color for the ellipse
  println(mouseX);       // Print in the ellipse at mouseX position

  pushMatrix();
  translate(mouseX,mouseY);        //Translate the center of ellipse around mouseX, mouseY
  ellipseMode(CENTER);
  rotate(val);          //Rotate ellipse around the rising value of 10
  ellipse(0,0,100,200);   //size and position of ellipse
  popMatrix();

  //Draw rectangles in a buffer so they don't get faded
  if(second()%2 == 0)
  {
    cosine = cos(val);//You used angle here, but angle is not initialized anywhere...
    
    buffer.beginDraw();
    buffer.stroke(196,5,23); 
    buffer.noFill();
    buffer.translate(mouseX, mouseY);
    buffer.rotate(cosine);  
    buffer.translate(width/2, height/2);
    //Translating the the width and height, distance the rect. spins away from ellipse. 
    buffer.rectMode(CENTER);
    buffer.rect(0, 0, 115, 115);     //Rect. size and position
    buffer.endDraw();
  }

  image(buffer, 0, 0);
}


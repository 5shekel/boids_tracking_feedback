/*Main runner area
 * Matt Wetmore
 * Changelog
 * ---------
 * 12/14/09: Started work
 * 12/18/09: Reimplemented with BoidList class
 */

int initBoidNum = 5; //amount of boids to start the program with
BoidList flock1,flock2;
PGraphics buffer;

void setup()
{
  size(500,400,P2D);
  //create and fill the list of boids
  flock1 = new BoidList(initBoidNum,0);
  flock2 = new BoidList(100,255);

  buffer = createGraphics(width, height, P3D);  
}

void draw()
{
  //clear screen
  // background(205,100);

  fill(0,1);
  rect(0,0,width,height);
  

  buffer.beginDraw();
  buffer.noStroke();   
  buffer.fill(0,10);
  buffer.rect(0, 0, width, height);     //Rect. size and position
  buffer.fill(255,100);
  buffer.ellipse(mouseX,mouseY,30,30);
  buffer.ellipse(mouseX+150,mouseY+150,30,30);
  buffer.endDraw();
  image(buffer, 0, 0);

flock1.run();
  flock2.run();

  //smooth();

  //print framerate
  //println(frameRate); 
}


//this does nothing. saving until I implement
/*void keyPressed()
 {
 switch(key)
 {
 case 'q': aMod+=.5; break;
 case 'a': aMod-=.5; break;
 case 'w': sMod+=.5; break;
 case 's': sMod-=.5; break;
 case 'e': cMod+=.5; break;
 case 'd': cMod-=.5; break;
 default: return;
 }
 }*/



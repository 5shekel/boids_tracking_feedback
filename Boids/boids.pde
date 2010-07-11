import com.nootropic.processing.layers.*;

/*Main runner area
 * Matt Wetmore
 * Changelog
 * ---------
 * 12/14/09: Started work
 * 12/18/09: Reimplemented with BoidList class
 */

int initBoidNum = 5; //amount of boids to start the program with
BoidList flock1,flock2;

AppletLayers layers;

void setup()
{
  size(500,400,P3D);
  layers = new AppletLayers(this);
  mouseLayer m = new mouseLayer(this);
  layers.addLayer(m);

  //create and fill the list of boids
  flock1 = new BoidList(initBoidNum,0);
  flock2 = new BoidList(100,255);

}

void draw()
{

  fill(0,1);
  rect(0,0,width,height);
  flock1.run();
  flock2.run();

  //smooth();
}

void paint() {
  // This method MUST be present in your sketch for layers to be rendered!
  if (layers != null) {
    layers.paint(this);
  } 
  else {
    super.paint();
  }
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




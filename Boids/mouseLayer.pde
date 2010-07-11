class mouseLayer extends Layer {

  mouseLayer(PApplet parent) {
    super(parent); // This is necessary!
  }

  void draw() {
    background(0, 0); // clear the background every time, but be transparent
    noStroke();   
    fill(199,199,52,200);
    //rect(0, 0, width, height);     //Rect. size and position
    //fill(255,100);
    ellipse(mouseX,mouseY,30,30);
    ellipse(mouseX+150,mouseY+150,30,30);
  }

}



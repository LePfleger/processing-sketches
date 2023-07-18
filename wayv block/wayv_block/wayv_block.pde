//setup only run once
int size = 120;
int colorCounter = 1; 
boolean colorSwitch = true;

void setup() {
  size(800, 800, P3D);
}

//draw runs in a loop
void draw() {
  if (colorCounter > 254) {
    colorSwitch = false;
  } else if (colorCounter < 1) {
    colorSwitch = true;
  }

  if(colorSwitch) {
    colorCounter++;
  } else {
    colorCounter--;
  }
  //color (R;G;B) 0-255
  color backgroundColor = color(0);
  background(backgroundColor);

  translate(width/2, height/2);
  rotateX((float)frameCount / 50);
  box(size, size, size);
  fill(187, colorCounter, colorCounter + 111);
  
  rotateY((float)frameCount / 50);
  translate(width/4, height/4);
  box(size, size, size);
}

public void setup() {
  size(500,500);
  background(0,0,0);
  rectMode(CENTER);
}

public void draw() {
  fill(250,250,250);
  fractal(250,250,200);
  delay(25);
}

public void fractal(float x, float y, float size) {
    fill((int)(Math.random() * 256),(int)(Math.random() * 256),(int)(Math.random() * 256));
    rect(x,y,size,size);
  if (size > 5) {
    fractal(x - size, y, size * 0.5);
    fractal(x + size, y, size * 0.5);
    fractal(x, y - size, size * 0.5);
    fractal(x, y + size, size * 0.5);
  }
}

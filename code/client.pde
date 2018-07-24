import processing.net.*;

Client client;

void setup() {
  size(320, 240);
  client = new Client(this, "localhost", 5204);
}

void draw() {
  background(0);
  noStroke();
  fill(255, 100);
  ellipse(mouseX, mouseY, 10, 10);
  client.write(mouseX + "," + mouseY);
}

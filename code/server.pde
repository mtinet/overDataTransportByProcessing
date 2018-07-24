import processing.net.*;

Server server;

boolean update = false;
int[] mouse;

void setup() {
  size(320, 240);
  server = new Server(this, 5204);
}

void draw() {
  background(255);
  Client client =  server.available();
  
  if(client != null) {
    String mousePos = client.readString();
    mouse = int(split(mousePos, ","));
    noStroke();
    fill(0);
    update = true;
  }
  
  if(update && mouse.length == 2) {
    ellipse(mouse[0], mouse[1], 10, 10);
    update = false;
  }
}

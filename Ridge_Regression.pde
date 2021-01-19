ArrayList<Point> data; 
Regression reg; 

void setup() {
  size(500, 500);
  data = new ArrayList<Point>(); 
  reg = new Regression(); 
}

void draw() {
  background(255);
  
  for (int i = 0; i < data.size(); i++) {
    point(data.get(i).x, data.get(i).y); 
  }
}

void mousePressed() {
  data.add(new Point(mouseX, mouseY)); 
}

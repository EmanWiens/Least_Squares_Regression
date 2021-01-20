// https://en.wikipedia.org/wiki/Least_squares
// https://www.mathsisfun.com/data/least-squares-regression.html
// https://www.youtube.com/watch?v=Q81RR3yKn30&list=PLblh5JKOoLUICTaGLRoHQDuF_7q2GfuJF&index=22&ab_channel=StatQuestwithJoshStarmer

ArrayList<Point> data; 
Regression reg; 

void setup() {
  size(500, 500);
  data = new ArrayList<Point>(); 
  reg = new Regression(); 
}

void draw() {
  background(255);
  
  strokeWeight(4); 
  for (int i = 0; i < data.size(); i++) {
    point(data.get(i).x, data.get(i).y); 
  }
  strokeWeight(1);
  reg.LeastSquareRegression(); 
  reg.DrawLine(); 
}

void mousePressed() {
  data.add(new Point(mouseX, mouseY)); 
}

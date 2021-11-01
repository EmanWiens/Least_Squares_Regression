/* 
 * Created by Emanuel Wiens
 * Created on: 
 * Purpose: Least square regression implementation based on https://www.mathsisfun.com/data/least-squares-regression.html. 
 */

ArrayList<PVector> data; 
Regression reg; 

void setup() {
  size(500, 500);
  data = new ArrayList<PVector>(); 
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
  data.add(new PVector(mouseX, mouseY)); 
}

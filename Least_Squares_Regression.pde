/* 
 * Created by Emanuel Wiens
 * Created on: 
 * Purpose: Least square regression implementation based on https://www.mathsisfun.com/data/least-squares-regression.html. 
 */

ArrayList<PVector> data; 
Regression reg; 
boolean started; 

void setup() {
  size(500, 500);
  data = new ArrayList<PVector>(); 
  reg = new Regression(); 
  started = false; 
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
  
  if (!started) { 
    String text = "Click anywhere to add points!"; 
    text(text, width / 2 - (textWidth(text)  / 2), height / 2 - (textAscent() + textDescent()) / 2); 
  }
}

void mousePressed() {
  data.add(new PVector(mouseX, mouseY)); 
  started = true; 
}

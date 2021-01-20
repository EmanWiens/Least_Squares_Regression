class Regression {
  float y_intercept, slope; 
  float lambda; 
  
  public Regression() {
    y_intercept = 0; 
    slope = 1; 
  }
  
  public float penalty() {
    return lambda * (slope * slope); 
  }
  
  public void Update() { 
    float sumXY = 0, sumX = 0, sumY = 0, sumXSquare = 0, sumYSquare = 0; 
    float N = data.size(); 
    
    for (int i = 0; i < data.size(); i++) {
      sumXY += data.get(i).x * data.get(i).y; 
      sumX += data.get(i).x; 
      sumY += data.get(i).y; 
      sumXSquare += data.get(i).x * data.get(i).x; 
      sumYSquare += data.get(i).y * data.get(i).y; 
    }
    
    slope = (N * sumXY - sumX * sumY) / (N * sumXSquare - sumX * sumX); 
    y_intercept = (sumY - slope * sumX) / (N); 
  }
  
  public float LeastSquare() {
    return 0f; // TODO write this 
  }
  
  public void DrawLine() {
    stroke(0);
    fill(0);
    line(0, y_intercept, width, height * slope + y_intercept);
    text("y_intercept: " + y_intercept + "\nslope: " + slope, 2, textAscent()); 
  }
}

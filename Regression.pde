class Regression {
  float y_intercept, slope; 
  float lambda = 1; 
  
  public Regression() {
    y_intercept = 0; 
    slope = 1; 
  }
  
  public float penalty() {
    return lambda * (slope * slope); 
  }
  
  public float LeastSquareError() {
    float error = 0;
    float residual = 0; 
    
    // y is the actual value
    // ModelFunction is my prediciton of y 
    for (int i = 0; i < data.size(); i++) {
      residual = data.get(i).y - (ModelFunction(data.get(i).x, slope, y_intercept));
      error += residual * residual; 
    }
    
    return error;
  }
  
  public void LeastSquareRegression() {
    float sumXY = 0, sumX = 0, sumY = 0, sumXSquare = 0; 
    float N = data.size(); 
    
    for (int i = 0; i < data.size(); i++) {
      sumXY += data.get(i).x * data.get(i).y; 
      sumX += data.get(i).x; 
      sumY += data.get(i).y; 
      sumXSquare += data.get(i).x * data.get(i).x; 
    }
    
    slope = (N * sumXY - sumX * sumY) / (N * sumXSquare - sumX * sumX); 
    y_intercept = (sumY - slope * sumX) / N; 
  }
  
  // Returns y at 
  public float ModelFunction(float x, float slope, float intercept) { 
    return intercept + slope * x; 
  }
  
  public void DrawLine() {
    stroke(0);
    fill(0);
    line(0, y_intercept, width, ModelFunction((float)height, slope, y_intercept));
    text("y_intercept: " + (height - y_intercept) + "\nslope: " + abs(slope) + "\nLeastSquareError: " + LeastSquareError(), 2, textAscent()); 
  }
}

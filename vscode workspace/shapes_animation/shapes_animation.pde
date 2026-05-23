// Circle variables
float circleX, circleY;
float circleDiameter;
float circleDirX, circleDirY;
float circleSpeed = 2;

// Square variables
float squareX, squareY;
float squareSide = 40;
float squareSpeedX, squareSpeedY;
float baseSpeed = 3;

void settings() {
  size(500, 500);
}

void setup() {
  // Initialize circle at upper left corner
  circleX = -width / 2;
  circleY = -height / 2;
  circleDiameter = 100;
  circleDirX = 1;
  circleDirY = 1;
  
  // Initialize square in third quadrant (negative x, positive y from center)
  // Center the coordinate system at the middle of the window
  squareX = -150;
  squareY = 150;
  squareSpeedX = baseSpeed;
  squareSpeedY = baseSpeed;
}

void draw() {
  background(240);
  
  // Translate to center of screen for cartesian plane
  pushMatrix();
  translate(width / 2, height / 2);
  
  // Draw grid lines for reference (origin lines)
  stroke(200);
  strokeWeight(1);
  line(-width/2, 0, width/2, 0);  // X axis
  line(0, -height/2, 0, height/2);  // Y axis
  
  // Draw triangle at mouse position
  drawTriangle();
  
  // Update and draw circle
  updateAndDrawCircle();
  
  // Update and draw square in third quadrant
  updateAndDrawSquare();
  
  popMatrix();
}

void drawTriangle() {
  // Convert mouse position to cartesian coordinates (centered at window center)
  float triangleX = mouseX - width / 2;
  float triangleY = mouseY - height / 2;
  
  fill(0);  // Black fill
  stroke(255);  // White stroke
  strokeWeight(2);
  
  // Draw triangle pointing upward
  float sz = 20;
  triangle(
    triangleX, triangleY - sz,
    triangleX - sz, triangleY + sz,
    triangleX + sz, triangleY + sz
  );
}

void updateAndDrawCircle() {
  // Move circle diagonally
  circleX += circleDirX * circleSpeed;
  circleY += circleDirY * circleSpeed;
  
  // Grow when moving right/down, shrink when moving left/up
  if (circleDirX > 0) {
    circleDiameter += 0.5;  // Growing when moving right
  } else {
    circleDiameter -= 0.5;  // Shrinking when moving left
  }
  
  // Check if reached lower right corner and reverse direction
  if (circleX >= width / 2 && circleY >= height / 2) {
    circleDirX = -1;
    circleDirY = -1;
  }
  
  // Check if reached upper left corner and reverse direction
  if (circleX <= -width / 2 && circleY <= -height / 2) {
    circleDirX = 1;
    circleDirY = 1;
  }
  
  // Draw circle
  fill(0);  // Black fill
  stroke(255);  // White stroke
  strokeWeight(2);
  circle(circleX, circleY, circleDiameter);
}

void updateAndDrawSquare() {
  // Square boundaries in third quadrant (negative x, positive y)
  float leftBound = -width / 2;
  float rightBound = 0;
  float topBound = 0;
  float bottomBound = height / 2;
  
  // Update position
  squareX += squareSpeedX;
  squareY += squareSpeedY;
  
  // Bounce off walls and vary speed
  if (squareX - squareSide / 2 <= leftBound) {
    squareX = leftBound + squareSide / 2;
    squareSpeedX = baseSpeed + random(-2, 2);  // Vary speed
    squareSpeedX = abs(squareSpeedX);  // Ensure positive direction
  }
  if (squareX + squareSide / 2 >= rightBound) {
    squareX = rightBound - squareSide / 2;
    squareSpeedX = -(baseSpeed + random(-2, 2));  // Vary speed and reverse
  }
  
  if (squareY - squareSide / 2 <= topBound) {
    squareY = topBound + squareSide / 2;
    squareSpeedY = baseSpeed + random(-2, 2);  // Vary speed
    squareSpeedY = abs(squareSpeedY);  // Ensure positive direction
  }
  if (squareY + squareSide / 2 >= bottomBound) {
    squareY = bottomBound - squareSide / 2;
    squareSpeedY = -(baseSpeed + random(-2, 2));  // Vary speed and reverse
  }
  
  // Draw square
  fill(0, 0, 255);  // Blue fill
  stroke(255);  // White stroke
  strokeWeight(2);
  square(squareX - squareSide / 2, squareY - squareSide / 2, squareSide);
}

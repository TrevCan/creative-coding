int WIDTH_SCREEN = 500;
int HEIGHT_SCREEN = 500;

int default_height = HEIGHT_SCREEN/2;
int height_points[] = new int[WIDTH_SCREEN];

void setup(){
  size(500, 500);
  
  for(int point = 0; point < WIDTH_SCREEN; point++){
    height_points[point] = default_height;
  }
  print(default_height);
  
  // red
  background(#ff0000);
}

void draw(){
  // red
  background(#ff0000);
  for(int i = 0; i < width; i++){
    stroke(#000000);
    int y_offset = isLeft(i, mouseX)*distance(i,mouseX);
    point(i, height_points[i] + y_offset);
  }
}

int isLeft(int left, int right){
  if(left < right)
    return 1;
  else
    return -1;
}

int distance(int a, int b){
  return abs(a-b);
}

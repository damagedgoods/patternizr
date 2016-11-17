PShape[] item = new PShape[9];

void setup() {
  
  size(600,600);
  
  item[0] = loadShape("item_ill-01.svg");
  item[1] = loadShape("item_ill-02.svg");
  item[2] = loadShape("item_ill-03.svg");
  item[3] = loadShape("item_ill-04.svg");
  item[4] = loadShape("item_ill-05.svg");
  item[5] = loadShape("item_ill-06.svg");
  item[6] = loadShape("item_ill-07.svg");
  item[7] = loadShape("item_ill-08.svg");
  item[8] = loadShape("item_ill-09.svg");

  background(255);  

  int w = 600;
  int h = 600;
  
  // Settings
  int tileSize = 75;  
  int numFilas = h / tileSize;
  int numCols = w / tileSize;
  int numShapes = 9;
  
  float emptyPattern = 25;
  color c1 = color(189,21,80,220);
  color c2 = color(233,172,2,200);
  color c3 = color(138,155,15,200);
  
  int numItems = numFilas*numCols;
  
  // Capa 1
  for (int i=0; i<numItems; i++) {
    int fila = i / numFilas;
    int col = i % numCols;
    int item_to_load = int(random(numShapes));    
    float empty = random(100);
    if (empty > emptyPattern) continue;    
    PShape it = item[item_to_load];
    it.disableStyle();    
    fill(c1);
    noStroke();
    shape(it,fila*tileSize,col*tileSize,tileSize,tileSize);    
  }

  // Capa 2
      
  for (int i=0; i<numItems; i++) {
    int fila = i / numFilas;
    int col = i % numCols;    
    int item_to_load = int(random(numShapes));
    PShape it = item[item_to_load];
    it.disableStyle();
    
    fill(c2);
    noStroke();
   
    float empty = random(100);
    if (empty > emptyPattern) continue;
    
    shape(it,fila*tileSize,col*tileSize,tileSize,tileSize);
  }

  // Capa 3        
  for (int i=0; i<numItems; i++) {
    
    float empty = random(100);
    if (empty > emptyPattern) continue;
    
    int fila = i / numFilas;
    int col = i % numCols;    
    int item_to_load = int(random(9));
    PShape it = item[item_to_load];
    it.disableStyle();
    fill(c3);
    noStroke(); 
    shape(it,fila*tileSize,col*tileSize,tileSize,tileSize);
  }

}

void draw() {    
}

void mousePressed() {
  setup();
}
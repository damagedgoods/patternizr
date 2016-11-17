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
  int tileSize = 100;  
  float emptyPattern = 25;
  color[] capas = {color(189,21,80,220), color(233,172,2,200), color(138,155,15,200)};

    int numFilas = h / tileSize;
  int numCols = w / tileSize;  
  int numItems = numFilas*numCols;
  
  for (int j= 0; j<capas.length; j++) {
    for (int i=0; i<numItems; i++) {
      int fila = i / numFilas;
      int col = i % numCols;
      int item_to_load = int(random(item.length));    
      float empty = random(100);
      if (empty > emptyPattern) continue;    
      PShape it = item[item_to_load];
      it.disableStyle();    
      fill(capas[j]);
      noStroke();
      shape(it,fila*tileSize,col*tileSize,tileSize,tileSize);    
    }  
  }  
}

void draw() {    
}

void mousePressed() {
  setup();
}
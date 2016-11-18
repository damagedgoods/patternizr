PShape[] item = new PShape[9];

void setup() {
  
  size(600,600);
  
  item[0] = loadShape("svg/item_ill-01.svg");
  item[1] = loadShape("svg/item_ill-02.svg");
  item[2] = loadShape("svg/item_ill-03.svg");
  item[3] = loadShape("svg/item_ill-04.svg");
  item[4] = loadShape("svg/item_ill-05.svg");
  item[5] = loadShape("svg/item_ill-06.svg");
  item[6] = loadShape("svg/item_ill-07.svg");
  item[7] = loadShape("svg/item_ill-08.svg");
  item[8] = loadShape("svg/item_ill-09.svg");

  background(255);  

  int w = 600;
  int h = 600;
  
  // Settings
  int[] tileSize= {150,100,100};  
  float[] density = {25, 10,40};
  color[] capas = {color(189,21,80,220), color(233,172,2,200), color(138,155,15,200)};
  
  for (int j= 0; j<capas.length; j++) {
    
    int numFilas = h / tileSize[j];
    int numCols = w / tileSize[j];  
    int numItems = numFilas*numCols;
    
    for (int i=0; i<numItems; i++) {
      int fila = i / numFilas;
      int col = i % numCols;
      int item_to_load = int(random(item.length));    
      float empty = random(100);
      if (empty > density[j]) continue;    
      PShape it = item[item_to_load];
      it.disableStyle();    
      fill(capas[j]);
      noStroke();
      shape(it,fila*tileSize[j],col*tileSize[j],tileSize[j],tileSize[j]);    
    }  
  }  
}

void draw() {    
}

void mousePressed() {
  setup();
}
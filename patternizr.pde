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

  int numItems = 80;
  int numShapes = 9;
  
  float emptyPattern = 35;
  
  // Capa 1
  for (int i=0; i<numItems; i++) {
    int fila = i / 9;
    int col = i % 9;    
    int item_to_load = int(random(9));
    
    float empty = random(100);
    if (empty > emptyPattern) continue;
    
    PShape it = item[item_to_load];
    it.disableStyle();    
    fill(color(189,21,80,220));
    noStroke();
    shape(it,fila*100,col*100,100,100);
    
  }

  // Capa 2
  int x_offset = -50;
  int y_offset = -50;
      
  //translate(0,-width/2);
  //rotate(PI/4);
  for (int i=0; i<numItems; i++) {
    int fila = i / 9;
    int col = i % 9;    
    int item_to_load = int(random(9));
    PShape it = item[item_to_load];
    it.disableStyle();
    
    fill(color(233,172,2,200));
    noStroke();
   
    float empty = random(100);
    if (empty > emptyPattern) continue;
    
    shape(it,fila*100+x_offset,col*100+y_offset,100,100);
  }

  // Capa 3
  
      
  for (int i=0; i<numItems; i++) {
    
    float empty = random(100);
    if (empty > emptyPattern) continue;
    
    int fila = i / 9;
    int col = i % 9;    
    int item_to_load = int(random(9));
    PShape it = item[item_to_load];
    it.disableStyle();
    fill(color(138,155,15,200));
    noStroke(); 
    shape(it,fila*100+x_offset,col*100+y_offset,100,100);
  }


}

void draw() {
    
}

void mousePressed() {
  setup();
}

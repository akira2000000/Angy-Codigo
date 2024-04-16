///Boceto 2
//presionar las teclas
int[] rX = {200, 400, 600, 800};
int[] rY = {200, 400, 600, 800};

void setup() {
  fullScreen();
}

void draw() {
  background(255);

  noFill();
  stroke(0);//COLOR
  strokeWeight(60);//GRUESO
  strokeCap(SQUARE);//TERMINACION
  arc(300, 300, 340, 340, 0, PI+QUARTER_PI, OPEN);//COMO ESTARA DIRIGIDO

  noFill();
  stroke(250,0,0);//COLOR
  strokeWeight(60);//GRUESO
  strokeCap(SQUARE);//TERMINACION
  arc(600, 600, 340, 340, 0, PI+QUARTER_PI, OPEN);//COMO ESTARA DIRIGIDO

  //diferentes elipses

  ellipseMode(CENTER);//Poner otro crirculo en medio con contorno inicial
  fill(85, 149, 250); //Color
  ellipse(width/2, height/2, 170, 170);//Tamaño del circulo
  
  ellipseMode(RADIUS);  //Con circulo en medio
  fill(138, 196, 41);  //Color
  ellipse(width/4, height/4, 150, 150);//Tamaño del circulo de enmedio
  
  
}

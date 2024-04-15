//proyecto final
//elipses

void setup(){
 fullScreen();
}

void draw(){
  background(255);
  //Circulo enmedio
  fill(255,199,68);//color amarillo
  ellipse(width/2, height/2, 500,500);
  
  fill(255, 70, 60);
  ellipse(width/2, height/2, 400,400);
  
  fill(85, 125, 255);
  ellipse(width/2, height/2, 250,250);
  
  fill(255,199,68);
  ellipse(width/2, height/2, 150,150);
  
  //circulo izq
  fill(255, 70, 60);//color rojo
  ellipse(150,455,600,600);
  
  fill(85, 125, 255);//color azul
  ellipse(150,455,400,400);
  
  fill(255,199,68);
  ellipse(150,455,300,300);
  
  fill(255, 70, 60);//color rojo
  ellipse(150,455,200,200);
  
  //circulo derecha
  fill(85, 125, 255);
  ellipse(1250,455,200,200);
  
  fill(255, 70, 60);
  ellipse(1250,455,100,100);
  
  fill(255,199,68);
  ellipse(1250,455,50,50);
  
}

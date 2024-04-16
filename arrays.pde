//arrays
int[] rX = {20,70,120,170};//decalro la variable arreglo rX
int[] rY = {150,250,350,450};//varialble para el arreglo rY
float r = random(255);//cambia el color del fondo

void setup(){
  size(800, 800);
}

void draw(){

  background(0,255,r);
  
  rect(rX[0],rY[0],20,20);
  rect(rX[1],rY[1],20,20);
  rect(rX[2],rY[2],20,20);
  rect(rX[3],rY[3],20,20);
  
  ellipse(width/2, height/2, 40+r, 40);
}

void keyPressed(){//si presionas tal tecla pasa algo
  if(key=='q'){
    ellipse(rX[1]+200, rY[0]+100, 60, 80);
  }
  if(key=='w'){
    fill(255,0,0);
    textSize(50);
    text("el pinta labios, toque de rimel", 300, 300);
  }
}

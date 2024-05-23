import processing.serial.*;//Importar serial arduino
import processing.sound.*;//Importar el sonido
Serial puerto;
int bot1;

//Sonidos de las figuras
SoundFile sonido;
SoundFile music;
SoundFile gota;
SoundFile timbre;

void setup() {
  fullScreen();
  background(255);

  noCursor();
  
// Inicializar la comunicación serial con Arduino
  //println(Serial.list());
  String portName = "COM3"; // se cambia la palabra COM3 por el uerto com que designe la computadora
  puerto = new Serial(this, portName, 9600);
  //puerto.bufferUntil('\n');
  
  sonido = new SoundFile(this, "data/sapitos.mp3" );
  music = new SoundFile(this, "data/Tubo.mp3");
  gota = new SoundFile(this, "data/gotita.mp3");
  timbre = new SoundFile(this, "data/timbre.mp3");
  music.play();

}

void draw() {
  String mensaje = puerto.readStringUntil('\n');
   if (mensaje != null) {
   mensaje = trim(mensaje);
    
    if (mensaje.equals("taco")) { // Generar círculos al recibir el mensaje "taco" desde Arduino
    float x = random(width);
    float y = random(height);
    float diameter = random(80, 200);
    int randomColor = int(random(3));
    int[] colors = {color(255, 0, 0), color(0, 0, 255), color(0, 255, 0)};
    arc(x, y, 20, 20, 0, HALF_PI);
    fill(colors[randomColor]);
    noStroke();
    ellipse(x, y, diameter, diameter);
    timbre.play();
    } 
    
    if (mensaje.equals("gato")) { // Generar cuadrados al recibir el mensaje "gato" desde Arduino
    float x = random(width);
    float y = random(height);
    float diameter = random(30, 100);
    int randomColor = int(random(5));
    int[] colors = {color(126, 126, 126), color(136, 136, 136), color(145, 145, 145), color(185, 185, 185), color(222, 222, 222)};
    fill(colors[randomColor]);
    noStroke();
    rect(x, y, diameter, diameter); 
    gota.play();
    } 
    if (mensaje.equals("pato")) { // Generar líneas al recibir el mensaje "pato" desde Arduino
    float x1 = random(width);
    float y1 = 0;
    float x2 = random(width);
    float y2 = height;
    int randomColor = int(random(3));
    int[] colors = {color(0, 255, 255), color(255, 255, 0), color(255, 0, 144)};
    stroke(colors[randomColor]);
    strokeWeight(5);
    line(x1, y1, x2, y2);
    sonido.play();
    }
    if (mensaje.equals("ganso")) { // Limpiar la pantalla al recibir el mensaje "ganzo" desde Arduino
    background(255);
    }
  }
}
//void serialEvent(Serial puerto) {}

//En caso de que no funcione
void keyPressed() {
  if (key == 'x' || key == 'X') { // Generar círculos al presionar la tecla "x"
    float x = random(width);
    float y = random(height);
    float diameter = random(50, 100);
    int randomColor = int(random(3));
    int[] colors = {color(255, 0, 0), color(0, 0, 255), color(0, 255, 0)};
    ellipseMode(CENTER);
    fill(colors[randomColor]);
    ellipse(x, y, diameter, diameter);
    gota.play();
  }

  if (key == 'v' || key == 'V') { // Generar cuadrados al presionar la tecla "v"
    float x = random(width);
    float y = random(height);
    float diameter = random(10, 80);
    int randomColor = int(random(5));
    int[] colors = {color(126, 126, 126), color(136, 136, 136), color(145, 145, 145), color(185, 185, 185), color(222, 222, 222)};
    fill(colors[randomColor]);
    noStroke();
    rect(x, y, diameter, diameter);
  }

  if (key == 'c' || key == 'C') { // Generar líneas al presionar la tecla "c"
    float x1 = random(width);
    float y1 = 0;
    float x2 = random(width);
    float y2 = height;
    int randomColor = int(random(3));
    int[] colors = {color(0, 255, 255), color(255, 255, 0), color(255, 0, 144)};
    stroke(colors[randomColor]);
    strokeWeight(3);
    line(x1, y1, x2, y2);
    sonido.play();
  }

  if (key == 'z' || key == 'Z') { // Limpiar la pantalla al presionar la tecla "z"
    background(255);
  }
}

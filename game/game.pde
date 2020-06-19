import processing.video.*;
import processing.sound.*;
int rotas = 0;
int personagens = 0;
int principal1 = 0;
int principal2 = 0;
int principal3 = 0;
int principal4 = 0;
int principal5 = 0;
int segundaria1 = 0;
int segundaria2 = 0;
int segundaria3 = 0;
int segundaria4 = 0;
int windowNumber = 5;
Button[] buttons;
float p1;
float p2;
int c;
PImage fundo, banco, processing , personagem , personagem2, vistadajanela, quarto, terraco, lua;
PFont fontemenu;
String mensagem;

void settings() {
  //size(1000,500);
  fullScreen();
}
void setup() {
  frameRate(30);
  loadImages();
  createButtons();
  windowNumber = 5;
  fontemenu = loadFont("MyriadArabic-Regular-48.vlw");
  p1 = 0 - resizeX(640);
  p2 = width;
  loadsom();
  video();
  menusom.play();
  
}
void movieEvent(Movie m) {
  m.read();
}
void draw() {
  background(255);
  switch(windowNumber) {
  case 0:
  menu();
  image(personagem2, resizeX(1500),resizeY(290));
  image(personagem, resizeX(1000) ,resizeY(290));
  break;
  case 1:
  rotas();   
  break;
  case 2:
  Continua();
  break;
  case 3:
  Sobre();
  break;
  case 4:
  Opcoes();
  break;
  case 5:
  intro();
  break;
  case 6:
  background(fundo);
  rotas = 0;
  principal1 = 0;
  principal2 = 0;
  principal3 = 0;
  principal4 = 0;
  principal5 = 0;
  segundaria1 = 0;
  segundaria2 = 0;
  segundaria3 = 0;
  segundaria4 = 0; 
  windowNumber = 0;
  p1 = 0 - resizeX(640);
  p2 = width;
  menusom.stop();
  meiogame.stop();
  morte.stop();
  finalfeliz.stop();
  escolha.stop();
  semifeliz.stop();
  menusom.play();
  break;
  }
  disableKeys();
}
void mousePressed() {
  if (mouseButton==LEFT)
    keys[4] = true;
  if (mouseButton==RIGHT)
    keys[5] = true;

  if (windowNumber == 2 || windowNumber == 4) {
    windowNumber = 0;
    keys[4] = false;
  }
}

void disableKeys() {
  if (keys[4])
    keys[4] = false;

  if (keys[5])
    keys[5] = false;
}

//magica do fullsreen

static boolean[] keys = new boolean[7];

float resizeX(float value) {
  float newValue = (width*value)/1920;
  return newValue;
}

float resizeY(float value) {
  float newValue = (height*value)/1080;
  return newValue;
}

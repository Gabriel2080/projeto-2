float logoTime, logo1AlphaChannel, logo2AlphaChannel, buttonsAlphaChannel;

void createButtons() {
  buttons = new Button[23];
  buttons[0] = new Button(resizeX(890), height - resizeY(54), resizeX(180), resizeY(54), "Carregar", 50);
  buttons[1] = new Button(resizeX(100), resizeY(324), resizeX(450), resizeY(80), "New Game", 100);
  buttons[2] = new Button(resizeX(100), resizeY(474), resizeX(400), resizeY(80), "Continua", 100);
  buttons[3] = new Button(resizeX(100), resizeY(624), resizeX(310), resizeY(80), "Opções", 100);
  buttons[5] = new Button(resizeX(100), resizeY(774), resizeX(250), resizeY(80), "Sobre", 100);
  buttons[4] = new Button(resizeX(100), resizeY(924), resizeX(200), resizeY(80), "Exit", 100);
  buttons[6] = new Button(resizeX(500), height - resizeY(54), resizeX(150), resizeY(54), "Voltar", 50);
  buttons[19] = new Button(0, 0, width, height - resizeY(54), "Next Level",100);
  buttons[20] = new Button(resizeX(1140), height - resizeY(54), resizeX(240), resizeY(54), "Main Menu", 50);
  buttons[18] = new Button(resizeX(700), resizeY(354), resizeX(430), resizeY(130), "Play again",100);
  buttons[21] = new Button(resizeX(700), height - resizeY(54), resizeX(130), resizeY(54), "Salvar", 50);
  buttons[11] = new Button(0, 0, width, height - resizeY(54), "Video",100);
  buttons[7] = new Button(resizeX(700), resizeY(354), resizeX(130), resizeY(54), "Não", 50);
  buttons[8] = new Button(resizeX(700), resizeY(454), resizeX(130), resizeY(54), "Sim", 50);
  buttons[9] = new Button(resizeX(700), resizeY(354), resizeX(190), resizeY(54), "Não ligar", 50);
  buttons[10] = new Button(resizeX(700), resizeY(454), resizeX(130), resizeY(54), "Falar", 50);

  buttons[22] = new Button((width/2)-resizeX(75), height - resizeY(54), resizeX(130), resizeY(54), "Voltar", 50);
}

void menu() {
  tint(255,255);
  image(banco, 0, 0);
  fill(70,70,70,100);
  noStroke();
  rect(0,0,width*0.4,height);

  if (buttonsAlphaChannel < 255)
    buttonsAlphaChannel += 10;
  else
    buttonsAlphaChannel = 255;

  tint(255, buttonsAlphaChannel);

  //começa um new game
  buttons[1].draws();
  if (buttons[1].getIsPressed()) {
    meiogame.play();
    menusom.stop();
    windowNumber = 1;
  }  
  //continuar
  buttons[2].draws();
  if (buttons[2].getIsPressed()) {
    windowNumber = 2;

  }  
  //opicoes
  buttons[3].draws();
  if (buttons[3].getIsPressed()) {
    windowNumber = 4;

  }
  //exit
  buttons[4].draws();
  if (buttons[4].getIsPressed()) {
    exit();
  }
  //sobre e video
  buttons[5].draws();
  if (buttons[5].getIsPressed()) {
    windowNumber = 3;
  }
}


void intro() {
  logoTime--;

  if (logoTime >= 50 && logoTime <= 150) {
    logo1AlphaChannel -= 10;
  } else if (logoTime > 0 && logoTime <50) {
    logo2AlphaChannel -= 25;
  } else if (logoTime <= 0) {
    windowNumber = 0;
  }

  tint(255, 255);
  image(processing, resizeX(710),resizeY(290));
}

void Continua(){
  background(255);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(resizeX(100));
  text("em desenvolvimento",width/2,height/2);
}

void Opcoes(){
  background(255);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(resizeX(100));
  text("em desenvolvimento",width/2,height/2);
}

void Sobre(){
  //buttton de video
  buttons[11].draws();
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(resizeX(100));
  text("video click aqui",width/2,height/2);
    if (buttons[11].getIsPressed()) {
    video.play();
    menusom.stop();
  }
  image(video, 0, 0, width, height);
  fill(240,70,121);
  rect((width/2)-resizeX(75), height - resizeY(54), resizeX(130), resizeY(54),10);
  buttons[22].draws();
    if (buttons[22].getIsPressed()) {
    windowNumber = 0;
    video.stop();
    menusom.play();
  }
}

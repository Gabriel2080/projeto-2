void principal1(){
  buttons[19].draws();
  switch(principal1){
  case 0:
  display("Mais um dia, se passa diante desta minha vida.", quarto, 0);
  if (buttons[19].getIsPressed()) {
    principal1++;
    c=0;
  }
  break;
  case 1:
  display("Com minha insônia levando mais um dia sem poder sonhar.", quarto, 0);
  if (buttons[19].getIsPressed()) {
    principal1++;
    c=0;
  }
  break;
  case 2:
  display("Ele vai até o banheiro para se ajeitar.", quarto, 3);
  if (buttons[19].getIsPressed()) {
    principal1++;
    c=0;
  }
  break;
  case 3:
  display("Ele olha para o espelho.", quarto, 3);
  if (buttons[19].getIsPressed()) {
    p1 = 0 - resizeX(640);
    principal1++;
    c=0;
  }
  break;
  case 4:
  display("Devo colocar que mascara hoje para esse, meu eu vazio.", quarto, 0);
  if (buttons[19].getIsPressed()) {
    principal1++;
    c=0;
  }
  break;
  case 5:
  display("Devo olhar como está lá fora primeiro.", quarto, 0);
  if (buttons[19].getIsPressed()) {
    meiogame.stop();
    escolha.play();
    principal1++;
    c=0;
  }
  break;
  case 6:
  display("Acho que devo desistir hoje?", vistadajanela, 0);
  fill(240,70,121);
  rect(resizeX(700), resizeY(454), resizeX(130), resizeY(54),10);
  rect(resizeX(700), resizeY(354), resizeX(130), resizeY(54),10);
  buttons[7].draws();
  buttons[8].draws();
  if (buttons[7].getIsPressed()) {
    escolha.stop();
    meiogame.play();
    rotas = 2;
    c=0;
  }
  if (buttons[8].getIsPressed()) {
    morte.play();
    escolha.stop();
    rotas = 1;
    c=0;
  }
  break;
  }
}

void segundaria1(){
  switch(segundaria1){
  case 0:
  display("Ele se matou, mas também levou o mundo a ruína.", lua, 3);
  fill(240,70,121);
  rect(resizeX(700), resizeY(354), resizeX(430), resizeY(130),10);
  buttons[18].draws();
  if (buttons[18].getIsPressed()) {
    windowNumber = 6;
    c=0;
  }
  break;
  }
}

void principal2(){
  buttons[19].draws();
  switch(principal2){
  case 0:
  display("No final do dia ele está em um terraço de algum prédio.", terraco, 3);
  if (buttons[19].getIsPressed()) {
    p1 = 0 - resizeX(640);
    principal2++;
    c=0;
  }
  break;
  case 1:
  display("'Me pergunto se eu sou que estou errado ou é este mundo que está errado'.", terraco, 0);
  if (buttons[19].getIsPressed()) {
    principal2++;
    c=0;
  }
  break;
  case 2:
  display("'Reparo que a alguém a traz de mim'.", terraco, 0);
  if (buttons[19].getIsPressed()) {
    meiogame.stop();
    escolha.play();
    p2 = width;
    principal2++;
    c=0;
  }
  break;
  case 3:
  display("O que pensa que está a preste a fazer?", terraco, 1);
  fill(240,70,121);
  rect(resizeX(700), resizeY(454), resizeX(130), resizeY(54),10);
  rect(resizeX(700), resizeY(354), resizeX(190), resizeY(54),10);
  buttons[9].draws();
  buttons[10].draws();
  if (buttons[9].getIsPressed()) {
    escolha.stop();
    meiogame.play();
    p1 = 0 - resizeX(640);
    rotas = 3;
    c=0;
  }
  if (buttons[10].getIsPressed()) {
    escolha.stop();
    meiogame.play();
    p1 = 0 - resizeX(640);
    rotas = 4;
    c=0;
  }
  }
}

void segundaria2(){
  buttons[19].draws();
  switch(segundaria2){
  case 0:
  display("Agora espero viver no completo vazio, aonde nada pode ser nada além que o vazio.", terraco, 0);
  if (buttons[19].getIsPressed()) {
    morte.play();
    meiogame.stop();
    segundaria2++;
    c=0;
  }
  break;
  case 1:
  display("Junto com isso ele, leva o mundo a ruína.", lua, 3);
  fill(240,70,121);
  rect(resizeX(700), resizeY(354), resizeX(430), resizeY(130),10);
  buttons[18].draws();
  if (buttons[18].getIsPressed()) {
    windowNumber = 6;
    c=0;
  }
  break;
  }
}

void principal3(){
  buttons[19].draws();
  switch(principal3){
  case 0:
  display("O que faz aqui?", terraco, 0);
  if (buttons[19].getIsPressed()) {
    p2 = width;
    principal3++;
    c=0;
  }
  break;
  case 1:
  display("Vim impedir que o meu proposito desapareça.",terraco, 1);
  if (buttons[19].getIsPressed()) {
    meiogame.stop();
    escolha.play();
    principal3++;
    c=0;
  }
  break;
  case 2:
  display("E perguntar se você gostaria de mudar e ir comigo.", terraco, 1);
  fill(240,70,121);
  rect(resizeX(700), resizeY(454), resizeX(130), resizeY(54),10);
  rect(resizeX(700), resizeY(354), resizeX(130), resizeY(54),10);
  buttons[7].draws();
  buttons[8].draws();
  if (buttons[7].getIsPressed()) {
    escolha.stop();
    meiogame.play();
    p1 = 0 - resizeX(640);
    rotas = 5;
    c=0;
  }
  if (buttons[8].getIsPressed()) {
    meiogame.play();
    escolha.stop();
    p1 = 0 - resizeX(640);
    rotas = 6;
    c=0;
  }
  break;
  }  
}

void segundaria3(){
  buttons[19].draws();
  switch(segundaria3){
  case 0:
  display("Sinto muito.", terraco, 0);
  if (buttons[19].getIsPressed()) {
    meiogame.stop();
    morte.play();
    segundaria3++;
    c=0;
  }
  break;
  case 1:
  display("Junto com sinto muito, ele leva o mundo a ruína.", lua, 3);
  fill(240,70,121);
  rect(resizeX(700), resizeY(354), resizeX(430), resizeY(130),10);
  buttons[18].draws();
  if (buttons[18].getIsPressed()) {
    windowNumber = 6;
    c=0;
  }
  break;
  }  
}

void principal4(){
  buttons[19].draws();
  switch(principal4){
  case 0:
  display("Aceitarei sua oferta.", terraco, 0);
  if (buttons[19].getIsPressed()) {
    p2 = width;
    principal4++;
    c=0;
  }
  break;
  case 1:
  display("Tu não estás com medo do meu eu.", terraco, 1);
  if (buttons[19].getIsPressed()) {
    p1 = 0 - resizeX(640);
    principal4++;
    c=0;
  }
  break;
  case 2:
  display("Não, você parece familiar para mim, e me traz uma nostalgia, mesmo que não me lembro de nada.", terraco, 0);
  if (buttons[19].getIsPressed()) {
    p2 = width;
    principal4++;
    c=0;
  }
  break;
  case 3:
  display("'Vejo que ele não mudou nada, isso me traz nostalgia'.", terraco, 1);
  if (buttons[19].getIsPressed()) {
    principal4++;
    c=0;
  }
  break;
  case 4:
  display("Vou te dar a escolha que eu nunca tive.", terraco, 1);
  if (buttons[19].getIsPressed()) {
    escolha.play();
    meiogame.stop();
    principal4++;
    c=0;
  }
  break;
  case 5:
  display("Quer se tornar um, igual a mim?", terraco, 1);
  fill(240,70,121);
  rect(resizeX(700), resizeY(454), resizeX(130), resizeY(54),10);
  rect(resizeX(700), resizeY(354), resizeX(130), resizeY(54),10);
  buttons[7].draws();
  buttons[8].draws();
  if (buttons[7].getIsPressed()) {
    escolha.stop();
    meiogame.play();
    p1 = 0 - resizeX(640);
    rotas = 7;
    c=0;
  }
  if (buttons[8].getIsPressed()) {
    escolha.stop();
    meiogame.play();
    p1 = 0 - resizeX(640);
    rotas = 8;
    c=0;
  }
  break;
  }
}

void segundaria4(){
  buttons[19].draws();
  switch(segundaria4){
  case 0:
  display("Não.", terraco, 0);
  if (buttons[19].getIsPressed()) {
    semifeliz.play();
    meiogame.stop();
    segundaria4++;
    c=0;
  }
  break;
  case 1:
  display("Depois de muitos anos se divertido.", terraco, 3);
  if (buttons[19].getIsPressed()) {
    segundaria4++;
    c=0;
  }
  break;
  case 2:
  display("Chegar ao fim dele, levando o mundo para a ruinas.", lua, 3);
  fill(240,70,121);
  rect(resizeX(700), resizeY(354), resizeX(430), resizeY(130),10);
  buttons[18].draws();
  if (buttons[18].getIsPressed()) {
    windowNumber = 6;
    c=0;
  }
  break;
  }  
}

void principal5(){
  buttons[19].draws();
  switch(principal5){
  case 0:
  display("Sim.", terraco, 0);
  if (buttons[19].getIsPressed()) {
    p2 = width;
    principal5++;
    c=0;
  }
  break;
  case 1:
  display("'Ele é realmente único'.", terraco, 1);
  if (buttons[19].getIsPressed()) {
    principal5++;
    c=0;
  }
  break;
  case 2:
  display("Que assim seja.", terraco, 1);
  if (buttons[19].getIsPressed()) {
    meiogame.stop();
    finalfeliz.play();
    principal5++;
    c=0;
  }
  break;
  case 3:
  display("Eles vivem eternamente, preservando o mundo até hoje.", banco, 3);
  if (buttons[19].getIsPressed()) {
    principal5++;
    c=0;
  }
  break;
  case 4:
  display("Para se divertirem junto.", banco, 3);
  fill(240,70,121);
  rect(resizeX(700), resizeY(354), resizeX(430), resizeY(130),10);
  buttons[18].draws();
  if (buttons[18].getIsPressed()) {
    windowNumber = 6;
    c=0;
  }
  }
}

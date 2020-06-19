void menudebaixo(){
  fill(53,196,149,100);
  rect(resizeX(480), height - resizeY(50), resizeX(920), resizeY(54),10);
  textSize(resizeX(10));
  //voltar
  buttons[6].draws();
  if(principal1 > 0){
    if (buttons[6].getIsPressed()) {
      principal1--;
    }
  }
  if(principal2 > 0){
    if (buttons[6].getIsPressed()) {
      principal2--;
    }
  }
  if(principal3 > 0){
    if (buttons[6].getIsPressed()) {
      principal3--;
    }
  }
  if(principal4 > 0){
    if (buttons[6].getIsPressed()) {
      principal4--;
    }
  }
  if(principal5 > 0){
    if (buttons[6].getIsPressed()) {
      principal5--;
    }
  }
  if(segundaria1 > 0){
    if (buttons[6].getIsPressed()) {
      segundaria1--;
    }
  }
    if(segundaria2 > 0){
    if (buttons[6].getIsPressed()) {
      segundaria2--;
    }
  }  if(segundaria3 > 0){
    if (buttons[6].getIsPressed()) {
      segundaria3--;
    }
  }  if(segundaria4 > 0){
    if (buttons[6].getIsPressed()) {
      segundaria4--;
    }
  }
  //volta para menu
  buttons[20].draws();
  if(buttons[20].getIsPressed()){
    windowNumber = 6;
  }
  //carregar
  buttons[0].draws();
  //salvar
  buttons[21].draws();
}

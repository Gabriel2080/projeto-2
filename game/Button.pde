class Button {

  float posX, posY;   //posicao
  int wScale, hScale; //tamanho da area do button
  String text;        //texto do button
  boolean mouseInside;
  int tamanhof;       //tamanho da fonte
  

  Button (float x, float y, float w, float h, String t, int sf) {
    posX = x;
    posY = y;
    wScale = round(w);
    hScale = round(h);
    text = t;
    tamanhof = sf;
  }


  void draws() {
    if (mouseX >= posX && mouseX <= posX + wScale && mouseY >= posY && mouseY <= posY + hScale) 
      mouseInside = true;
    else
      mouseInside = false;

    
    //animacao do button
    if (mouseInside) { //passar em sima verdadeiro
      fill(255);
      textFont(fontemenu);
      textSize(resizeX(tamanhof));
      textAlign(LEFT, CENTER);
      text(text, posX, posY + hScale/2);
    } else {          // F
      fill(0);
      textFont(fontemenu);
      textSize(resizeX(tamanhof));
      textAlign(LEFT, CENTER);
      text(text, posX, posY + hScale/2);
    }
  }
  //click
  boolean getIsPressed() {
    if (mouseInside && keys[4])
      return true;

    return false;
  }
}

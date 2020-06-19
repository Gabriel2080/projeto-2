void display(String dialogo,PImage x, int q) {
  mensagem = dialogo;
  clear();
  background(x);
  personagens();
  personagens = q;
  textAlign(LEFT, TOP);
  textSize(resizeX(50));
  fill(70,70,70,100);
  noStroke();
  rect(resizeX(20), resizeY(756), resizeX(1880), resizeY(270),10);
  fill(230);  
  if (c<mensagem.length()){
    String msg = mensagem.substring(0,c); 
    text(msg,resizeX(30),resizeY(760),width-resizeX(40),height-resizeY(64));
    c++;
  } else {
    text(mensagem,resizeX(30),resizeY(760),width-resizeX(40),height-resizeY(64));
  }
}

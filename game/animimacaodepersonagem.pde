void personagens(){
  switch(personagens){
    case 0:
    image(personagem, p1, resizeY(290));
    if (p1<resizeX(284)){
      p1 = p1 + 5;
    }
    break;
    case 1:
    image(personagem2, p2, resizeY(290));
    if (p2>resizeX(1436)){
      p2 = p2 - 5;
    }
    break;
    case 3:
    //narrador
    break;
  }
}

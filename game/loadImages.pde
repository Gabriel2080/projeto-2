void loadImages() {
  fundo = loadImage("IMG_20190131_132936.jpg");
  fundo.resize(width, height);
  
  banco = loadImage("imagem/banco.png");
  banco.resize(width, height);
  
  vistadajanela = loadImage("imagem/vista da janela.jpg");
  vistadajanela.resize(width, height);
  
  quarto = loadImage("imagem/quarto.jpg");
  quarto.resize(width, height);
  
  terraco = loadImage("imagem/terraço de edificio.jpg");
  terraco.resize(width, height);
  
  personagem = loadImage("imagem/personagem.png");
  personagem.resize((width*640)/1920,(height*900)/1080);
  
  personagem2 = loadImage("imagem/personagem2.png");
  personagem2.resize((width*500)/1920,(height*900)/1080);
  
  lua = loadImage("imagem/lua.jpg");
  lua.resize(width,height);
  
  processing = loadImage("imagem/processing.png");
  processing.resize((width*500)/1920, (height*500)/1080);
  
  
  buttonsAlphaChannel = 0;
  logo1AlphaChannel = logo2AlphaChannel = 255;
  logoTime = 200;
}

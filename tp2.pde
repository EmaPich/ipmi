PImage foto1,foto2,foto3,foto4;
PFont mifuente;

int contador;
int estado;
int tamFont = 0;
int posX,posY;

float opacidadtexto=255;

String texto1,texto2,texto3,texto4;

void setup(){
  size(640,480);
  foto1 = loadImage("chalkroom1.jpg");
  foto2 = loadImage("chalkroom2.jpg");
  foto3 = loadImage("chalkroom3.png");
  foto4 = loadImage("chalkroom4.jpg");
  
  texto1 = "Chalkroom es una obra de realidad virtual de Laurie Anderson y Hsin-Chien Huang";
  texto2 = "Chalkroom es una obra en la que el lector vuela a través de una enorme estructura hecha de palabras, dibujos e historias";
  texto3 = "Una vez que ingresas, eres libre de deambular y volar. Las palabras vuelan por el aire como correos electrónicos. Caen en polvo. Se forman y reforman";
  texto4 = "Presentación hecha por Ema Pich";
  
  mifuente = loadFont("data/Georgia-Bold-30.vlw");
  textFont(mifuente);
  textAlign(LEFT);
  
  estado = 1;
  contador = 0;
  posX = 20;
  posY = 200;
}

void draw(){
  println("estado="+estado);
  if(estado == 1){
    image(foto1,0,0,width,height);
    fill(255);
    textSize(tamFont);
    text(texto1,posX,posY,600,200);
    tamFont++;

    contador++;
    if(contador>=110){
      estado++;
      contador = 0;
    }
} else if(estado == 2){
    image(foto2,0,0,width,height);
    fill(255,opacidadtexto);
    textSize(map(opacidadtexto,255,0,30,0));
    text(texto2,posX,posY,600,200);

    opacidadtexto-=3;
    if(opacidadtexto<=0){
      estado = 3;
      contador = 0;
      posX = 20;
      posY = 200;
      opacidadtexto = 255;
    }
} else if(estado == 3){
    image(foto3,0,0,width,height);
    fill(255);
    textSize(30);
    text(texto3,posX,posY,600,200);
    posX++;
    posY++;

    contador++;
    if(contador>=110){
      estado++;
      contador = 0;
    }
} else if(estado == 4){
    image(foto4,0,0,width,height);
    fill(255);
    textSize(20);
    text(texto4,100,50,600,200);

    contador++;
    if(contador>=110){
      estado++;
      contador = 0;
    }
} else if(estado == 5){
    image(foto4,0,0,width,height);
    fill(255);
    textSize(20);
    text(texto4,posX,posY,600,200);
    if(mouseX>200 && mouseX<200+150 && mouseY >300 && mouseY<300+80){
      noStroke();
      fill(98,98,98);
    } else {
      fill(15);
    }
    rect(200,300,150,80);
  } else {
  }
}

void mousePressed(){
  if(estado==5){
    if(mouseX>200 && mouseX<200+150 && mouseY >300 && mouseY<300+80){
      estado = 1;
    }
} else {
    estado++;
    contador = 0;
    posX = 20;
  }
}

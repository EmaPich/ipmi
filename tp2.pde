PImage foto1,foto2,foto3,foto4;
PFont mifuente;

int contador;
int estado;
int posX,posY,posX2,posY2;
int alfa = 0;

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
  texto4 = "Presentación hecha por Ema Pich \nEspere y toque el botón violeta si desea verla otra vez c:";
  
  mifuente = loadFont("data/Georgia-Bold-30.vlw");
  textFont(mifuente);
  
  estado = 1;
  contador = 0;
  posX = -50;
  posX2 = 20;
  posY = 0;
  posY2 = 100;
}

void draw(){
  textAlign(CENTER);
  println("estado="+estado);
  if(estado == 1){
    image(foto1,0,0,width,height);
    fill(255);
    textSize(30);
    text(texto1,posX,posY,600,200);
    posX++;
    posY++;

    contador++;
    if(contador>=110){
      estado++;
      contador = 0;
    }
} else if(estado == 2){
    image(foto2,0,0,width,height);
    fill(255);
    textSize(30);
    text(texto2,posX2,posY2,600,200);
    posX2++;

     contador++;
     if(contador>=110){
      estado++;
      contador = 0;
    }
} else if(estado == 3){
    image(foto3,0,0,width,height);
    fill(255);
    textSize(30);
    text(texto3,posX2,posY2,600,200);
    posX2--;

    contador++;
    if(contador>=110){
      estado++;
      contador = 0;
    }
} else if(estado == 4){
    image(foto4,0,0,width,height);
    fill(255,255,255,alfa);
    textSize(20);
    text(texto4,posX2,posY2,600,200);
    alfa++;

    contador++;
    if(contador>=110){
      estado++;
      contador = 0;
    }
} else if(estado == 5){
  noStroke();
    image(foto4,0,0,width,height);
    fill(255);
    textSize(20);
    text(texto4,posX2,posY2,600,200);
    if(mouseX>460 && mouseX<460+150 && mouseY >370 && mouseY<370+80){
      fill(186,144,255);
    } else {
      fill(102,23,232);
    }
    rect(460,370,150,80);
  } else {
  }
}

void mousePressed(){
  if(estado==5){
    if(mouseX>460 && mouseX<460+150 && mouseY >370 && mouseY<370+80){
      estado = 1;
    }
} else {
    estado++;
    contador = 0;
    posX2 = 20;
  }
}

//Ema Pich 94040/3 COMI3

PImage miImagen;
PImage wllp;
int cant = 20;
int tamX, tamY;
int posX = 0;
int posY = 0;
float x1=127;
boolean e;
float distancia;


void setup(){
  size(800,400);
  miImagen = loadImage("op tecno.jpg");
  tamX = width/cant;
  tamY = height/cant;
}

//parametros q no retornan
//FOR anidado
//funcion matematica
void cuadraditos(int cant){
  for(int i=10; i<cant; i+=1){
    for(int j=0; j<cant; j+=1){
       if(e)
       distancia = dist(i*tamX, j*tamY, mouseX, mouseY);
         else
          distancia=100;
      float miColor = map(distancia, 0, 100, 255, 0);
      float colorAlpha = map(distancia, 0, 100, 0, 100);
      if((i+j) % 2==0){
      fill(miColor, 0, 0, colorAlpha);
   }else {
     fill(0);
   }
      rect(i*tamX*1, j*tamY*1.43, tamX*0.92, tamY*1.48);
   }
  }    
 }
 
//parametro q retorna valor
float efecto(float xm){
  float restart=0;
  restart = map(xm, height, 0, 50, 150);
  return restart;
}

void draw(){
  noStroke();

    for(int i=10; i<cant; i+=1){
    for(int j=-30; j<cant; j+=1){
      if((i+j) % 2==0){
      fill(255,0,0,0);
   }else {
     fill(255);
   }
 if(e)
x1 = efecto(mouseY);

      rect(i*tamX*1, x1+j*tamY*1.50, tamX*1, tamY*1.42);
    }
  }
 
  cuadraditos(cant);
     
  image(miImagen,0,0,400,400);
}

//eventos (mouse y/o teclado)
//reiniciar el programa
void keyPressed(){
 if(key == 'r'){
  e=false;
  x1=127;
 }
}

void mousePressed(){
 e=true;
}

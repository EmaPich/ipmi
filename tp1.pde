PImage foto;

void setup(){
  size(800,400);
  foto=loadImage("youwu.jpg");
}

void draw(){
  
//remerita
noStroke();
fill(255,255,255);
 rect(400,100,200,400);
 rect(600,240,200,400);
 
//cuello
fill(219,171,142);
 ellipse(615,300,270,400);
 
//carita
fill(214,126,110);
 ellipse(600,70,440,510);
 ellipse(600,245,250,220);
 
//lenguita
fill(183,96,96);
 ellipse(630,310,80,99);
fill(214,126,110);
 ellipse(620,280,100,100);
 
//nariz
fill(209,105,86);
 triangle(530,270,665,275,605,120);
 triangle(530,269,665,274,595,320);
 ellipse(597,260,105,120);
 
//ojitos-der
fill(209,105,86);
 triangle(650,120,750,130,720,60);
fill(255,255,255);
 ellipse(725,100,120,80);
//pupila
fill(49,20,2);
 ellipse(717,86,65,65);
fill(0,0,0);
 ellipse(717,82,36,36);
fill(255,255,255);
 ellipse(705,85,10,10);
fill(255,255,255,50);
 ellipse(710,86,15,15);
 
 
//-izq
fill(209,105,86);
 triangle(470,110,563,117,500,60);
fill(255,255,255);
 ellipse(490,90,120,80);
//pupila
fill(49,20,2);
 ellipse(497,76,65,65);
fill(0,0,0);
 ellipse(499,73,36,36);
fill(255,255,255);
 ellipse(487,72,10,10);
fill(255,255,255,50);
 ellipse(491,74,15,15);
 
//pestaña-der
strokeWeight(5);
stroke(0,0,0);
 line(687,90,705,75);
 line(705,75,720,70);
strokeWeight(8);
 line(720,70,745,70);
strokeWeight(15);
 line(745,68,785,85);
 
//pestaña-izq
strokeWeight(5);
stroke(0,0,0);
 line(528,75,515,65);
 line(515,65,490,57);
strokeWeight(8);
 line(490,57,460,65);
 
//parpados-arriba-der
strokeWeight(20);
stroke(214,126,110);
 line(630,130,700,60);
 line(700,62,750,45);
 line(700,52,760,60);
 line(760,60,800,75);
//-abajo
 line(660,130,700,140);
 line(700,140,740,140);
 line(740,140,765,135);
 line(765,135,800,110);
 
//-arriba-izq
 line(555,97,530,60);
 line(530,60,500,45);
 line(500,45,445,55);
 line(460,55,420,75);
 line(425,75,410,105);
//-abajo
 line(555,123,500,135);
 line(500,135,450,130);
 line(450,128,420,108);
//pestaña-izq
strokeWeight(11);
stroke(0,0,0);
 line(479,64,440,78);
strokeWeight(12);
 line(450,74,420,88);
 
//cejitas-der
stroke(33,9,1);
 line(670,90,700,60);
 line(700,60,750,50);
fill(33,9,1);
 triangle(750,50,801,35,801,60);
 
//-izq
stroke(33,9,1);
 line(540,70,510,50);
 line(510,50,470,50);
fill(33,9,1);
 triangle(399,40,399,60,470,50);

//flequillito
strokeWeight(20);
stroke(77,27,4);
 line(550,0,530,100);
 line(530,100,544,120);
 line(680,0,660,100);
 line(660,100,630,130);
strokeWeight(8);
 line(570,0,545,100);
 line(545,100,566,120);
strokeWeight(5);
 line(660,0,650,135);
 line(650,135,638,150);
 
 image(foto,0,0);
}

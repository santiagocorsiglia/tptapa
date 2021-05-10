PImage tapa;
PImage tapamodif;
PImage mono;
PFont tipografiatitulo;

int posicionm;
int mitadpantalla;
int posm;
int transparencia;

void setup() {
  size(800, 400);

  tapa = loadImage("TAPA.jpg");
  tapamodif = loadImage("TAPA MODIFICADA.jpg");
  mono = loadImage("monito2.png");
  tipografiatitulo = loadFont("Ebrima-Bold-48.vlw");
  mitadpantalla = width/2;
  posm = -100;
  transparencia= 0;
  
}

void draw() {
  image(tapa, 0, 0, mitadpantalla, height);
  image(tapamodif, mitadpantalla, 0, mitadpantalla, height);
  image(mono,mitadpantalla+250,posm,150,130  );
    
    
    fill(#1d7f65, transparencia);
  textSize(30);
  textFont(tipografiatitulo, 30);
  text("CUANDO SE", mitadpantalla+50, 90);
  text("VAN AL JARDIN", mitadpantalla+50, 115);
 
 
 

}

void mouseMoved() {
  
  
 if(mouseX >680 && mouseX< 750){
   if(mouseY>136 && mouseY< 176){
     posm = posm+1;
}}
}

void keyPressed(){
  
   transparencia = transparencia +10;}

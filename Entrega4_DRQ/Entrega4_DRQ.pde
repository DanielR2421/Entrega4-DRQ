int h;
int m;
int s;

float angle = 0;

float hRadius = 250;
float hSize = 500;

float mRadius = 125;
float mSize = 250;

float hCircSin = 125;
float hCircCos = 216.5;

String timeString;


 void setup() {

 size(800, 800);
 smooth();

}

void draw() {

  background(0);
  
  translate(width/2, height/2);
  
  h = hour(); 
  m = minute();
  s = second();

 //Circulo de horas
 noFill();
 stroke(255);
 strokeWeight(3);
 ellipse(0, 0, hSize, hSize);

//Lineas de horas PAra circulo de horas
 stroke(255);
 line(-275, 0, -225, 0); 
 line(275, 0, 225, 0); 
 line(0, -225, 0, -275); 
 line(0, 225, 0, 275);
 
 //Circulos para las otras horas
 fill(255);
 //Las horas del reloj varian cada 30 grados, 
 //por lo que se debe multiplicar el seno y coseno de dicho angulos por el radio del circulo de la hora
 //Esos valores estan son las variables float hCircSin y hCircCos
 ellipse(hCircSin, hCircCos, 20, 20); //
 ellipse(hCircCos, hCircSin, 20, 20);
 ellipse(hCircCos, -hCircSin, 20, 20);
 ellipse(hCircSin, -hCircCos, 20, 20);
 ellipse(-hCircSin, -hCircCos, 20, 20);
 ellipse(-hCircCos, -hCircSin, 20, 20);
 ellipse(-hCircCos, hCircSin, 20, 20);
 ellipse(-hCircSin, hCircCos, 20, 20);

 ellipseMode(CENTER);


}

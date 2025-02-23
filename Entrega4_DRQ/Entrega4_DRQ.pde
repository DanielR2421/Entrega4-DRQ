int h;
int m;
int s;

float angleHour = 0;
float angleMinute = -PI/2;

float hRadius = 250;
float hSize = 500;

float mRadius = hRadius/2;
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
  
  h = hour(); 
  m = minute();
  s = second();
  
  translate(width/2, height/2);
   
 //Para lograr rotar el circulo exterior de la hora toca saber cuanto debe rotar la hora
 //por ello, se debe relacionar la varible de h (hora del cumputador) por 30 grados que es 
 //lo que rota una manecilla de un reloj en una hora. El -1 es para que rote en dirección clockwise
 angleHour = radians(h * 30 * -1);
  
 //rotate(angleHour);

 //Circulo de horas
 noFill();
 stroke(255);
 strokeWeight(3);
 ellipse(0, 0, hSize, hSize);

//Lineas de horas Para circulo de horas
 stroke(255);
 
 line(-275, 0, -225, 0); //9h
 line(275, 0, 225, 0); //3h
 line(-5, -225, -5, -275); //12h
 line(5, -225, 5, -275); //12h
 line(0, 225, 0, 275); //6h
 
 //Circulos para las otras horas
 fill(255);
 //Las horas del reloj varian cada 30 grados, 
 //por lo que se debe multiplicar el seno y coseno de dicho angulos por el radio del circulo de la hora
 //Esos valores estan son las variables float hCircSin y hCircCos
 ellipse(hCircSin, hCircCos, 20, 20); //5h
 ellipse(hCircCos, hCircSin, 20, 20); //4h
 ellipse(hCircCos, -hCircSin, 20, 20); //2h
 ellipse(hCircSin, -hCircCos, 20, 20); //1h
 ellipse(-hCircSin, -hCircCos, 20, 20); //11h
 ellipse(-hCircCos, -hCircSin, 20, 20); //10h
 ellipse(-hCircCos, hCircSin, 20, 20); //8h
 ellipse(-hCircSin, hCircCos, 20, 20); //7h

 ellipseMode(CENTER);
 
//Circulo Minutero
 //ellipse(mRadius, 0, mSize, mSize);
push();

// Punto de pivote
 fill(255, 0, 0);
 noStroke();
 ellipse(0, 0, 10, 10);

 angleMinute = (radians(6 * m));

 rotate(angleMinute);



 fill(0, 150, 255, 100);
 stroke(255);
 ellipse(mRadius, 0, mRadius*2, mRadius*2);
 


 
 
  
pop();


angleMinute +=0.02 ;

}

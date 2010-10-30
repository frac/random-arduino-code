#include <Servo.h>

Servo myservo;
int val = 1;
int step = 5;

void setup(){
  myservo.attach(9);

}


void loop(){
  if (val >= 179 || val <= 0 ){
    step = -step;
  }
  val += step;
  
  myservo.write(val);
  delay(100);
  
}

/*
  Programm for first module

  Reads the incoming Information on Serial2 and writes it to Serial2 for following chain
*/


//Functiondeclaration
void errorDetection();

//global Variables


// the setup function runs once when you press reset or power the board
void setup() {
  Serial2.begin(9600);
}

// the loop function runs over and over again forever
void loop() {
  if(Serial2.available() > 0)
  {
    Serial2.write(Serial2.read());
  }
}

/* Methoden */
void errorDetection()
{
      /*
    Here could be your personal error detection and handling. For example by sending e# to the next module and recognizing it in the end-module
    */
}

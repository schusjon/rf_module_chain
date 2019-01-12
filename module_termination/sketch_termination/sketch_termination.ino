
/*
 Programmierung auf Zwischenmodulen wenn in der Kette
 */

/*
+ * Protokoll
+ *        
+ * Byte 1: a                      for Number of Modules                   From PC
+ *         b                      for Information all                     From PC
+ *         c + Numerb of module   for Information single                  From PC
+ *         
+ * Information all:        
+ * Maximum Number of Modules: 16
+ * 6 Byte per Module => 96 for all if 16 modules available
+ * Byte 2: Own Number                                                     From PC and incremented by µC
+ * Byte 3: a for Gain                                                     From µC
+ *         b for Pie-Module                                               From µC
+ *         c for ...                                                      From µC
+ *         d for ...                                                      From µC
+ * Byte 4: actual value                                                   From µC
+ * Byte 5: upper limit                                                    From µC
+ * Byte 6: low limit                                                      From µC
+ * Byte 7: step size                                                      From µC
+ * ...                                                                    From µC
+ * ...                                                                    From µC
+ * 
+ *  Information single:        
+ * 6 Byte
+ * Byte 2: Actual Number                                                  From PC and decremented by µC
+ * Byte 3: a for Gain                                                     From µC
+ *         b for Pie-Module                                               From µC
+ *         c for ...                                                      From µC
+ *         d for ...                                                      From µC
+ * Byte 4: actual value                                                   From µC
+ * Byte 5: upper limit                                                    From µC
+ * Byte 6: low limit                                                      From µC
+ * Byte 7: step size                                                      From µC
+ * ...                                                                    From µC
+ * ...                                                                    From µC
+ * 
+ * 
+ * Number of modules:
+ * Byte 2: Number                                                         From PC and incremented by µC
+ * 
+ * Spacing
+ * Byte n: '_'
+ * 
+ * Termination
+ * Byte x: #                                                              From PC and µC but onely one per String
+ *
+ *
+ * Endmodul:
+ * Gets all data and converts it to a good readable form
+ */



//Functiondeclaration
void NumberModule();
void informationSingle();
void informationAll();

//global Variables
int informationBuffer[100];
int actualBuffer = 0;
int sendingBuffer = 0;
bool allReceived = false;

// the setup function runs once when you press reset or power the board
void setup() {
  Serial2.begin(9600);
  informationBuffer[0] = 0;
  informationBuffer[1] = 0;
  Serial2.println("start");
}

// the loop function runs over and over again forever
void loop() {
  if(Serial2.available() > 0)
  {
    informationBuffer[actualBuffer] = Serial2.read();
    
    if (informationBuffer[actualBuffer] == '#') 
    {
      allReceived = true;
    }

    // Writes Information to Buffer 0 until a, b or c as start for methods
    if(informationBuffer[0] == 'a') // Number of Modules
    {
      NumberModule();
    }
    else if(informationBuffer[0] == 'b') // Information all
    { 
      informationAll();
    }
    else if(informationBuffer[0] == 'c') // Information single
    {
      informationSingle();
    }
 
  }

}


/* Methoden */
void NumberModule()
{
      actualBuffer = actualBuffer + 1;
      if (allReceived)
      {
        Serial2.print("There ");
        if(informationBuffer[1] == '1')
        {
          Serial2.print("is ");
          Serial2.print((informationBuffer[1]-48));
          Serial2.println(" modul in the chain");
        }
        else
        {
          Serial2.print( "are ");
          Serial2.print((informationBuffer[1]-48));
          Serial2.println(" modules in the chain");
        }
        Serial2.println();
        allReceived = false;
        actualBuffer = 0;
        informationBuffer[0] = 0;
        informationBuffer[1] = 0;
        
      }
}


void informationAll()
{
  int helpingVariable = 0;
  actualBuffer = actualBuffer + 1;
  if (allReceived)
      {
        sendingBuffer = actualBuffer;
        //sendingBuffer++;
        while (sendingBuffer > 1)
        {
          helpingVariable = (sendingBuffer-1)%12;
          switch(helpingVariable)
          {
            case 0:
              Serial2.print("Actual number of module: ");
              Serial2.println(informationBuffer[actualBuffer - sendingBuffer]-48);
              break;
            case 10:
              Serial2.print("Kind of module: ");
              Serial2.println(informationBuffer[actualBuffer - sendingBuffer]);
              break;
            case 8:
              Serial2.print("Actual value: ");
              Serial2.println(informationBuffer[actualBuffer - sendingBuffer]);
              break;
            case 6:
              Serial2.print("Upper limit: ");
              Serial2.println(informationBuffer[actualBuffer - sendingBuffer]);
              break;
            case 4:
              Serial2.print("Lower limit: ");
              Serial2.println(informationBuffer[actualBuffer - sendingBuffer]);
              break;
            case 2:
              Serial2.print("Step size: ");
              Serial2.println(informationBuffer[actualBuffer - sendingBuffer]);
              
              break;
            default:
              break;
          }
          sendingBuffer--;
        }
        allReceived = false;
        actualBuffer = 0;
        sendingBuffer = 0;
        informationBuffer[0] = 0;
        informationBuffer[1] = 0;

      }
}

void informationSingle()
{
  actualBuffer = actualBuffer + 1;
  if (allReceived)
      {
        Serial2.print("Kind of module: ");
        Serial2.println(informationBuffer[3]);
        Serial2.print("Actual value: ");
        Serial2.println(informationBuffer[5]);
        Serial2.print("Upper limit: ");
        Serial2.println(informationBuffer[7]);
        Serial2.print("Lower limit: ");
        Serial2.println(informationBuffer[9]);
        Serial2.print("Step size: ");
        Serial2.println(informationBuffer[11]);
        Serial2.println();
        allReceived = false;
        actualBuffer = 0;
        sendingBuffer = 0;
        informationBuffer[0] = 0;
      }
}

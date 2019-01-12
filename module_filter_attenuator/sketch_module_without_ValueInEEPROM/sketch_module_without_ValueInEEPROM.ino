
/*
 Programmierung auf Zwischenmodulen wenn in der Kette
 */

/*
+ * Protokoll
+ *        
+ * Byte 1: a                      for Number of Modules                   From PC
+ *         b                      for Information all                     From PC
+ *         c + Number of module   for Information single                  From PC
+ *         d + Number of module + Information
+ *                                for writing Information to EEPROM       From PC
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
+ *
+ *
+ * Spacing
+ * Byte n: '_'
+ * 
+ * Termination
+ * Byte x: #                                                              From PC and µC but onely one per String

+*Information in the EEPROM:
+*  address 0: actual value

+ */

#include <EEPROM.h>

// Defines
#define moduleType "a"
#define highLimit  "100"
#define lowLimit "0"
#define stepSize "10"

//Functiondeclaration
void NumberModule();
void informationSingle();
void informationAll();
void getInformationValues();

//global Variables
int informationBuffer[100];
int actualBuffer = 0;
int sendingBuffer = 0;
bool allReceived = false;
//onely needed for last module: 
//char* text = "Write a for Number of Modules, b for Information all, c+Number for Information single (e.g. c5)";

// the setup function runs once when you press reset or power the board
void setup() {
  Serial2.begin(9600);
  informationBuffer[0] = 0;
}

// the loop function runs over and over again forever
void loop() {
  if(Serial2.available() > 0)
  {
    informationBuffer[actualBuffer] = Serial2.read();
    
    if ((informationBuffer[actualBuffer] == '#'))
    {
      allReceived = true;
    }

    

    // Writes Information to Buffer 0 until a, b or c as start for methods
    if(informationBuffer[0] == 'a') // Number of Modules
    {
      if(informationBuffer[1] == '#')
      {
        informationBuffer[1] = '0';
      }
      NumberModule();
    }
    else if(informationBuffer[0] == 'b') // Information all
    { 
      if(informationBuffer[1] == '#')
      {
        informationBuffer[1] = '0';
      }
      informationAll();
    }
    else if(informationBuffer[0] == 'c') // Information single
    {
      informationSingle();
    }
    else if(informationBuffer[0] == 'd') // get Information
    {
      getInformationValues();
    }
    else if(informationBuffer[0] > 0)
    {
      Serial2.write('w');
    }
  }

}

/* Methoden */
void NumberModule()
{
      actualBuffer = actualBuffer + 1;
      if (allReceived)
      {
        informationBuffer[1] = informationBuffer[1] + 1;
        Serial2.write(informationBuffer[0]);
        Serial2.write(informationBuffer[1]);
        Serial2.write('#');
        allReceived = false;
        actualBuffer = 0;
        informationBuffer[0] = 0;
        informationBuffer[1] = 0;
      }
}


void informationAll()
{
  actualBuffer = actualBuffer + 1;
  if (allReceived)
      {
        sendingBuffer = actualBuffer;
        while (sendingBuffer > 1)
        {
          Serial2.write(informationBuffer[actualBuffer - sendingBuffer]);
          sendingBuffer--;
        }
        if(actualBuffer < 5) // For first module in the chain
        {
          Serial2.write(informationBuffer[1] + 1);
        }
        else
        {
          Serial2.write(informationBuffer[actualBuffer - 13] + 1); // Incrementing Counter for modules
        }
        Serial2.write('_');
        Serial2.write(moduleType); // Who am I
        Serial2.write('_');
        byte actValue = EEPROM.read(0);
        Serial2.write(actValue); // Actual Value
        Serial2.write('_');
        Serial2.write(highLimit); // Upper Limit
        Serial2.write('_');
        Serial2.write(lowLimit); // Low Limit
        Serial2.write('_');
        Serial2.write(stepSize); // Step size
        Serial2.write('_');
        Serial2.write('#');
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
        Serial2.write('c');
        Serial2.write(informationBuffer[1] - 1);
        
        
        if(informationBuffer[1] == '1')           // 1 because only decremented when received at next module
        {
          Serial2.write('_');
          Serial2.write(moduleType); // Who am I
          Serial2.write('_');
          byte actValue = EEPROM.read(0);
          Serial2.write(actValue); // Actual Value
          Serial2.write('_');
          Serial2.write(highLimit); // Upper Limit
          Serial2.write('_');
          Serial2.write(lowLimit); // Low Limit
          Serial2.write('_');
          Serial2.write(stepSize); // Step size
          Serial2.write('_');
        }
        if(informationBuffer[1] < '1')
        { //mussten alle um eins erniedrigt werden, da ansonsten jedes mal nach dem ersten mit dem 3. Bit weiter übertragen worden wäre und somit Werte gelöscht werden würden
          Serial2.write(informationBuffer[2]);
          Serial2.write(informationBuffer[3]); // Who am I
          Serial2.write(informationBuffer[4]);
          Serial2.write(informationBuffer[5]); // Actual Value
          Serial2.write(informationBuffer[6]);
          Serial2.write(informationBuffer[7]); // Upper Limit
          Serial2.write(informationBuffer[8]);
          Serial2.write(informationBuffer[9]); // Low Limit
          Serial2.write(informationBuffer[10]);
          Serial2.write(informationBuffer[11]); // Step size
          Serial2.write(informationBuffer[12]);
        }
       
        Serial2.write('#');
        allReceived = false;
        actualBuffer = 0;
        sendingBuffer = 0;
        informationBuffer[0] = 0;
        informationBuffer[1] = 0;
      }
}


void getInformationValues()
{
  actualBuffer = actualBuffer + 1;
  if (allReceived)
      {
        Serial2.write('d');
        Serial2.write(informationBuffer[1] - 1);
        
        
        if(informationBuffer[1] == '1')           // 1 because only decremented when received at next module
        {
          EEPROM.write(0, informationBuffer[2]);  // Actual Value
        }
        allReceived = false;
        actualBuffer = 0;
        sendingBuffer = 0;
        informationBuffer[0] = 0;
        informationBuffer[1] = 0;
      }
}

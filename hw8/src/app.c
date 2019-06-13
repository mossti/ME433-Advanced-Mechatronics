/*******************************************************************************
  MPLAB Harmony Application Source File
  
  Company:
    Microchip Technology Inc.
  
  File Name:
    app.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It 
    implements the logic of the application's state machine and it may call 
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2013-2014 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 *******************************************************************************/
// DOM-IGNORE-END


// *****************************************************************************
// *****************************************************************************
// Section: Included Files 
// *****************************************************************************
// *****************************************************************************

#include "app.h"
#include <xc.h>
#include <sys/attribs.h>
#include <stdio.h>
#include <math.h>

#include "i2c_master_noint.h"
#include "ili9341.h"
#include "imu_lib_i2c.h"
#include "lcd_lib.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_Initialize function.
    
    Application strings and buffers are be defined outside this structure.
*/

APP_DATA appData;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary callback functions.
*/

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************


/* TODO:  Add any necessary local functions.
*/


// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    appData.state = APP_STATE_INIT;

    
    // to run hw7 code in harmony config. :
    __builtin_mtc0(_CP0_CONFIG, _CP0_CONFIG_SELECT, 0xa4210583);
    
    BMXCONbits.BMXWSDRM = 0x0;
    INTCONbits.MVEC = 0x1;
    DDPCONbits.JTAGEN = 0;
    TRISAbits.TRISA4 = 0;
    LATAbits.LATA4 = 0;
    SPI1_init();
    LCD_init();
    initIMU();
    LCD_clearScreen(ILI9341_BLACK);
    
    // to run hw1 code in harmony config. :
    // do your TRIS and LAT commands here
    //T1CONbits.TCKPS = 0b11;
    //T1CONbits.TGATE = 0;
    //T1CONbits.TCS = 0;
    //PR1 = 311;
    //TMR1 = 0;
    //T1CONbits.ON = 1;
    
    //TRISAbits.TRISA4 = 0;
    //LATAbits.LATA4 = 1;
    
    //TRISBbits.TRISB4 = 1;
    
    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
    
    
    
}


/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Tasks ( void )
{

    /* Check the application's current state. */
    switch ( appData.state )
    {
        /* Application's initial state. */
        case APP_STATE_INIT:
        {
            bool appInitialized = true;
       
        
            if (appInitialized)
            {
            
                appData.state = APP_STATE_SERVICE_TASKS;
                
                // to run hw1 in harmony config. :
                //int j = 0;
                //float time = 0;

                //__builtin_enable_interrupts();

                //_CP0_SET_COUNT(0);

                //while(1) {
                    // use _CP0_SET_COUNT(0) and _CP0_GET_COUNT() to test the PIC timing
                    // remember the core timer runs at half the sysclk
                //    while (PORTBbits.RB4 == 0) {
                //        LATAbits.LATA4 = 0;
                //    }
                //    if (_CP0_GET_COUNT() > 24000) {
                //        LATAbits.LATA4 = !LATAbits.LATA4;
                //        _CP0_SET_COUNT(0);
                //    }
                }
            
            break;
            }

        case APP_STATE_SERVICE_TASKS:
        {
            // to run hw7 in harmony config. :
            short temp[7];
            _CP0_SET_COUNT(0);
            int i = 0;
            
            LATAbits.LATA4 = !LATAbits.LATA4;
            
            short *output=get_multi_IMU(0x20,14,temp);
            char msg[100];
            
            for(i=0;i<7;i++) {
             sprintf(msg,"%d : %d   ", i, output[i]);
             LCD_print(msg,28,32+i*9,ILI9341_ORANGE,ILI9341_BLACK);
                
            }
            
            LCD_x_y_cross(output[4], output[5], ILI9341_BLUE, ILI9341_PINK);
            
            while(_CP0_GET_COUNT() < 1200000){;}
            
            break;
        }

        /* TODO: implement your application state machine.*/
        

        /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}

 

/*******************************************************************************
 End of File
 */

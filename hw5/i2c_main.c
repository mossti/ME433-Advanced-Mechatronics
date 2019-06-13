#include<xc.h>           // processor SFR definitions
#include<sys/attribs.h>  // __ISR macro
#include "i2c_header.h" // header file; includes helper functions

// DEVCFG0
#pragma config DEBUG = OFF // no debugging
#pragma config JTAGEN = OFF // no jtag
#pragma config ICESEL = ICS_PGx1 // use PGED1 and PGEC1
#pragma config PWP = OFF // no write protect
#pragma config BWP = OFF // no boot write protect
#pragma config CP = OFF // no code protect

// DEVCFG1
#pragma config FNOSC = PRIPLL // use primary oscillator with pll
#pragma config FSOSCEN = OFF // turn off secondary oscillator
#pragma config IESO = OFF // no switching clocks
#pragma config POSCMOD = HS // high speed crystal mode
#pragma config OSCIOFNC = OFF // disable secondary osc
#pragma config FPBDIV = DIV_1 // divide sysclk freq by 1 for peripheral bus clock
#pragma config FCKSM = CSDCMD // do not enable clock switch
#pragma config WDTPS = PS1048576 // use slowest wdt
#pragma config WINDIS = OFF // wdt no window mode
#pragma config FWDTEN = OFF // wdt disabled
#pragma config FWDTWINSZ = WINSZ_25 // wdt window at 25%

// DEVCFG2 - get the sysclk clock to 48MHz from the 8MHz crystal
#pragma config FPLLIDIV = DIV_2 // divide input clock to be in range 4-5MHz
#pragma config FPLLMUL = MUL_24 // multiply clock after FPLLIDIV
#pragma config FPLLODIV = DIV_2 // divide clock after FPLLMUL to get 48MHz
#pragma config UPLLIDIV = DIV_2 // divider for the 8MHz input clock, then multiplied by 12 to get 48MHz for USB
#pragma config UPLLEN = ON // USB clock on

// DEVCFG3
#pragma config USERID = 0 // some 16bit userid, doesn't matter what
#pragma config PMDL1WAY = OFF // allow multiple reconfigurations
#pragma config IOL1WAY = OFF // allow multiple reconfigurations
#pragma config FUSBIDIO = ON // USB pins controlled by USB module
#pragma config FVBUSONIO = ON // USB BUSON controlled by USB module

#define DELAYDELTA 4000000 // 0.001 s delay time w/ Core Timer
#define CS LATAbits.LATA0 // chip select
#define SLAVE_ADDRESS 0x20 // I2C hardware address for MCP

void initExpander() {
    i2c_master_setup(); // set up I2C2 at 100kHz rate
    
    i2c_master_start();
    i2c_master_send(SLAVE_ADDRESS << 1);
    i2c_master_send(0x00);
    i2c_master_send(0xF0);
    i2c_master_stop();
}

void setExpander(char pin, char level) {
    i2c_master_start();
    i2c_master_send(SLAVE_ADDRESS << 1);
    i2c_master_send(0x0A);
    i2c_master_send(level << pin);
    i2c_master_stop();
}


char returnExpander() {
    char level;
    i2c_master_start();
    i2c_master_send((SLAVE_ADDRESS << 1));
    i2c_master_send(0x09);
    i2c_master_restart();
    i2c_master_send((SLAVE_ADDRESS << 1)| 1);
    level = i2c_master_receive();
    i2c_master_ack(1); // send NACK to slave device
    i2c_master_stop();
    return level;
}

//void __ISR(_TIMER_1_VECTOR, IPL5SOFT) Timer1ISR(void) {
//    LATBINV = 0x1;
//    IFS0bits.T1IF = 0;
//}

int main() {

    __builtin_disable_interrupts();

    // set the CP0 CONFIG register to indicate that kseg0 is cacheable (0x3)
    __builtin_mtc0(_CP0_CONFIG, _CP0_CONFIG_SELECT, 0xa4210583);

    // 0 data RAM access wait states
    BMXCONbits.BMXWSDRM = 0x0;

    // enable multi vector interrupts
    INTCONbits.MVEC = 0x1;

    // disable JTAG to get pins back
    DDPCONbits.JTAGEN = 0;

    // turn off AN2, AN3 -> makes B2, B3 available pins for I2C
    ANSELBbits.ANSB2 = 0;
    ANSELBbits.ANSB3 = 0;
    
    // do your TRIS and LAT commands here
    TRISAbits.TRISA0 = 0; // chip select (output)
    TRISAbits.TRISA1 = 1; // SDO1 (output)
    TRISAbits.TRISA4 = 0; // LED1 (output)
    TRISBbits.TRISB4 = 1; // USER (input)
    LATAbits.LATA4 = 1; // LED2 (ON)
    
    initExpander();
    setExpander(0,1); // turn on GP0-connected LED
    
    __builtin_enable_interrupts();
    
    _CP0_SET_COUNT(0);
    while(_CP0_GET_COUNT() < 48000000) {} // 1s delay
    while(1) {
        // use _CP0_SET_COUNT(0) and _CP0_GET_COUNT() to test the PIC timing
        // remember the core timer runs at half the sysclk
        LATAbits.LATA4 = 1; // LED1 ON; USER button low if pressed
        setExpander(0,0); // turn off GP0-connected LED
        while((returnExpander()>>7)) {
            setExpander(0,1);
        }       
	}
    return 0;
}
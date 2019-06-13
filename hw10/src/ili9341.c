#include <xc.h>
#include "ili9341.h"
#include<math.h>

// spi pins
#define CS LATBbits.LATB7
#define DC LATBbits.LATB15

void LCD_init() {
    int time = 0;
    
    CS = 0; // CS
   
    LCD_command(ILI9341_SWRESET);
    time = _CP0_GET_COUNT();
    while (_CP0_GET_COUNT() < time + 7200000) {} // 300ms

    LCD_command(0xEF);
  	LCD_data(0x03);
	LCD_data(0x80);
	LCD_data(0x02);
    time = _CP0_GET_COUNT();
    while (_CP0_GET_COUNT() < time + 3600000) {} // 150ms
    
    LCD_command(0xCF);
  	LCD_data(0x00);
	LCD_data(0xC1);
	LCD_data(0x30);
    time = _CP0_GET_COUNT();
    while (_CP0_GET_COUNT() < time + 3600000) {} // 150ms
    
    LCD_command(0xED);
  	LCD_data(0x64);
	LCD_data(0x03);
	LCD_data(0x12);
    LCD_data(0x81);
    time = _CP0_GET_COUNT();
    while (_CP0_GET_COUNT() < time + 3600000) {} // 150ms
    
    LCD_command(0xE8);
  	LCD_data(0x85);
	LCD_data(0x00);
	LCD_data(0x78);
    time = _CP0_GET_COUNT();
    while (_CP0_GET_COUNT() < time + 3600000) {} // 150ms
    
    LCD_command(0xCB);
  	LCD_data(0x39);
	LCD_data(0x2C);
	LCD_data(0x00);
    LCD_data(0x34);
    LCD_data(0x02);
    time = _CP0_GET_COUNT();
    while (_CP0_GET_COUNT() < time + 3600000) {} // 150ms
    
    LCD_command(0xF7);
  	LCD_data(0x20);
    time = _CP0_GET_COUNT();
    while (_CP0_GET_COUNT() < time + 3600000) {} // 150ms
    
    LCD_command(0xEA);
  	LCD_data(0x00);
	LCD_data(0x00);
    time = _CP0_GET_COUNT();
    while (_CP0_GET_COUNT() < time + 3600000) {} // 150ms
    
    LCD_command(ILI9341_PWCTR1);
  	LCD_data(0x23);
    time = _CP0_GET_COUNT();
    while (_CP0_GET_COUNT() < time + 3600000) {} // 150ms
    
    LCD_command(ILI9341_PWCTR2);
  	LCD_data(0x10);
    time = _CP0_GET_COUNT();
    while (_CP0_GET_COUNT() < time + 3600000) {} // 150ms
    
    LCD_command(ILI9341_VMCTR1 );
  	LCD_data(0x3e);
    LCD_data(0x28);
    time = _CP0_GET_COUNT();
    while (_CP0_GET_COUNT() < time + 3600000) {} // 150ms
    
    LCD_command(ILI9341_VMCTR2);
  	LCD_data(0x86);
    time = _CP0_GET_COUNT();
    while (_CP0_GET_COUNT() < time + 3600000) {} // 150ms
    
    LCD_command(ILI9341_MADCTL);
  	LCD_data(0x48);
    time = _CP0_GET_COUNT();
    while (_CP0_GET_COUNT() < time + 3600000) {} // 150ms
/*    
    LCD_command(ILI9341_VSCRSADD);
  	LCD_data(0x00);
    time = _CP0_GET_COUNT();
    while (_CP0_GET_COUNT() < time + 3600000) {} // 150ms
 */   
    LCD_command(ILI9341_PIXFMT);
  	LCD_data(0x55);
    time = _CP0_GET_COUNT();
    while (_CP0_GET_COUNT() < time + 3600000) {} // 150ms
    
    LCD_command(ILI9341_FRMCTR1);
  	LCD_data(0x00);
    LCD_data(0x18);
    time = _CP0_GET_COUNT();
    while (_CP0_GET_COUNT() < time + 3600000) {} // 150ms
    
    LCD_command( ILI9341_DFUNCTR);
  	LCD_data(0x08);
    LCD_data(0x82);
    LCD_data(0x27);
    time = _CP0_GET_COUNT();
    while (_CP0_GET_COUNT() < time + 3600000) {} // 150ms
    
    LCD_command(0xF2);
  	LCD_data(0); // 1
    LCD_data(0x00);
    time = _CP0_GET_COUNT();
    while (_CP0_GET_COUNT() < time + 3600000) {} // 150ms
    
    LCD_command(ILI9341_GAMMASET);
  	LCD_data(0x01);
    time = _CP0_GET_COUNT();
    while (_CP0_GET_COUNT() < time + 3600000) {} // 150ms
    
    LCD_command(ILI9341_GMCTRP1);
  	LCD_data(0x0F);
    LCD_data(0x31);
    LCD_data(0x2B);
    LCD_data(0x0C);
    LCD_data(0x0E);
    LCD_data(0x08);
    LCD_data(0x4E);
    LCD_data(0xF1);
    LCD_data(0x37);
    LCD_data(0x07);
    LCD_data(0x10);
    LCD_data(0x03);
    LCD_data(0x0E);
    LCD_data(0x09);
    LCD_data(0x00);
    time = _CP0_GET_COUNT();
    while (_CP0_GET_COUNT() < time + 3600000) {} // 150ms
    
    LCD_command(ILI9341_GMCTRN1);
  	LCD_data(0x00);
    LCD_data(0x0E);
    LCD_data(0x14);
    LCD_data(0x03);
    LCD_data(0x11);
    LCD_data(0x07);
    LCD_data(0x31);
    LCD_data(0xC1);
    LCD_data(0x48);
    LCD_data(0x08);
    LCD_data(0x0F);
    LCD_data(0x0C);
    LCD_data(0x31);
    LCD_data(0x36);
    LCD_data(0x0F);
    time = _CP0_GET_COUNT();
    while (_CP0_GET_COUNT() < time + 3600000) {} // 150ms
    
    LCD_command(0xB1);
  	LCD_data(0x00);
    LCD_data(0x10);
    time = _CP0_GET_COUNT();
    while (_CP0_GET_COUNT() < time + 3600000) {} // 150ms
    
    LCD_command(ILI9341_SLPOUT);
    time = _CP0_GET_COUNT();
    while (_CP0_GET_COUNT() < time + 3600000) {} // 150ms
    
    LCD_command(ILI9341_DISPON);
    
    CS = 1; // CS
    time = _CP0_GET_COUNT();
    while (_CP0_GET_COUNT() < time + 3600000) {} // 150ms
    
    
    CS = 0; // CS
    
    LCD_command(ILI9341_MADCTL);
    LCD_data(MADCTL_MX | MADCTL_BGR); // rotation
    time = _CP0_GET_COUNT();
    while (_CP0_GET_COUNT() < time + 3600000) {} // 150ms
    
    CS = 1; // CS
}

void SPI1_init() {
  SDI1Rbits.SDI1R = 0b0100; // B8 is SDI1
  RPA1Rbits.RPA1R = 0b0011; // A1 is SDO1
  TRISBbits.TRISB7 = 0; // CS is B7
  CS = 1; // CS starts high

  // DC pin
  TRISBbits.TRISB15 = 0;
  DC = 1;
  
  SPI1CON = 0; // turn off the spi module and reset it
  SPI1BUF; // clear the rx buffer by reading from it
  SPI1BRG = 0; // baud rate to 12 MHz [SPI1BRG = (48000000/(2*desired))-1]
  SPI1STATbits.SPIROV = 0; // clear the overflow bit
  SPI1CONbits.CKE = 1; // data changes when clock goes from hi to lo (since CKP is 0)
  SPI1CONbits.MSTEN = 1; // master operation
  SPI1CONbits.ON = 1; // turn on spi1
}

unsigned char spi_io(unsigned char o) {
  SPI1BUF = o;
  while(!SPI1STATbits.SPIRBF) { // wait to receive the byte
    ;
  }
  return SPI1BUF;
}

void LCD_command(unsigned char com) {
    DC = 0; // DC
    spi_io(com);
    DC = 1; // DC
}

void LCD_data(unsigned char dat) {
    spi_io(dat);
}

void LCD_data16(unsigned short dat) {
    spi_io(dat>>8);
    spi_io(dat);
}

void LCD_setAddr(unsigned short x, unsigned short y, unsigned short w, unsigned short h) {
    LCD_command(ILI9341_CASET); // Column
    LCD_data16(x);
	LCD_data16(x+w-1);

	LCD_command(ILI9341_PASET); // Page
	LCD_data16(y);
	LCD_data16(y+h-1);

	LCD_command(ILI9341_RAMWR); // Into RAM
}

void LCD_drawPixel(unsigned short x, unsigned short y, unsigned short color) {
  // check boundary
    
    CS = 0; // CS
    
    LCD_setAddr(x,y,1,1);
    LCD_data16(color);
    
    CS = 1; // CS
}

void LCD_clearScreen(unsigned short color) {
    int i;
    
    CS = 0; // CS
    
    LCD_setAddr(0,0,ILI9341_TFTWIDTH,ILI9341_TFTHEIGHT);
	for (i = 0;i < ILI9341_TFTWIDTH*ILI9341_TFTHEIGHT; i++){
		LCD_data16(color);
	}
    
    CS = 1; // CS
}

void drawLetter(char letter, unsigned short x, unsigned short y, unsigned c1, unsigned c2) {
    unsigned short i = 0, j = 0;
    for (i=0; i<5; i++) {
        char color = ASCII[letter - 0x20][i];
        for (j=0; j<7; j++) {
            char bit = ((color >> j) & 1); 
            if (bit == 1) {
                LCD_drawPixel(x+i, y+j, c1);            // c1 & c2 are colors
            }
            else {
                LCD_drawPixel(x+i, y+j, c2);
            }
        }
    }
}

void print2LCD(char *message, unsigned short x, unsigned short y, unsigned c1, unsigned c2) {
    unsigned short k = 0;
        while(message[k]){ 
            //display_character(array[i]); 
            drawLetter(message[k], x + (5*k), y, c1, c2); // each letter has 5 spaces
            k++;
        }
}

void barX(unsigned short x, unsigned short y, unsigned short length, signed short Ax, unsigned c1, unsigned c2) {
    unsigned short m = 0, n = 0, l = 0, neg = 0;
    for (n=0; n<=length; n++) {
        for (m=0; m<7; m++) {  //height       
            LCD_drawPixel(x + n, y+m, c1);
            LCD_drawPixel(x - n, y+m, c1);
            if (Ax >= 0) {
                for (l = 0; l <= Ax; l++) {
                    LCD_drawPixel(x + l, y+m, c2);
                }
            }
            if (Ax < 0){ 
                for (neg = 0; neg <= abs(Ax); neg++) {
                    LCD_drawPixel(x - neg, y+m, c2);
                }
            } 
        }
    }
}

void barY(unsigned short x, unsigned short y, unsigned short length, signed short Ay, unsigned c1, unsigned c2) {
    unsigned short m = 0, n = 0, l = 0, neg =0;
    for (n=0; n<=length; n++) {
        for (m=0; m<7; m++) {  //height       
            LCD_drawPixel(x + m, y+n, c1);
            LCD_drawPixel(x + m, y-n+8, c1);
            if (Ay >= 0) {
                for (l = 0; l <= Ay; l++) {
                    LCD_drawPixel(x + m, y+l, c2);
                }
            }
            if (Ay < 0){ 
                for (neg = 0; neg <= abs(Ay); neg++) {
                    LCD_drawPixel(x + m, y-neg, c2);
                }
            }
        }
    }
}

void LCD_x_y_cross(short x, short y, unsigned short pc, unsigned short bc){
    /*Function draws progress cross bar at center of LCD
     * x: amount to fill in x axis
     * y: amount to fill in y axis
     * pc: fill color
     * bc: cross background color
     */
    float scale=0.02;
    x=(-1)*x*scale+120;
    y=(-1)*y*scale+160;
//    char msg[100];
//    sprintf(msg,"%d",y);
//    LCD_print(msg,120,32,ILI9341_ORANGE,ILI9341_BLACK);
    
    int i,j,k,l,m,n;
    int thickness=4;
    
    if (x>120){
        for(i=0;i<120;i++){
            for (j=158;j<158+thickness;j++){
                LCD_drawPixel(i,j,bc);
            }
        }
        for (k=x;k<240;k++){
            for (l=158;l<158+thickness;l++){
                LCD_drawPixel(k,l,bc);
            }
        }
        for (m=120;m<x;m++){
            for(n=158;n<158+thickness;n++){
                LCD_drawPixel(m,n,pc);
            }
        }
    }else {
        for (i=240;i>120;i--){
            for (j=158;j<158+thickness;j++){
                LCD_drawPixel(i,j,bc);
            }
        }
        for (k=0;k<x;k++){
            for (l=158;l<158+thickness;l++){
                LCD_drawPixel(k,l,bc);
            }
        }
        for (m=x; m<119; m++){
            for (n=158;n<158+thickness;n++){
                LCD_drawPixel(m,n,pc);
            }
        }
    }
//    
    if (y>160){
        for(i=0;i<160;i++){
            for (j=118;j<118+thickness;j++){
                LCD_drawPixel(j,i,bc);
            }
        }
        for (k=y;k<320;k++){
            for (l=118;l<118+thickness;l++){
                LCD_drawPixel(l,k,bc);
            }
        }
        for (m=160;m<y;m++){
            for(n=118;n<118+thickness;n++){
                LCD_drawPixel(n,m,pc);
            }
        }
    }else {
        for (i=320;i>160;i--){
            for (j=118;j<118+thickness;j++){
                LCD_drawPixel(j,i,bc);
            }
        }
        for (k=y;k>0;k--){
            for (l=118;l<118+thickness;l++){
                LCD_drawPixel(l,k,bc);
            }
        }
        for (m=160; m>y; m--){
            for (n=118;n<118+thickness;n++){
                LCD_drawPixel(n,m,pc);
            }
        }
    }
}

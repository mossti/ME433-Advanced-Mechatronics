#ifndef I2C_HEADER_H__
#define I2C_HEADER_H__

void i2c_master_setup(void);
void i2c_master_start(void);
void i2c_master_restart(void);
void i2c_master_send(unsigned char byte);
unsigned char i2c_master_receive(void);
void i2c_master_ack(int val);
void i2c_master_stop(void);

#endif
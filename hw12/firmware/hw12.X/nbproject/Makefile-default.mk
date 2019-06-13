#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/hw12.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/hw12.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../../../microchip/harmony/v2_06/framework/driver/driver.h ../../../../microchip/harmony/v2_06/framework/driver/driver_common.h ../../../../microchip/harmony/v2_06/framework/osal/osal.h ../../../../microchip/harmony/v2_06/framework/osal/osal_definitions.h ../../../../microchip/harmony/v2_06/framework/osal/osal_impl_basic.h ../../../../microchip/harmony/v2_06/framework/system/common/sys_common.h ../../../../microchip/harmony/v2_06/framework/system/common/sys_module.h ../../../../microchip/harmony/v2_06/framework/system/common/sys_buffer.h ../../../../microchip/harmony/v2_06/framework/system/common/sys_queue.h ../../../../microchip/harmony/v2_06/framework/system/clk/sys_clk.h ../../../../microchip/harmony/v2_06/framework/system/clk/sys_clk_compatibility.h ../../../../microchip/harmony/v2_06/framework/system/clk/sys_clk_mapping.h ../../../../microchip/harmony/v2_06/framework/system/ports/sys_ports.h ../../../../microchip/harmony/v2_06/framework/system/ports/sys_ports_definitions.h ../../../../microchip/harmony/v2_06/framework/system/debug/sys_debug.h ../../../../microchip/harmony/v2_06/framework/system/int/sys_int.h ../../../../microchip/harmony/v2_06/framework/system/int/sys_int_mapping.h ../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c ../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_private.h ../../../../microchip/harmony/v2_06/framework/system/system.h ../../../../microchip/harmony/v2_06/framework/usb/usb_common.h ../../../../microchip/harmony/v2_06/framework/usb/usb_chapter_9.h ../../../../microchip/harmony/v2_06/framework/usb/usb_hub.h ../../../../microchip/harmony/v2_06/framework/usb/usb_host_hub.h ../../../../microchip/harmony/v2_06/framework/driver/usb/drv_usb.h ../../../../microchip/harmony/v2_06/framework/usb/usb_host_client_driver.h ../../../../microchip/harmony/v2_06/framework/usb/usb_host.h ../../../../microchip/harmony/v2_06/framework/usb/usb_host_hub_interface.h ../../../../microchip/harmony/v2_06/framework/driver/usb/usbhs/drv_usbhs.h ../../../../microchip/harmony/v2_06/framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c ../../../../microchip/harmony/v2_06/framework/driver/usb/usbfs/drv_usbfs.h ../../../../microchip/harmony/v2_06/framework/driver/usb/usbfs/drv_usbfs_mapping.h ../../../../microchip/harmony/v2_06/framework/driver/usb/usbfs/src/drv_usbfs_local.h ../../../../microchip/harmony/v2_06/framework/driver/usb/usbfs/src/drv_usbfs_variant_mapping.h ../../../../microchip/harmony/v2_06/framework/usb/usb_device.h ../../../../microchip/harmony/v2_06/framework/usb/src/dynamic/usb_device.c ../../../../microchip/harmony/v2_06/framework/usb/src/usb_device_function_driver.h ../../../../microchip/harmony/v2_06/framework/usb/usb_billboard.h ../../../../microchip/harmony/v2_06/framework/usb/src/usb_device_local.h ../../../../microchip/harmony/v2_06/framework/usb/src/usb_device_mapping.h ../../../../microchip/harmony/v2_06/framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c ../../../../microchip/harmony/v2_06/framework/usb/src/dynamic/usb_device_endpoint_functions.c ../src/app.h ../src/app.c ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c ../src/system_config/default/framework/system/devcon/sys_devcon.h ../src/system_config/default/framework/system/devcon/src/sys_devcon.c ../src/system_config/default/framework/system/devcon/src/sys_devcon_local.h ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/system_config.h ../src/system_config/default/system_definitions.h ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_exceptions.c ../src/main.c ../src/system_config/default/system_tasks.c ../src/i2c_master_noint.c ../src/ili9341.c ../src/imu_lib_i2c.c ../src/lcd_lib.c ../src/mouse.c ../src/mouse.h ../src/lcd_lib.h ../src/imu_lib_i2c.h ../src/ili9341.h ../src/i2c_master_noint.h

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/121307975/driver.o ${OBJECTDIR}/_ext/121307975/driver_common.o ${OBJECTDIR}/_ext/1323358190/osal.o ${OBJECTDIR}/_ext/1323358190/osal_definitions.o ${OBJECTDIR}/_ext/1323358190/osal_impl_basic.o ${OBJECTDIR}/_ext/1499609548/sys_common.o ${OBJECTDIR}/_ext/1499609548/sys_module.o ${OBJECTDIR}/_ext/1499609548/sys_buffer.o ${OBJECTDIR}/_ext/1499609548/sys_queue.o ${OBJECTDIR}/_ext/585524449/sys_clk.o ${OBJECTDIR}/_ext/585524449/sys_clk_compatibility.o ${OBJECTDIR}/_ext/585524449/sys_clk_mapping.o ${OBJECTDIR}/_ext/60385297/sys_ports.o ${OBJECTDIR}/_ext/60385297/sys_ports_definitions.o ${OBJECTDIR}/_ext/48989778/sys_debug.o ${OBJECTDIR}/_ext/585530286/sys_int.o ${OBJECTDIR}/_ext/585530286/sys_int_mapping.o ${OBJECTDIR}/_ext/249303043/sys_int_pic32.o ${OBJECTDIR}/_ext/249303043/sys_int_private.o ${OBJECTDIR}/_ext/557505870/system.o ${OBJECTDIR}/_ext/372947259/usb_common.o ${OBJECTDIR}/_ext/372947259/usb_chapter_9.o ${OBJECTDIR}/_ext/372947259/usb_hub.o ${OBJECTDIR}/_ext/372947259/usb_host_hub.o ${OBJECTDIR}/_ext/536947388/drv_usb.o ${OBJECTDIR}/_ext/372947259/usb_host_client_driver.o ${OBJECTDIR}/_ext/372947259/usb_host.o ${OBJECTDIR}/_ext/372947259/usb_host_hub_interface.o ${OBJECTDIR}/_ext/1357345916/drv_usbhs.o ${OBJECTDIR}/_ext/1301715651/drv_usbfs.o ${OBJECTDIR}/_ext/1357345854/drv_usbfs.o ${OBJECTDIR}/_ext/1357345854/drv_usbfs_mapping.o ${OBJECTDIR}/_ext/342998893/drv_usbfs_local.o ${OBJECTDIR}/_ext/342998893/drv_usbfs_variant_mapping.o ${OBJECTDIR}/_ext/372947259/usb_device.o ${OBJECTDIR}/_ext/983442742/usb_device.o ${OBJECTDIR}/_ext/1688303514/usb_device_function_driver.o ${OBJECTDIR}/_ext/372947259/usb_billboard.o ${OBJECTDIR}/_ext/1688303514/usb_device_local.o ${OBJECTDIR}/_ext/1688303514/usb_device_mapping.o ${OBJECTDIR}/_ext/1301715651/drv_usbfs_device.o ${OBJECTDIR}/_ext/983442742/usb_device_endpoint_functions.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ${OBJECTDIR}/_ext/1013012183/sys_devcon.o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ${OBJECTDIR}/_ext/340578644/sys_devcon_local.o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/1688732426/system_config.o ${OBJECTDIR}/_ext/1688732426/system_definitions.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o ${OBJECTDIR}/_ext/1360937237/ili9341.o ${OBJECTDIR}/_ext/1360937237/imu_lib_i2c.o ${OBJECTDIR}/_ext/1360937237/lcd_lib.o ${OBJECTDIR}/_ext/1360937237/mouse.o ${OBJECTDIR}/_ext/1360937237/mouse.o ${OBJECTDIR}/_ext/1360937237/lcd_lib.o ${OBJECTDIR}/_ext/1360937237/imu_lib_i2c.o ${OBJECTDIR}/_ext/1360937237/ili9341.o ${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/121307975/driver.o.d ${OBJECTDIR}/_ext/121307975/driver_common.o.d ${OBJECTDIR}/_ext/1323358190/osal.o.d ${OBJECTDIR}/_ext/1323358190/osal_definitions.o.d ${OBJECTDIR}/_ext/1323358190/osal_impl_basic.o.d ${OBJECTDIR}/_ext/1499609548/sys_common.o.d ${OBJECTDIR}/_ext/1499609548/sys_module.o.d ${OBJECTDIR}/_ext/1499609548/sys_buffer.o.d ${OBJECTDIR}/_ext/1499609548/sys_queue.o.d ${OBJECTDIR}/_ext/585524449/sys_clk.o.d ${OBJECTDIR}/_ext/585524449/sys_clk_compatibility.o.d ${OBJECTDIR}/_ext/585524449/sys_clk_mapping.o.d ${OBJECTDIR}/_ext/60385297/sys_ports.o.d ${OBJECTDIR}/_ext/60385297/sys_ports_definitions.o.d ${OBJECTDIR}/_ext/48989778/sys_debug.o.d ${OBJECTDIR}/_ext/585530286/sys_int.o.d ${OBJECTDIR}/_ext/585530286/sys_int_mapping.o.d ${OBJECTDIR}/_ext/249303043/sys_int_pic32.o.d ${OBJECTDIR}/_ext/249303043/sys_int_private.o.d ${OBJECTDIR}/_ext/557505870/system.o.d ${OBJECTDIR}/_ext/372947259/usb_common.o.d ${OBJECTDIR}/_ext/372947259/usb_chapter_9.o.d ${OBJECTDIR}/_ext/372947259/usb_hub.o.d ${OBJECTDIR}/_ext/372947259/usb_host_hub.o.d ${OBJECTDIR}/_ext/536947388/drv_usb.o.d ${OBJECTDIR}/_ext/372947259/usb_host_client_driver.o.d ${OBJECTDIR}/_ext/372947259/usb_host.o.d ${OBJECTDIR}/_ext/372947259/usb_host_hub_interface.o.d ${OBJECTDIR}/_ext/1357345916/drv_usbhs.o.d ${OBJECTDIR}/_ext/1301715651/drv_usbfs.o.d ${OBJECTDIR}/_ext/1357345854/drv_usbfs.o.d ${OBJECTDIR}/_ext/1357345854/drv_usbfs_mapping.o.d ${OBJECTDIR}/_ext/342998893/drv_usbfs_local.o.d ${OBJECTDIR}/_ext/342998893/drv_usbfs_variant_mapping.o.d ${OBJECTDIR}/_ext/372947259/usb_device.o.d ${OBJECTDIR}/_ext/983442742/usb_device.o.d ${OBJECTDIR}/_ext/1688303514/usb_device_function_driver.o.d ${OBJECTDIR}/_ext/372947259/usb_billboard.o.d ${OBJECTDIR}/_ext/1688303514/usb_device_local.o.d ${OBJECTDIR}/_ext/1688303514/usb_device_mapping.o.d ${OBJECTDIR}/_ext/1301715651/drv_usbfs_device.o.d ${OBJECTDIR}/_ext/983442742/usb_device_endpoint_functions.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d ${OBJECTDIR}/_ext/1013012183/sys_devcon.o.d ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d ${OBJECTDIR}/_ext/340578644/sys_devcon_local.o.d ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d ${OBJECTDIR}/_ext/1688732426/system_config.o.d ${OBJECTDIR}/_ext/1688732426/system_definitions.o.d ${OBJECTDIR}/_ext/1688732426/system_init.o.d ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o.d ${OBJECTDIR}/_ext/1360937237/ili9341.o.d ${OBJECTDIR}/_ext/1360937237/imu_lib_i2c.o.d ${OBJECTDIR}/_ext/1360937237/lcd_lib.o.d ${OBJECTDIR}/_ext/1360937237/mouse.o.d ${OBJECTDIR}/_ext/1360937237/mouse.o.d ${OBJECTDIR}/_ext/1360937237/lcd_lib.o.d ${OBJECTDIR}/_ext/1360937237/imu_lib_i2c.o.d ${OBJECTDIR}/_ext/1360937237/ili9341.o.d ${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/121307975/driver.o ${OBJECTDIR}/_ext/121307975/driver_common.o ${OBJECTDIR}/_ext/1323358190/osal.o ${OBJECTDIR}/_ext/1323358190/osal_definitions.o ${OBJECTDIR}/_ext/1323358190/osal_impl_basic.o ${OBJECTDIR}/_ext/1499609548/sys_common.o ${OBJECTDIR}/_ext/1499609548/sys_module.o ${OBJECTDIR}/_ext/1499609548/sys_buffer.o ${OBJECTDIR}/_ext/1499609548/sys_queue.o ${OBJECTDIR}/_ext/585524449/sys_clk.o ${OBJECTDIR}/_ext/585524449/sys_clk_compatibility.o ${OBJECTDIR}/_ext/585524449/sys_clk_mapping.o ${OBJECTDIR}/_ext/60385297/sys_ports.o ${OBJECTDIR}/_ext/60385297/sys_ports_definitions.o ${OBJECTDIR}/_ext/48989778/sys_debug.o ${OBJECTDIR}/_ext/585530286/sys_int.o ${OBJECTDIR}/_ext/585530286/sys_int_mapping.o ${OBJECTDIR}/_ext/249303043/sys_int_pic32.o ${OBJECTDIR}/_ext/249303043/sys_int_private.o ${OBJECTDIR}/_ext/557505870/system.o ${OBJECTDIR}/_ext/372947259/usb_common.o ${OBJECTDIR}/_ext/372947259/usb_chapter_9.o ${OBJECTDIR}/_ext/372947259/usb_hub.o ${OBJECTDIR}/_ext/372947259/usb_host_hub.o ${OBJECTDIR}/_ext/536947388/drv_usb.o ${OBJECTDIR}/_ext/372947259/usb_host_client_driver.o ${OBJECTDIR}/_ext/372947259/usb_host.o ${OBJECTDIR}/_ext/372947259/usb_host_hub_interface.o ${OBJECTDIR}/_ext/1357345916/drv_usbhs.o ${OBJECTDIR}/_ext/1301715651/drv_usbfs.o ${OBJECTDIR}/_ext/1357345854/drv_usbfs.o ${OBJECTDIR}/_ext/1357345854/drv_usbfs_mapping.o ${OBJECTDIR}/_ext/342998893/drv_usbfs_local.o ${OBJECTDIR}/_ext/342998893/drv_usbfs_variant_mapping.o ${OBJECTDIR}/_ext/372947259/usb_device.o ${OBJECTDIR}/_ext/983442742/usb_device.o ${OBJECTDIR}/_ext/1688303514/usb_device_function_driver.o ${OBJECTDIR}/_ext/372947259/usb_billboard.o ${OBJECTDIR}/_ext/1688303514/usb_device_local.o ${OBJECTDIR}/_ext/1688303514/usb_device_mapping.o ${OBJECTDIR}/_ext/1301715651/drv_usbfs_device.o ${OBJECTDIR}/_ext/983442742/usb_device_endpoint_functions.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ${OBJECTDIR}/_ext/1013012183/sys_devcon.o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ${OBJECTDIR}/_ext/340578644/sys_devcon_local.o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/1688732426/system_config.o ${OBJECTDIR}/_ext/1688732426/system_definitions.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o ${OBJECTDIR}/_ext/1360937237/ili9341.o ${OBJECTDIR}/_ext/1360937237/imu_lib_i2c.o ${OBJECTDIR}/_ext/1360937237/lcd_lib.o ${OBJECTDIR}/_ext/1360937237/mouse.o ${OBJECTDIR}/_ext/1360937237/mouse.o ${OBJECTDIR}/_ext/1360937237/lcd_lib.o ${OBJECTDIR}/_ext/1360937237/imu_lib_i2c.o ${OBJECTDIR}/_ext/1360937237/ili9341.o ${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o

# Source Files
SOURCEFILES=../../../../microchip/harmony/v2_06/framework/driver/driver.h ../../../../microchip/harmony/v2_06/framework/driver/driver_common.h ../../../../microchip/harmony/v2_06/framework/osal/osal.h ../../../../microchip/harmony/v2_06/framework/osal/osal_definitions.h ../../../../microchip/harmony/v2_06/framework/osal/osal_impl_basic.h ../../../../microchip/harmony/v2_06/framework/system/common/sys_common.h ../../../../microchip/harmony/v2_06/framework/system/common/sys_module.h ../../../../microchip/harmony/v2_06/framework/system/common/sys_buffer.h ../../../../microchip/harmony/v2_06/framework/system/common/sys_queue.h ../../../../microchip/harmony/v2_06/framework/system/clk/sys_clk.h ../../../../microchip/harmony/v2_06/framework/system/clk/sys_clk_compatibility.h ../../../../microchip/harmony/v2_06/framework/system/clk/sys_clk_mapping.h ../../../../microchip/harmony/v2_06/framework/system/ports/sys_ports.h ../../../../microchip/harmony/v2_06/framework/system/ports/sys_ports_definitions.h ../../../../microchip/harmony/v2_06/framework/system/debug/sys_debug.h ../../../../microchip/harmony/v2_06/framework/system/int/sys_int.h ../../../../microchip/harmony/v2_06/framework/system/int/sys_int_mapping.h ../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c ../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_private.h ../../../../microchip/harmony/v2_06/framework/system/system.h ../../../../microchip/harmony/v2_06/framework/usb/usb_common.h ../../../../microchip/harmony/v2_06/framework/usb/usb_chapter_9.h ../../../../microchip/harmony/v2_06/framework/usb/usb_hub.h ../../../../microchip/harmony/v2_06/framework/usb/usb_host_hub.h ../../../../microchip/harmony/v2_06/framework/driver/usb/drv_usb.h ../../../../microchip/harmony/v2_06/framework/usb/usb_host_client_driver.h ../../../../microchip/harmony/v2_06/framework/usb/usb_host.h ../../../../microchip/harmony/v2_06/framework/usb/usb_host_hub_interface.h ../../../../microchip/harmony/v2_06/framework/driver/usb/usbhs/drv_usbhs.h ../../../../microchip/harmony/v2_06/framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c ../../../../microchip/harmony/v2_06/framework/driver/usb/usbfs/drv_usbfs.h ../../../../microchip/harmony/v2_06/framework/driver/usb/usbfs/drv_usbfs_mapping.h ../../../../microchip/harmony/v2_06/framework/driver/usb/usbfs/src/drv_usbfs_local.h ../../../../microchip/harmony/v2_06/framework/driver/usb/usbfs/src/drv_usbfs_variant_mapping.h ../../../../microchip/harmony/v2_06/framework/usb/usb_device.h ../../../../microchip/harmony/v2_06/framework/usb/src/dynamic/usb_device.c ../../../../microchip/harmony/v2_06/framework/usb/src/usb_device_function_driver.h ../../../../microchip/harmony/v2_06/framework/usb/usb_billboard.h ../../../../microchip/harmony/v2_06/framework/usb/src/usb_device_local.h ../../../../microchip/harmony/v2_06/framework/usb/src/usb_device_mapping.h ../../../../microchip/harmony/v2_06/framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c ../../../../microchip/harmony/v2_06/framework/usb/src/dynamic/usb_device_endpoint_functions.c ../src/app.h ../src/app.c ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c ../src/system_config/default/framework/system/devcon/sys_devcon.h ../src/system_config/default/framework/system/devcon/src/sys_devcon.c ../src/system_config/default/framework/system/devcon/src/sys_devcon_local.h ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/system_config.h ../src/system_config/default/system_definitions.h ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_exceptions.c ../src/main.c ../src/system_config/default/system_tasks.c ../src/i2c_master_noint.c ../src/ili9341.c ../src/imu_lib_i2c.c ../src/lcd_lib.c ../src/mouse.c ../src/mouse.h ../src/lcd_lib.h ../src/imu_lib_i2c.h ../src/ili9341.h ../src/i2c_master_noint.h


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/hw12.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX250F128B
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/249303043/sys_int_pic32.o: ../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/249303043" 
	@${RM} ${OBJECTDIR}/_ext/249303043/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/249303043/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/249303043/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/249303043/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/249303043/sys_int_pic32.o ../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1301715651/drv_usbfs.o: ../../../../microchip/harmony/v2_06/framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1301715651" 
	@${RM} ${OBJECTDIR}/_ext/1301715651/drv_usbfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1301715651/drv_usbfs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1301715651/drv_usbfs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1301715651/drv_usbfs.o.d" -o ${OBJECTDIR}/_ext/1301715651/drv_usbfs.o ../../../../microchip/harmony/v2_06/framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/983442742/usb_device.o: ../../../../microchip/harmony/v2_06/framework/usb/src/dynamic/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/983442742" 
	@${RM} ${OBJECTDIR}/_ext/983442742/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/983442742/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/983442742/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/983442742/usb_device.o.d" -o ${OBJECTDIR}/_ext/983442742/usb_device.o ../../../../microchip/harmony/v2_06/framework/usb/src/dynamic/usb_device.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1301715651/drv_usbfs_device.o: ../../../../microchip/harmony/v2_06/framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1301715651" 
	@${RM} ${OBJECTDIR}/_ext/1301715651/drv_usbfs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1301715651/drv_usbfs_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1301715651/drv_usbfs_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1301715651/drv_usbfs_device.o.d" -o ${OBJECTDIR}/_ext/1301715651/drv_usbfs_device.o ../../../../microchip/harmony/v2_06/framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/983442742/usb_device_endpoint_functions.o: ../../../../microchip/harmony/v2_06/framework/usb/src/dynamic/usb_device_endpoint_functions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/983442742" 
	@${RM} ${OBJECTDIR}/_ext/983442742/usb_device_endpoint_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/983442742/usb_device_endpoint_functions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/983442742/usb_device_endpoint_functions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/983442742/usb_device_endpoint_functions.o.d" -o ${OBJECTDIR}/_ext/983442742/usb_device_endpoint_functions.o ../../../../microchip/harmony/v2_06/framework/usb/src/dynamic/usb_device_endpoint_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o: ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/340578644/sys_devcon.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/340578644/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ../src/system_config/default/framework/system/devcon/src/sys_devcon.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o: ../src/i2c_master_noint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o.d" -o ${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o ../src/i2c_master_noint.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/ili9341.o: ../src/ili9341.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ili9341.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ili9341.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/ili9341.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/ili9341.o.d" -o ${OBJECTDIR}/_ext/1360937237/ili9341.o ../src/ili9341.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/imu_lib_i2c.o: ../src/imu_lib_i2c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/imu_lib_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/imu_lib_i2c.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/imu_lib_i2c.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/imu_lib_i2c.o.d" -o ${OBJECTDIR}/_ext/1360937237/imu_lib_i2c.o ../src/imu_lib_i2c.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/lcd_lib.o: ../src/lcd_lib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/lcd_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/lcd_lib.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/lcd_lib.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/lcd_lib.o.d" -o ${OBJECTDIR}/_ext/1360937237/lcd_lib.o ../src/lcd_lib.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/mouse.o: ../src/mouse.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mouse.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mouse.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/mouse.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/mouse.o.d" -o ${OBJECTDIR}/_ext/1360937237/mouse.o ../src/mouse.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/249303043/sys_int_pic32.o: ../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/249303043" 
	@${RM} ${OBJECTDIR}/_ext/249303043/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/249303043/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/249303043/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/249303043/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/249303043/sys_int_pic32.o ../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1301715651/drv_usbfs.o: ../../../../microchip/harmony/v2_06/framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1301715651" 
	@${RM} ${OBJECTDIR}/_ext/1301715651/drv_usbfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1301715651/drv_usbfs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1301715651/drv_usbfs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1301715651/drv_usbfs.o.d" -o ${OBJECTDIR}/_ext/1301715651/drv_usbfs.o ../../../../microchip/harmony/v2_06/framework/driver/usb/usbfs/src/dynamic/drv_usbfs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/983442742/usb_device.o: ../../../../microchip/harmony/v2_06/framework/usb/src/dynamic/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/983442742" 
	@${RM} ${OBJECTDIR}/_ext/983442742/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/983442742/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/983442742/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/983442742/usb_device.o.d" -o ${OBJECTDIR}/_ext/983442742/usb_device.o ../../../../microchip/harmony/v2_06/framework/usb/src/dynamic/usb_device.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1301715651/drv_usbfs_device.o: ../../../../microchip/harmony/v2_06/framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1301715651" 
	@${RM} ${OBJECTDIR}/_ext/1301715651/drv_usbfs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1301715651/drv_usbfs_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1301715651/drv_usbfs_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1301715651/drv_usbfs_device.o.d" -o ${OBJECTDIR}/_ext/1301715651/drv_usbfs_device.o ../../../../microchip/harmony/v2_06/framework/driver/usb/usbfs/src/dynamic/drv_usbfs_device.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/983442742/usb_device_endpoint_functions.o: ../../../../microchip/harmony/v2_06/framework/usb/src/dynamic/usb_device_endpoint_functions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/983442742" 
	@${RM} ${OBJECTDIR}/_ext/983442742/usb_device_endpoint_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/983442742/usb_device_endpoint_functions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/983442742/usb_device_endpoint_functions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/983442742/usb_device_endpoint_functions.o.d" -o ${OBJECTDIR}/_ext/983442742/usb_device_endpoint_functions.o ../../../../microchip/harmony/v2_06/framework/usb/src/dynamic/usb_device_endpoint_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o: ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/340578644/sys_devcon.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/340578644/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ../src/system_config/default/framework/system/devcon/src/sys_devcon.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o: ../src/i2c_master_noint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o.d" -o ${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o ../src/i2c_master_noint.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/ili9341.o: ../src/ili9341.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ili9341.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ili9341.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/ili9341.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/ili9341.o.d" -o ${OBJECTDIR}/_ext/1360937237/ili9341.o ../src/ili9341.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/imu_lib_i2c.o: ../src/imu_lib_i2c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/imu_lib_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/imu_lib_i2c.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/imu_lib_i2c.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/imu_lib_i2c.o.d" -o ${OBJECTDIR}/_ext/1360937237/imu_lib_i2c.o ../src/imu_lib_i2c.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/lcd_lib.o: ../src/lcd_lib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/lcd_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/lcd_lib.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/lcd_lib.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/lcd_lib.o.d" -o ${OBJECTDIR}/_ext/1360937237/lcd_lib.o ../src/lcd_lib.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/mouse.o: ../src/mouse.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mouse.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mouse.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/mouse.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -MMD -MF "${OBJECTDIR}/_ext/1360937237/mouse.o.d" -o ${OBJECTDIR}/_ext/1360937237/mouse.o ../src/mouse.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/hw12.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../microchip/harmony/v2_06/bin/framework/peripheral/PIC32MX250F128B_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/hw12.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ../../../../microchip/harmony/v2_06/bin/framework/peripheral/PIC32MX250F128B_peripherals.a      -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/hw12.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../microchip/harmony/v2_06/bin/framework/peripheral/PIC32MX250F128B_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/hw12.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ../../../../microchip/harmony/v2_06/bin/framework/peripheral/PIC32MX250F128B_peripherals.a      -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/hw12.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif

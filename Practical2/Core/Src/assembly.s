/*
 * assembly.s
 *
 */
 
 @ DO NOT EDIT
	.syntax unified
    .text
    .global ASM_Main
    .thumb_func

@ DO NOT EDIT
vectors:
	.word 0x20002000
	.word ASM_Main + 1

@ DO NOT EDIT label ASM_Main
ASM_Main:

	@ Some code is given below for you to start with
	LDR R0, RCC_BASE  		@ Enable clock for GPIOA and B by setting bit 17 and 18 in RCC_AHBENR
	LDR R1, [R0, #0x14]
	LDR R2, AHBENR_GPIOAB	@ AHBENR_GPIOAB is defined under LITERALS at the end of the code
	ORRS R1, R1, R2
	STR R1, [R0, #0x14]

	LDR R0, GPIOA_BASE		@ Enable pull-up resistors for pushbuttons
	MOVS R1, #0b01010101
	STR R1, [R0, #0x0C]
	LDR R1, GPIOB_BASE  	@ Set pins connected to LEDs to outputs
	LDR R2, MODER_OUTPUT
	STR R2, [R1, #0]
	MOVS R2, #0         	@ NOTE: R2 will be dedicated to holding the value on the LEDs

@ TODO: Add code, labels and logic for button checks and LED patterns

main_loop:
	@ reset timer and increment to default values
	MOVS R4, #1 @ R4 stores the increment
	@ set timer to LONG_DELAY_CNT

	@ ------------------Checks push buttons -------------------------------
	@check push button button registers
	@ compare register SW0 and true
	@ branch sw0_pressed

	@ compare register SW1 and true
	@ branch sw1_pressed

	@ compare register SW2 and true
	@ branch sw2_pressed

	@ compare register SW3 and true
	@ branch sw3_pressed

	@ update button flags? Can we just check registers directly?

	@ if SW0 true:
	sw0_pressed:
		@ set increment to 2
		MOVS R4, #2
		@ compare register SW1 and true
		@ branch sw1_pressed

	@ if SW1 true:
	sw1_pressed:
		@ set timer to SHORT_DELAY_CNT

	@ if SW2 true:
	sw2_pressed:
		@ set LED state to 0xAA
		MOVS R2, #0xAA
		@ set increment to 0
		MOVS R4, #0

	@ if SW3 true:
	sw3_pressed:
		@ set increment to 0
		MOVS R4, #0

	@ ------------------increment & display -------------------------------
	@ LED state <- LED state + increment [R2]
	ADD R2, R2, R4
	@ display LED state
	@ Delay(timer) ?? delay or interrupts?

write_leds:
	STR R2, [R1, #0x14]
	B main_loop

@ LITERALS; DO NOT EDIT
	.align
RCC_BASE: 			.word 0x40021000
AHBENR_GPIOAB: 		.word 0b1100000000000000000
GPIOA_BASE:  		.word 0x48000000
GPIOB_BASE:  		.word 0x48000400
MODER_OUTPUT: 		.word 0x5555

@ TODO: Add your own values for these delays
LONG_DELAY_CNT: 	.word 700 @0.7s
SHORT_DELAY_CNT: 	.word 300 @0.3s

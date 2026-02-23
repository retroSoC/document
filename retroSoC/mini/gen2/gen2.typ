#set document(
  author: "Yuchi Miao",
  date: auto,
  description: none,
  keywords: "retroSoC",
  title: "retroSoC Mini Gen1 Datasheet",
)
#set page(
  header: align(center)[
    https://github.com/retroSoC
  ],
  numbering: "1/1",
  columns: 1,
)

#set par(justify: true)
#set text(font: "Inter", size: 11pt)
#show title: set text(size: 17pt)

#title[
  retroSoC Mini Series Gen2/Gen2+
]

Product Brief (rev.2 – 2026.02.15) \
created by Yuchi Miao (#link("miaoyuchi@ict.ac.cn")) \
ECOS Team

#line(length: 100%)
A *Lightweight* RV32I/EMC *MCU Framework* with *128KiB* OCM, 1xSPFS, 1xPSRAM, 1xPS2, 2xUART, 3xTIMER, 1xRNG, 4xPWM, 1xRTC, 1xWDG, 1xCRC, 1xI2C, 1xQSPI, 1xRCU, 1xSYSCTRL, 1xARCHINFO, 16xGPIO
#line(length: 100%)

#[hello]

== Feature
- Core – PicoRV32/Hazard3
  - *196MHz* maximum frequency
  - 2-pipeline RV32I/E\[MAC\], 16xIRQ
  - Hardware multiplication and division

- Memories
  - *0\~128KiB* On-Chip-RAM *(OCM)*
  - *16MiB* XPI NOR Flash Controller
  - *8MiB* PSRAM Controller
  - *64MiB* 16bit SDRAM Controller

- Bus – Async. *No-burst* Protocol
  - Native Memory Interface *(NMI)*
  - AXI4-Lite master, APB3 slave
  - NMI, AXI4L, APB3 Interconnect

- Reset Clock Unit *(RCU)*
  - *4\~50MHz* Active Crystal Oscillator
  - PLL for core clock *(24\~192MHz)*
  - PLL or Bypass mode

- XPI
  - Half-duplex, SPI/DPI/QSPI/QPI mode
  - 32x32b TX/RX dual FIFO Integrated

- SPISD/SDIO (SDHC, 4~32GB)
  - *1GiB* Memory-mapped access
  - 1/4-wire SPI/SDIO mode *(SDv2.0)*
  - 512B cache, 50MHz maximum freq

- I2S (HQ, Hi-Res audio)
  - Stereo input/output only
  - max *24b/96KHz* format support
  - Full-duplex, I2S Phillips only

- DVP ()
  - Stereo input/output only
  - max *24b/96KHz* format support
  - Full-duplex, I2S Phillips only

- APU ()
  - Stereo input/output only
  - max *24b/96KHz* format support
  - Full-duplex, I2S Phillips only

- Other Communication Interfaces
  - 2xUARTs (FIFO/No FIFO)
  - 3xTIMER, 1xRTC, 1xWDG, 4xPWM
  - 1xRNG, 1xARCHINFO, 1xSYSCTRL
  - 2xQSPI, 1xONEWIRE, 1xCRC
  - 30xGPIO, 2xI2C, 1xPS2, 1xDMA

- Development
  - *Open source* and full synthesizable
  - Static synchronous design
  - *ICS55*, IHP130 PDK support
  - RV32I/E\[MAC\] C Running Time *(CRT)*
- Tools & Flows
  - VCS, Verilator, iVerilog (TBD)
  - Yosys, ECC, Pristine (TBD)
  - *QFN128* (12.3x12.3mm) Package
- Application
  - *Wearables*;, IoT services, E-readers
  - Education, ASIC Prototype

// #figure(
//   image(
//     "retroSoC-mini-block-diagram.svg", width: 100%
//   ),
//   caption: [
//     *_retroSoC Mini Gen1_* block diagram
//   ],
// )<block-diagram>


== Overview
#emph[*retroSoC*]; is a fully open-source and customizable ASIC framework for “#emph[*retro-style*;];” applications. It is both straightforward to use and highly compatible with EDA toolchains — specifically targeting open-source EDA *(iEDA, OpenROAD, etc)*;.


Additionally, retroSoC can also serve as a flexible, reconfigurable #emph[*SoC template*;] for end customers or students who want to integrate their own design into a shared fabrication wafer *(shuttle)*;.

The #emph[*retroSoC Mini Series*;] is a family of highly integrated, lightweight MCU designed for Internet of Things *(IoT)* scenarios. #emph[*retroSoC Mini Gen2/Gen2+*;] adopts the PicoRV32/Hazard3 core and integrates DMA, SPISD/SDIO, I2S and QSPI multimedia IPs. It can be used for a wide variety of applications as wearables, education or ASIC prototype verification.

== Product Series
// #figure(
//   image(
//     "retroSoC-mini-block-diagram.svg", width: 100%
//   ),
//   caption: [
//     *_retroSoC Mini Gen1_* block diagram
//   ],
// )<product-series>

== Roadmap
// #figure(
//   image(
//     "retroSoC-mini-block-diagram.svg", width: 100%
//   ),
//   caption: [
//     *_retroSoC Mini Gen1_* block diagram
//   ],
// )<product-rodamap>


== Revision History
== Introduction
=== SoC Architecture
=== Management Processor
==== PicoRV32
==== Hazard3

== Interconnect
=== Native Memory Interface *(NMI)*
=== Interconnect Matrix
=== Address Mapping

== Clock and Reset
=== Architecture
=== Reset and Logic

== Interrupt System
== Packaging
=== Pin Mapping
=== Package Dimensions
=== Graded Reflow Soldering
=== Ordering Information

== Peripherals

=== Memory Interface
==== Non-Volatile Memory (NVM)
===== XPI Universal Controller (XPI)
===== SPI SD Card Controller (SPISD)
===== SD Card Controller (SDIO0)
==== Volatile Memory (VM)
===== On Chip Memory (OCM)
===== PSRAM Controller (PSRAM)
===== SDRAM Controller (SDRAM)

=== General-Purpose Input Output (GPIO)
==== System IO (GPIO0)
==== User Custom IO (GPIO1)

=== Direct Memory Access (DMA)
==== Architecture
==== Hardware Trigger Channels

=== Timers
==== General-Purpose Timer (TIM0, TIM1)
==== Advanced Timer (TIM2)
==== Real Time Clock (RTC)
==== Watchdog (WDG)
==== Pulse Width Modulation (PWM)

=== IO Interface
==== Universal Async. Receiver/Transmitter (UART)
===== Simple No-FIFO Version (UART0)
===== Advanced FIFO Version (UART1)
==== Inter-Integrated Circuit (I2C)
==== One Wire Serial Bus (ONEWIRE)
==== Personal System/2 (PS2)
==== SDIO Controller (SDIO1)
==== Architecture Information (ARCHINFO)
==== System Controller (SYSCTRL)
==== Reset Clock Unit (RCU)

=== Multimedia
==== Inter-Integrated Circuit Sound (I2S)
==== Extended Peripheral Interface (XPI)
==== Digital Video Port (DVP)
==== Audio Processing Unit (APU)
==== Graphic Accelerator (GA)

=== Encryption
==== Cyclic Redundancy Check (CRC)
==== Random Number Generator (RNG)

== Software
=== Boot Sequence
=== TinySDK and TinyShell
=== Application

== SoC Template
=== Architecture
=== User Guide

== Implementation
=== SoC Integration
=== RTL Simulation
=== FPGA Verification
=== Physical Design
=== PCB Hardware

== Resource

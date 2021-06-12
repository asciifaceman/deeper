# Notes

Notes I've gathered during development

# Architecture

### 3 Registers
* A
  * Accumulator
* X
  * index X
* Y
  * index Y


  When we address the accumulator as A, we implicitly mean the whole accumulator whether it’s set to 8- or 16-bit; A can also refer to the lower byte in the accumulator
  When we address the accumulator as B, we explicitly refer to the higher byte stored in the accumulator (bits 8 ~ 15)
  When we address the accumulator as C, we explicitly refer to the whole accumulator as a 16-bit register

# Special Purpose Registers
  * D
    * Direct page
    * 16 bit
  * DBR
    * Data bank
    * 8 Bit
  * PBR
    * Program Bank
    * 8 bit
  * S
    * Stack pointer
    * 16 bit
  * PC
    * Program counter
    * 16 bit
  * SPR
    * Holds state of PROC after last instruction
    * Bits
      * N: Negative flag. Is set when the result of the last operation is a negative number (i.e., the most significant bit of the result is set)
      * V: Overflow flag. Is set when the last operation results in an overflow.
      * M: Memory/Accumulator Select flag. Controls the size of register A, the accumulator. If set, the accumulator will be 8-bit, else 16-bit.
      * X: Index Register Select flag. The same as the Memory/Accumulator Select flag, but for the X and Y registers.
      * D: Decimal Mode flag. Will select whether the 65816 operates in decimal mode. This is disabled for the SNES, so you don’t need to care about this flag.
      * I: IRQ Disable flag. Controls whether the processor will react to an interrupt request. Interrupts will be covered in a later article. Think of them as external requests to the processor to execute a certain procedure/function.
      * Z: Zero flag. Is set if the result of the last operation was zero.
      * C: Carry flag. Is set if a carry occurred during the last operation.
      * E: Emulation flag. This controls whether the processor is operating in emulation or native mode.

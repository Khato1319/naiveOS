#ifndef NAIVE_CONSOLE_H
#define NAIVE_CONSOLE_H

#include <stdint.h>


void ncPrint(const char * string);
void ncPrintColor(const char * string, char color);
void ncPrintChar(char character, char color);
void ncNewline();
void ncDelete();
void ncPrintDec(uint64_t value);
void ncPrintHex(uint64_t value);
void ncPrintBin(uint64_t value);
void ncPrintBase(uint64_t value, uint32_t base);
void ncClear();
void ncPrintDate(); // AGREGADA
void ncPrintTime(); // AGREGADA
void ncPrintDateTime(); // AGREGADA
int ncSplitConsole(int screens, int screen); // AGREGADA
int ncChangeScreen(int screen); // AGREGADA
void ncClearLine(); // AGREGADA
// uint8_t pointer();
void ncInitVideoConsole();
uint32_t uintToBase(uint64_t value, char * buffer, uint32_t base);

#endif
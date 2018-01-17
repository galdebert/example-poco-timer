#include "TimerExample.h"

void TimerExample::onTimer(Timer& timer) { std::cout << "Callback called after " << _sw.elapsed() / 1000 << " milliseconds." << std::endl; }


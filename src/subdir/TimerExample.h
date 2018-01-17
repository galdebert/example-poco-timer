#include "Poco/Timer.h"
#include "Poco/Thread.h"
#include "Poco/Stopwatch.h"
#include <iostream>

using Poco::Stopwatch;
using Poco::Thread;
using Poco::Timer;
using Poco::TimerCallback;

class TimerExample
{
public:
	TimerExample() { _sw.start(); }

	void onTimer(Timer& timer);

private:
	Stopwatch _sw;
};
// $Id: //poco/1.4/Foundation/samples/Timer/src/Timer.cpp#1 $
// This sample demonstrates the Timer and Stopwatch classes.
// Copyright (c) 2004-2006, Applied Informatics Software Engineering GmbH.
// and Contributors.
// SPDX-License-Identifier:     BSL-1.0

#include "Poco/Timer.h"
#include "Poco/Thread.h"
#include "Poco/Stopwatch.h"
#include <iostream>
#include "subdir/TimerExample.h"

using Poco::Stopwatch;
using Poco::Thread;
using Poco::Timer;
using Poco::TimerCallback;

int main(int argc, char** argv)
{
	TimerExample example;
	Timer timer(250, 500);
	timer.start(TimerCallback<TimerExample>(example, &TimerExample::onTimer));

	Thread::sleep(5000);
	timer.stop();
	return 0;
}
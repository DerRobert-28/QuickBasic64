@echo off
cd %0\..\
cd ../..
echo C++ Debugging: SystemTests.exe using gdb.exe
echo Debugger commands:
echo After the debugger launches type 'run' to start your program
echo After your program crashes type 'list' to find where the problem is and fix/report it
echo Type 'quit' to exit
echo (the GDB debugger has many other useful commands, this advice is for beginners)
pause
internal\c\c_compiler\bin\gdb.exe "A:\Development\QuickBasic64\Libraries\Tests\SystemTests.exe"
pause

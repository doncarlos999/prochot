#!bin/bash
#apt install msr-tools
modprobe msr
echo "0x1FC:"
rdmsr 0x1FC
# minus 1 from previous command then enter after next command
# ie 24005d -> 24004d
wrmsr 0x1FC 24004d
echo "0x1FC:"
rdmsr 0x1FC


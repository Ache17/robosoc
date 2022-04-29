./waf configure --board Quala
./waf copter

# upload bootloader
dfu-util -a 0 --dfuse-address 0x08000000 -D new-board-bootloader.bin -R

# upload
./waf copter --upload

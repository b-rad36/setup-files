# Fix battery usage when lid closed
# cat /sys/power/mem_sleep
sudo kernelstub -a "mem_sleep_default=deep"

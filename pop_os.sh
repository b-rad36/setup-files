# Fix battery usage when lid closed
# Maybe system freezing as well?
# cat /sys/power/mem_sleep
sudo kernelstub -a "mem_sleep_default=deep"

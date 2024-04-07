#!/bin/sh

conservation_mode_path=/sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode

state=$(sudo cat $conservation_mode_path)

if [ $state -eq 1 ]
then
  echo 0 | sudo tee $conservation_mode_path
else
  echo 1 | sudo tee $conservation_mode_path
fi

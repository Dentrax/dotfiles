#!/bin/bash

# Interfaces
eth=enp4s0
wifi=wlp3s0

# Don't get, just check the page availability
wget -q --spider http://google.com &>/dev/null && result=on || result=off

label="%{T4}"
if [[ $result == on ]]; then
    # Online
    if [ $(cat /sys/class/net/$wifi/carrier) == 1 ]; then
        # Wifi is connected
        label+="直"
    elif [ $(cat /sys/class/net/$eth/carrier) == 1 ]; then
        # Cable connected
        label+=""
    fi
    if [ "$(pgrep openvpn)" ]; then
        # VPN is on
        label+="%{T2}%{F#e2e2e2} "
    else
        # VPN is off
        label+="%{T2}%{F#de935f} "
    fi
else
    # Offline
    label+=""
fi

echo $label


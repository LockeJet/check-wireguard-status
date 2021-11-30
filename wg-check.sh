#!/bin/bash
TUN_IP=10.5.0.1
WG_IFACE=wgs0
WG_SERVICE=wg-quick@wgs0.service

ping -c 2 -w 3 $TUN_IP > /dev/null
if [ $? -eq 0 ]
  then
    exit 0
  else
    #wg-quick down $WG_IFACE;
    #wg-quick up $WG_IFACE;
    systemctl restart $WG_SERVICE
fi

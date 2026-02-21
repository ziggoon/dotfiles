#!/bin/bash
local_ip=$(ip route get 1.1.1.1 2>/dev/null | awk '{for(i=1;i<=NF;i++) if($i=="src") print $(i+1)}')
public_ip=$(curl -s --max-time 3 ifconfig.me 2>/dev/null)
echo "${local_ip:-n/a} | ${public_ip:-n/a}"

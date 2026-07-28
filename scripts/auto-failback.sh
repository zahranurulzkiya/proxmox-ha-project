#!/bin/bash

sleep 60

VMID=300
HOME_NODE="pve-node1"

# Pastikan cluster quorum OK
pvecm status | grep -q "Quorate:.*Yes" || exit 0

CURRENT_NODE=$(ha-manager status | sed -n "s/.*vm:$VMID (\([^,]*\),.*/\1/p")

[ "$CURRENT_NODE" = "$HOME_NODE" ] && exit 0

logger -t AutoFailback "Migrating VM $VMID back to $HOME_NODE"

ha-manager migrate vm:$VMID $HOME_NODE

# Proxmox VE High Availability Project

## Overview

This repository contains the implementation and documentation of a Proxmox VE High Availability (HA) environment developed during an internship project at PT Project Technology Masch.

The project was initially built in a nested virtualization environment as a proof of concept before being migrated to physical hardware.

---

## Project Architecture

```
                 Virt Manager Host
                       │
    ┌──────────────────┼──────────────────┐
    │                  │                  │
┌──────────┐      ┌──────────┐      ┌──────────────┐
│ pve-node1│      │ pve-node2│      │ Debian       │
│ Proxmox  │      │ Proxmox  │      │ QDevice      │
└──────────┘      └──────────┘      └──────────────┘
      │                  │
      └──────────┬───────┘
                 │
           NFS Shared Storage
                 │
          ┌──────────────┐
          │ VM 300       │
          │ Alpine Linux │
          └──────────────┘
```

---

## Environment

| Component | Description |
|-----------|-------------|
| Hypervisor | KVM / Virt Manager |
| Cluster Nodes | 2 Proxmox VE Nodes |
| QDevice | Debian Linux |
| Shared Storage | NFS |
| Test Virtual Machine | Alpine Linux (VM ID 300) |
| Cluster Name | cluster-masch |

---

## Implemented Features

- Proxmox VE Cluster
- Corosync Cluster Communication
- QDevice Configuration
- NFS Shared Storage
- High Availability (HA)
- Live Migration
- Automatic Failover
- Automatic Failback using Bash Script

---

## Repository Structure

```
proxmox-ha-project/
├── config/
├── docs/
├── screenshots/
├── scripts/
├── website/
└── README.md
```

---

## Documentation

| Folder | Description |
|---------|-------------|
| docs | Project documentation |
| config | Proxmox configuration backup |
| scripts | Bash automation scripts |
| screenshots | Implementation screenshots |
| website | Project website files |

---

## Current Status

| Feature | Status |
|----------|--------|
| Cluster Configuration | ✅ |
| QDevice | ✅ |
| Shared Storage | ✅ |
| High Availability | ✅ |
| Live Migration | ✅ |
| Automatic Failover | ✅ |
| Automatic Failback | ✅ |

---

## Author

**Zahra Nurul Azkiya**

Internship Project

PT Project Technology Masch

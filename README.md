# Proxmox High Availability Project

Implementation of a High Availability (HA) Cluster using Proxmox VE.

## Project Overview

This project was developed as part of an internship (PKL) to implement a highly available virtualization infrastructure using Proxmox VE.

## Features

- Proxmox VE Cluster
- High Availability (HA)
- Live Migration
- Automatic Failover
- Automatic Failback (Custom Bash Script)
- QDevice Configuration
- NFS Shared Storage

## Cluster Architecture

```
Ubuntu Host
      │
      ▼
KVM + Virt-Manager
      │
      ▼
+------------+      +------------+
| pve-node1  |------| pve-node2  |
+------------+      +------------+
        \             /
         \           /
       Shared NFS Storage
              |
          Alpine QDevice
```

## Repository Structure

```
docs/
scripts/
screenshots/
website/
```

## Author

Zahra Nurul Azkiya

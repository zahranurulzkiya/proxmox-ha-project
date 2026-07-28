# Cluster Topology

## Cluster Name

cluster-masch

## Nodes

| Node | Role |
|------|------|
| pve-node1 | Primary Node |
| pve-node2 | Secondary Node |
| QDevice | Quorum Device |

## Network

| Device | IP Address |
|--------|------------|
| pve-node1 | 192.168.122.183 |
| pve-node2 | 192.168.122.184 |
| NFS Server | 192.168.122.1 |

## Shared Storage

- Type: NFS
- Server: 192.168.122.1
- Export: /srv/proxmox-share

## High Availability

- Enabled
- Quorum: Active
- QDevice: Active

# Linux Network

## Implemented Functionality

### Part 1: Working with ipcalc Utility

#### 1.1. Network and Mask Analysis
- Calculated network addresses for specified IP addresses and subnet masks
- Performed conversions between different mask notation formats (prefix, decimal, binary)
- Determined minimum and maximum host addresses within specified networks
- Utilized ipcalc utility for automated network calculations

#### 1.2. Localhost Analysis
- Investigated application accessibility on localhost using various IP addresses
- Explored the behavior of addresses within the 127.0.0.0/8 range
- Verified proper routing for loopback interface functionality

#### 1.3. Network Ranges and Segments
- Classified IP addresses as public or private according to RFC standards
- Identified valid gateway addresses for specified network ranges
- Analyzed private network ranges (10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16)

### Part 2: Static Routing Between Two Machines

#### Network Interface Configuration
- Examined existing network interfaces using the ip a command
- Configured static IP addresses on both virtual machines
- Modified /etc/netplan/00-installer-config.yaml configuration files
- Applied network changes using netplan apply command

#### 2.1. Manual Static Route Addition
- Added temporary static routes using ip r add command
- Verified connectivity between machines using ping utility
- Demonstrated bidirectional communication capability

#### 2.2. Persistent Static Route Configuration
- Configured permanent static routes through configuration files
- Verified functionality after system reboot
- Confirmed route persistence across restarts

### Part 3: iperf3 Utility Implementation

#### 3.1. Network Speed Unit Conversion
- Performed calculations for network speed unit conversions
- Converted values between Mbps, MB/s, Kbps, and Gbps units

#### 3.2. Connection Speed Measurement
- Configured iperf3 server on one machine
- Conducted connection speed tests between machines
- Analyzed and documented measurement results

### Part 4: Network Firewall Configuration

#### 4.1. iptables Configuration
- Created firewall scripts /etc/firewall.sh for both machines
- Implemented different rule strategies (deny-first and allow-first)
- Configured rules for SSH (port 22) and HTTP (port 80) access
- Implemented ICMP packet management (ping functionality)
- Tested various blocking scenarios

#### 4.2. nmap Utility Usage
- Demonstrated nmap functionality for host discovery
- Showcased differences between ping and nmap results
- Verified host detection capability even with ICMP blocking

### Part 5: Static Network Routing

#### 5.1. Machine Address Configuration
- Configured network interfaces on 5 virtual machines
- Implemented network topology according to specifications
- Verified connectivity between adjacent nodes

#### 5.2. IP Forwarding Activation
- Enabled packet forwarding on routers
- Configured permanent IP forwarding through sysctl.conf
- Verified routing functionality

#### 5.3. Default Route Configuration
- Configured default gateways on workstations
- Verified routing tables using ip r command
- Demonstrated packet capture using tcpdump

#### 5.4. Static Route Addition
- Configured static routes between networks
- Analyzed routing tables
- Investigated route priority using ip r list command

#### 5.5. Router Path Tracing
- Utilized traceroute utility for path discovery
- Analyzed packets using tcpdump
- Explained traceroute operational mechanism

#### 5.6. ICMP Protocol in Routing
- Captured ICMP packets during ping attempts to non-existent addresses
- Analyzed routing error messages
- Demonstrated ICMP behavior for unreachable hosts

### Part 6: Dynamic IP Configuration Using DHCP

#### DHCP Server Configuration
- Configured DHCP servers on routers
- Set up address pools, gateways, and DNS servers
- Implemented MAC address-based IP assignment

#### DHCP Testing
- Verified automatic IP address acquisition
- Tested connectivity between hosts
- Demonstrated IP address renewal process
- Utilized various DHCP server options

### Part 7: NAT Configuration

#### Web Server Configuration
- Configured Apache2 for public access
- Modified port listening parameters
- Started web servers on multiple machines

#### Firewall Rule Implementation
- Implemented rules for packet forwarding management
- Configured rules for ICMP protocol
- Implemented SNAT and DNAT transformations

#### NAT Testing
- Verified SNAT functionality for outgoing connections
- Tested DNAT for internal service access
- Used telnet utility for TCP connection verification

### Part 8: Bonus - SSH Tunnels Introduction

#### Tunnel Configuration
- Started web server on localhost only
- Implemented Local TCP forwarding for service access
- Configured Remote TCP forwarding for remote access
- Verified tunnel functionality using telnet
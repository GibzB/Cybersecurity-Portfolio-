## Cybersecurity Incident Report

**Section 1: Identify the type of attack that may have caused this network interruption**

One potential explanation for the website's connection timeout error message is a  **Denial-of-Service (DoS) attack** , specifically a  **SYN Flood Attack** .

The logs show a large number of TCP SYN requests coming from an unfamiliar IP address. This type of activity is a signature characteristic of a SYN flood attack.

**Section 2: Explain how the attack is causing the website to malfunction**

When website visitors try to establish a connection with the web server, a three-way handshake occurs using the TCP protocol:

1. **SYN (Synchronize):** The client sends a SYN packet to the server, indicating its desire to establish a connection.
2. **SYN-ACK (Synchronize Acknowledge):** The server responds with a SYN-ACK packet, acknowledging the client's SYN packet and sending its own synchronization information.
3. **ACK (Acknowledge):** The client sends an ACK packet back to the server, acknowledging the server's SYN-ACK packet.

In a SYN flood attack, a malicious actor sends a large number of SYN packets to the web server all at once. These packets never complete the three-way handshake because the attacker never sends the final ACK packet.

The logs indicate an overwhelming volume of SYN requests. The server has limited resources and cannot handle a large number of incomplete connection requests simultaneously.  This backlog of incomplete connections consumes server resources, preventing it from responding to legitimate connection attempts from website visitors. This results in the website taking a long time to load (if at all) and ultimately leads to connection timeout errors.

**Impact of the Attack:**

* **Website Outage:** The website becomes unavailable to legitimate users, hindering the ability of customers and employees to access travel deals and information.
* **Loss of Revenue:**  During the outage, the company may lose potential sales opportunities.
* **Productivity Loss:**  Employees are unable to access the sales webpage to search for vacation packages for customers, impacting their productivity.
* **Customer Dissatisfaction:**  Website outages can lead to customer frustration and dissatisfaction.

**Optional:  Prevention Strategies:**

* **Configure firewalls to limit the rate of incoming TCP connections.**
* **Implement SYN cookies:**  These are temporary tokens sent by the server in response to a SYN packet, reducing the server's resource consumption during a flood attack.
* **Utilize distributed denial-of-service (DDoS) mitigation services:** These services can help filter and block malicious traffic before reaching the company's web server.

By identifying this attack and taking steps to mitigate it, the security team can restore normal website functionality, minimize business disruption, and protect the website from future DoS attacks.

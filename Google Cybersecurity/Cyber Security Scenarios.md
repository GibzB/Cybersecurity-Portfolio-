# Scenario 1

 You work as a security analyst for a travel agency that advertises sales and promotions on the company’s website. The employees of the company regularly access the company’s sales webpage to search for vacation packages their customers might like.

 One afternoon, you receive an automated alert from your monitoring system indicating a problem with the web server. You attempt to visit the company’s website, but you receive a connection timeout error message in your browser.

 You use a packet sniffer to capture data packets in transit to and from the web server. You notice a large number of TCP SYN requests coming from an unfamiliar IP address. The web server appears to be overwhelmed by the volume of incoming traffic and is losing its ability to respond to the abnormally large number of SYN requests. You suspect the server is under attack by a malicious actor.

 You take the server offline temporarily so that the machine can recover and return to a normal operating status. You also configure the company’s firewall to block the IP address that was sending the abnormal number of SYN requests. You know that your IP blocking solution won’t last long, as an attacker can spoof other IP addresses to get around this block. You need to alert your manager about this problem quickly and discuss the next steps to stop this attacker and prevent this problem from happening again. You will need to be prepared to tell your boss about the type of attack you discovered and how it was affecting the web server and employees.

[Report](Google Cybersecurity/Reports/Incident Report.md)

# Scenario 2

You are a cybersecurity analyst for yummyrecipesforme.com, a website that sells recipes and cookbooks. A former employee has decided to lure users to a fake website with malware.

 The baker executed a brute force attack to gain access to the web host. They repeatedly entered several known default passwords for the administrative account until they correctly guessed the right one. After they obtained the login credentials, they were able to access the admin panel and change the website’s source code. They embedded a javascript function in the source code that prompted visitors to download and run a file upon visiting the website. After embedding the malware, the baker changed the password to the administrative account. When customers download the file, they are redirected to a fake version of the website that contains the malware.

 Several hours after the attack, multiple customers emailed yummyrecipesforme’s helpdesk. They complained that the company’s website had prompted them to download a file to access free recipes. The customers claimed that, after running the file, the address of the website changed and their personal computers began running more slowly.

 In response to this incident, the website owner tries to log in to the admin panel but is unable to, so they reach out to the website hosting provider. You and other cybersecurity analysts are tasked with investigating this security event.

 To address the incident, you create a sandbox environment to observe the suspicious website behavior. You run the network protocol analyzer tcpdump, then type in the URL for the website, yummyrecipesforme.com. As soon as the website loads, you are prompted to download an executable file to update your browser. You accept the download and allow the file to run. You then observe that your browser redirects you to a different URL, greatrecipesforme.com, which contains the malware.

 The logs show the following process:

 The browser initiates a DNS request: It requests the IP address of the yummyrecipesforme.com URL from the DNS server.

 The DNS replies with the correct IP address.

 The browser initiates an HTTP request: It requests the yummyrecipesforme.com webpage using the IP address sent by the DNS server.

 The browser initiates the download of the malware.

 The browser initiates a DNS request for greatrecipesforme.com.

 The DNS server responds with the IP address for greatrecipesforme.com.

 The browser initiates an HTTP request to the IP address for greatrecipesforme.com.

 A senior analyst confirms that the website was compromised. The analyst checks the source code for the website. They notice that javascript code had been added to prompt website visitors to download an executable file. Analysis of the downloaded file found a script that redirects the visitors’ browsers from yummyrecipesforme.com to greatrecipesforme.com.

 The cybersecurity team reports that the web server was impacted by a brute force attack. The disgruntled baker was able to guess the password easily because the admin password was still set to the default password. Additionally, there were no controls in place to prevent a brute force attack.

 Your job is to document the incident in detail, including identifying the network protocols used to establish the connection between the user and the website. You should also recommend a security action to take to prevent brute force attacks in the future.

[Report](Google Cybersecurity/Reports/Security Incident Report.md)

# Scenario 3

You are a security analyst working for a social media organization. The organization recently experienced a major data breach, which compromised the safety of their customers’ personal information, such as names and addresses. Your organization wants to implement strong network hardening practices that can be performed consistently to prevent attacks and breaches in the future.

 After inspecting the organization’s network, you discover four major vulnerabilities. The four vulnerabilities are as follows:

 The organization’s employees' share passwords.

 The admin password for the database is set to the default.

 The firewalls do not have rules in place to filter traffic coming in and out of the network.

 Multifactor authentication (MFA) is not used.

 If no action is taken to address these vulnerabilities, the organization is at risk of experiencing another data breach or other attacks in the future.

 In this activity, you will write a security risk assessment to analyze the incident and explain what methods can be used to further secure the network.

[Report](Google Cybersecurity/Reports/Security Risk Assessment Report.md)

# Scenario 4

You are a cybersecurity analyst working for a multimedia company that offers web design services, graphic design, and social media marketing solutions to small businesses. Your organization recently experienced a DDoS attack, which compromised the internal network for two hours until it was resolved.

 During the attack, your organization’s network services suddenly stopped responding due to an incoming flood of ICMP packets. Normal internal network traffic could not access any network resources. The incident management team responded by blocking incoming ICMP packets, stopping all non-critical network services offline, and restoring critical network services.

 The company’s cybersecurity team then investigated the security event. They found that a malicious actor had sent a flood of ICMP pings into the company’s network through an unconfigured firewall. This vulnerability allowed the malicious attacker to overwhelm the company’s network through a distributed denial of service (DDoS) attack.

 To address this security event, the network security team implemented:

 A new firewall rule to limit the rate of incoming ICMP packets

 Source IP address verification on the firewall to check for spoofed IP addresses on incoming ICMP packets

 Network monitoring software to detect abnormal traffic patterns

 An IDS/IPS system to filter out some ICMP traffic based on suspicious characteristics

 As a cybersecurity analyst, you are tasked with using this security event to create a plan to improve your company’s network security, following the National Institute of Standards and Technology (NIST) Cybersecurity Framework (CSF). You will use the CSF to help you navigate through the different steps of analyzing this cybersecurity event and integrate your analysis into a general security strategy. We have broken the analysis into different parts in the template below. You can explore them here:

 Identify security risks through regular audits of internal networks, systems, devices, and access privileges to identify potential gaps in security.

 Protect internal assets through the implementation of policies, procedures, training and tools that help mitigate cybersecurity threats.

 Detect potential security incidents and improve monitoring capabilities to increase the speed and efficiency of detections.

 Respond to contain, neutralize, and analyze security incidents; implement improvements to the security process.

 Recover affected systems to normal operation and restore systems data and/or assets that have been affected by an incident.

[Report](Google Cybersecurity/Reports/Incident Report Analysis: DDoS Attack.md)

# Scenario 5

You are a security professional at a large organization. You mainly work with their research team. Part of your job is to ensure users on this team are authorized with the appropriate permissions. This helps keep the system secure.

 Your task is to examine existing permissions on the file system. You’ll need to determine if the permissions match the authorization that should be given. If they do not match, you’ll need to modify the permissions to authorize the appropriate users and remove any unauthorized access.

[Report](Google Cybersecurity/Reports/File Permissions in Linux.md)

# Scenario 6

A small U.S. health care clinic specializing in delivering primary-care services experienced a security incident on a Tuesday morning, at approximately 9:00 a.m. Several employees reported that they were unable to use their computers to access files like medical records. Business operations shut down because employees were unable to access the files and software needed to do their job.

 Additionally, employees also reported that a ransom note was displayed on their computers. The ransom note stated that all the company's files were encrypted by an organized group of unethical hackers who are known to target organizations in healthcare and transportation industries. In exchange for restoring access to the encrypted files, the ransom note demanded a large sum of money in exchange for the decryption key.

 The attackers were able to gain access into the company's network by using targeted phishing emails, which were sent to several employees of the company. The phishing emails contained a malicious attachment that installed malware on the employee's computer once it was downloaded.

 Once the attackers gained access, they deployed their ransomware, which encrypted critical files. The company was unable to access critical patient data, causing major disruptions in their business operations. The company was forced to shut down their computer systems and contact several organizations to report the incident and receive technical assistance.

[Report]([Report](Google Cybersecurity/Reports/Incident Handler's Journal.md))

# Scenario 7

You are a security professional at a large organization. Part of your job is to investigate security issues to help keep the system secure. You recently discovered some potential security issues that involve login attempts and employee machines.

 Your task is to examine the organization’s data in their employees and log_in_attempts tables. You’ll need to use SQL filters to retrieve records from different datasets and investigate the potential security issues.

 Note: This scenario involves the same queries as the ones the Filter with AND, OR, and NOT

[Report](Google Cybersecurity/Reports/Apply filters to SQL queries.md)

# Scenario 8

You are a level one security operations center (SOC) analyst at a financial services company. You have received an alert about a suspicious file being downloaded on an employee's computer.

 You investigate this alert and discover that the employee received an email containing an attachment. The attachment was a password-protected spreadsheet file. The spreadsheet's password was provided in the email. The employee downloaded the file, then entered the password to open the file. When the employee opened the file, a malicious payload was then executed on their computer.

 You retrieve the malicious file and create a SHA256 hash of the file. You might recall from a previous course that a hash function is an algorithm that produces a code that can't be decrypted. Hashing is a cryptographic method used to uniquely identify malware, acting as the file's unique fingerprint.

 Now that you have the file hash, you will use VirusTotal to uncover additional IoCs that are associated with the file.

 Note: Use the incident handler's journal you started in

 a previous activity

  to take notes during the activity and keep track of your findings.

 Note: You might recall creating SHA256 hashes in the

 lab activity on hash values

  from a previous course.

[Report](/Users/bizee/Documents/Code_Projects/Cybersecurity-Portfolio-/Google Cybersecurity/Reports/Pyramid of Pain - Indicator of Compromise (IoC) Analysis.md)

# Scenario 9

You are a level-one security operations center (SOC) analyst at a financial services company. Previously, you received a phishing alert about a suspicious file being downloaded on an employee's computer. After investigating the email attachment file's hash, the attachment has already been verified malicious. Now that you have this information, you must follow your organization's process to complete your investigation and resolve the alert.

 Your organization's security policies and procedures describe how to respond to specific alerts, including what to do when you receive a phishing alert.

 In the playbook, there is a flowchart and written instructions to help you complete your investigation and resolve the alert. At the end of your investigation, you will update the alert ticket with your findings about the incident.

[Report](/Users/bizee/Documents/Code_Projects/Cybersecurity-Portfolio-/Google Cybersecurity/Reports/Alert Ticket Update.md)

# Scenario 10

Describe a time when you were part of a team or group that had to respond to a problem? How did you and your team decide the best course of action to take?

 How might effective communication and collaboration among team members impact the efficiency of the triage process?

 What are some strategies you have used to manage stress during a high pressure situation? How might these strategies apply to the triage process in incident response?

[Report](/Users/bizee/Documents/Code_Projects/Cybersecurity-Portfolio-/Google Cybersecurity/Reports/The Value of Triage in Security Response: A Security Professional's Perspective.md)


# Scenario 11

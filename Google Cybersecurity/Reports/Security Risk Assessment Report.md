## Security Risk Assessment Report

**Part 1: Select up to three hardening tools and methods to implement**

This report recommends implementing the following three network hardening methods to address the identified vulnerabilities and improve the overall security of the social media organization's network:

1. **Multifactor Authentication (MFA)**
2. **Network Access Privileges**
3. **Password Policies**

These methods target the core security weaknesses exposed in the data breach and offer a strong defense against similar attacks in the future.

**Part 2: Explain your recommendations**

**1. Multifactor Authentication (MFA)**

* **Why is it effective?**  MFA adds an extra layer of security beyond passwords. Even if an attacker steals a user's login credentials, they wouldn't be able to access the system without the additional verification factor, such as a code sent to the user's phone or a fingerprint scan. This significantly reduces the risk of unauthorized access, especially for critical systems like the database containing user information.
* **Implementation Frequency:**  MFA should be implemented **once** for all user accounts accessing the network and critical systems.  MFA is an ongoing security measure that strengthens every login attempt.

**2. Network Access Privileges**

* **Why is it effective?**  Network access privileges establish a clear hierarchy of access permissions within the network. This ensures that only authorized users have access to specific resources and data based on their job roles. This prevents unauthorized access attempts and minimizes the potential damage if a breach occurs by limiting what attackers can access within the network.
* **Implementation Frequency:**  Network access privileges should be reviewed and updated  **regularly** , especially when there are changes in personnel or job roles. This ensures that access permissions remain appropriate and minimizes the risk of unauthorized access due to outdated permissions.

**3. Password Policies**

* **Why is it effective?**  Strong password policies enforce the creation of complex and unique passwords that are difficult to guess or crack. This makes it significantly harder for attackers to use brute-force attacks or stolen password lists to gain unauthorized access. Additionally, password rotation policies requiring users to change passwords periodically further strengthens password security.
* **Implementation Frequency:**  Password policies should be implemented **once** and enforced consistently. Password rotation policies can be set to require password changes every few months (e.g., 3-6 months) to maintain an extra layer of security.

These three network hardening methods work together to create a more secure environment. MFA adds an extra verification step, network access privileges limit access to sensitive data, and strong password policies make it harder for attackers to gain access in the first place. Implementing these methods will significantly improve the organization's security posture and reduce the risk of future data breaches.

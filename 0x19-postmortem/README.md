## Postmortem
### Issue Summary:

*Duration:* The outage occurred from 10:00am  to 12:00 (UTC).

*Impact:* The Apache outage affected the availability of the web service, resulting in a 500 error for users. Approximately 40% of users experienced disruptions, encountering slow response times or complete unavailability.

*Root Cause:* The root cause of the issue was a misconfiguration in the WordPress settings file (wp-settings.php), specifically a typo in the file path.

**Timeline:**

- *Detection Time:* The issue was detected at 11:00am through monitoring alerts indicating a surge in 500 errors.

- *Detection Method:* Monitoring systems triggered alerts based on an increased frequency of 500 errors.

- *Actions Taken:* The incident response team initially investigated potential server load issues and database connectivity. Assumptions were made about database errors causing the Apache malfunction.

- *Misleading Paths:* Debugging initially focused on database-related assumptions, leading to unnecessary exploration of database configurations.

- *Escalation:* The incident was escalated to the system administration team as the investigation shifted towards Apache and web server configurations.

- *Resolution:* The issue was resolved by correcting the typo in the WordPress settings file. An immediate fix involved using the `sed` command to replace 'phpp' with 'php'. Subsequently, Apache was restarted to apply the changes.

**Root Cause and Resolution:**

*Root Cause:* The root cause was a typographical error in the wp-settings.php file, where 'phpp' instead of 'php' was specified, causing Apache to fail.

*Resolution:* The issue was fixed by executing the following commands:
```bash
exec { 'fix-wordpress':
  command => 'sed -i s/phpp/php/ /var/www/html/wp-settings.php',
  path    => '/usr/bin:/bin',
}

exec { 'restart_apache':
  command     => '/etc/init.d/apache2 restart',
  refreshonly => true,
  path        => '/usr/bin:/bin',
}
```

**Corrective and Preventative Measures:**

*Improvements/Fixes:*
- Implement rigorous code review processes to catch configuration errors before deployment.
- Enhance monitoring for Apache error codes, ensuring rapid detection of similar issues.

*Tasks:*
1. Establish a checklist for reviewing critical configuration files before application deployment.
2. Integrate additional monitoring checks specifically for Apache error responses.
3. Conduct training sessions to enhance the team's awareness of common configuration pitfalls.

This postmortem outlines the outage's duration, impact, root cause, timeline of events, and the corrective measures taken. It emphasizes the importance of thorough configuration reviews and enhanced monitoring to prevent similar incidents in the future.

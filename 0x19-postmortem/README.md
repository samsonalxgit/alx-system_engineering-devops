<h1>A postmortem report about website returns error 500</h1>
<h2>Isuue</h2>
<bip>For all GET requests apache server was returning a 500 error. The website consists of one HTML page so a problem with MySQL or PHP was identified as a probable cause.<br>
08–06–2023, 12:00 AM PDT: Project release<br>
08–06–2023, 1:00 PM PDT: First check for error logs.<br>
08–06–2023, 1:20 PM PDT: Find PHP was disabled. Error logging re-enabled, server restarted, ‘no such file’ error found.<br>
08–06–2023, 1:45 PM PDT: Typo error found in PHP file. Manually fix. Server restarted. Request returns 200 status code.<br>
08–06–2023, 2:30 PM PDT: Puppet script begun and testing for proper fix begin<br>
08–06–2023, 4:00 PM PDT: Puppet script finished and able to be deployed across all servers.<br></bip>
<h2>Impact</h2>
Users are unable to access the website from at least midnight 01–11–2021 to 4:00 PM 01–06–2023. All servers affected.
<h2>Cause</h2>
The root cause of the problem was a typo for the file name at line 137 of the file /var/www/html/wp-settings.php. The line read: require_once( ABSPATH . WPINC . ‘/class-wp-locale.php’ ); Extension for the file should have been ‘.php’ Error likely caused by human error in updated settings and subsequent lack of testing to ensure server was still functional.
<h2>Solution</h2>
Upon finding of error, a manual fix on one server was first completed to ensure the fix would work. A puppet file was then created to distribute across all servers.
<h2>Prevention</h2>
The error could have been easily prevented by the user who updated the config file to test that the server was still functional before exiting. In addition, debugging should not have been turned off for PHP files.

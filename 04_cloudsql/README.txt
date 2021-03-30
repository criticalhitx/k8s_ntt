wp-deployment-yaml:
Replace YOUR_SQL_INSTANCE in line 42 with SQL Connection Name (Not Hostname)

wp-env.yaml:
Replace username_goes_here with Username Created On Wordpress CLOUDSQL
Replace password_goes_here with Password Created On Wordpress CLOUDSQL

Like here"""
CREATE DATABASE wordpress;
GRANT ALL PRIVILEGES ON wordpress.* TO "wp_user"@"%" IDENTIFIED BY "stormwind_rules";
FLUSH PRIVILEGES;
"""
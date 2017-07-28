chown root:root /proftpd/proftpd.passwd
chmod 440 /proftpd/proftpd.passwd
chown root:root /proftpd/proftpd.group
chmod 440 /proftpd/proftpd.group

/usr/sbin/proftpd -n -c /proftpd/proftpd.conf


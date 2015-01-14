wget http://squeezelite.googlecode.com/files/squeezelite-armv6hf

mv squeezelite-armv6hf /usr/bin
chmod u+x /usr/bin/squeezelite-armv6hf

mv squeezelitehf_init.sh /etc/init.d/squeezelite
chmod u+x /etc/init.d/squeezelite

mv squeezelite_settings.sh /etc/squeezelite
chmod 644 /etc/squeezelite

cd /etc/init.d/
update-rc.d squeezelite defaults

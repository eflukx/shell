# =========================================================
#              CHANGE THESE VALUES IF NEEDED

# the name for the squeezelite player (-n option):
SL_NAME="Framboos"
#        Note: "Framboos" is Dutch for Raspberry... :-)

# Set the soundcard
#SL_SOUNDCARD="sysdefault:CARD=ALSA"

# Uncomment the next line (remove hash) if you want to change the mac address (-m option):
#SL_MAC_ADDRESS="00:00:00:00:00:01"
#        Note: when left commented squeezelite will use the mac address of your ethernet card or
#              wifi adapter, which is what you want.
#              If you change it to something different, it will give problems is you use mysqueezebox.com .

# Uncomment the next line (remove hash) if you want to point squeezelite
# at the IP address of your squeezebox server (-s option). And change the IP address of course..
SB_SERVER_IP="10.135.10.6"
#        Note: if this is not set, Squeezelite will use auto discovery to find
#              the LMS server, which works fine too.

# Uncomment the next line if you want squeezelite to start playing on startup. BE AWARE: If you use this, you
# should also uncomment and fill-in SB_SERVER_IP (see above). Otherwise this will not work.
#SL_AUTO_PLAY="Yes"

# Uncomment the next line (remove hash) if you want to set ALSA parameters (-a option, set to buffer size 80):
#SL_ALSA_PARAMS="80"

# Uncomment the next TWO lines to turn on logging (-f and -d option):
SL_LOGFILE="/var/log/squeezelite.log"
SL_LOGLEVEL="all=debug"

# Uncomment the next line if you want to start the squeezelite daemon with a specific user.
#SL_USER="pi"

# Uncomment the next line if you want to start the squeezelite daemon with a specific working directory
#SL_WORKING_DIR="/home/pi"

# =========================================================

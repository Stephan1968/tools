
INSTALLDIR = /usr/local

# Do you want recorder's built-in HTTP REST API?
WITH_HTTP ?= yes

# Do you want to use reverse-geo caching? (Highly recommended)
WITH_LMDB ?= yes

# Do you have Lua libraries installed and want the Lua hook integration?
WITH_LUA ?= yes

# Do you want support for the `pingping' monitoring feature?
WITH_PING ?= yes

# Do you want support for removing data via the API? (Dangerous)
WITH_KILL ?= no

# Do you want R_only support? (Probably not; this is for Hosted)
# If you set this to `yes', WITH_LMDB will be set to yes
WITH_RONLY ?= no

# Do you require support for OwnTracks Greenwich firmware?
WITH_GREENWICH ?= no

# Where should the recorder store its data? This directory must
# exist and be writeable by recorder (and readable by ocat)
STORAGEDEFAULT = /owntracks/recorder/store

# Where should the recorder find its document root (HTTP)?
DOCROOT = /usr/local/owntracks/htdocs

# Define the precision for reverse-geo lookups. The higher
# the number, the more granular reverse-geo will be:
#
# 1	=> 5,009.4km x 4,992.6km
# 2	=> 1,252.3km x 624.1km
# 3	=> 156.5km x 156km
# 4	=> 39.1km x 19.5km
# 5	=> 4.9km x 4.9km
# 6	=> 1.2km x 609.4m
# 7	=> 152.9m x 152.4m
# 8	=> 38.2m x 19m
# 9	=> 4.8m x 4.8m
# 10	=> 1.2m x 59.5cm

GHASHPREC = 7

# Should the JSON emitted by recorder be indented? (i.e. beautified)
# yes or no
JSON_INDENT ?= no

# Optionally specify the path to the Mosquitto libs, include here
MOSQUITTO_INC = -I/usr/include
MOSQUITTO_LIB = -L/usr/lib
MORELIBS = -lssl

# If WITH_LUA is configured, specify compilation and linkage flags
# for Lua either manually or using pkg-config. This may require tweaking,
# and in particular could require you to add the lua+version (e.g lua-5.2)
# to both pkg-config invocations

LUA_CFLAGS = `pkg-config --cflags lua5.2`
LUA_LIBS   = `pkg-config --libs lua5.2`
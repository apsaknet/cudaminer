####################################################################################
###
### apsak-miner
### https://github.com/tmrlvi/apsak-miner/releases
###
### Hive integration: Merlin
###
####################################################################################

#!/usr/bin/env bash
[[ -e /hive/custom ]] && . /hive/custom/apsak-miner/h-manifest.conf
[[ -e /hive/miners/custom ]] && . /hive/miners/custom/apsak-miner/h-manifest.conf
conf=""
conf+=" --apsakd-address=$CUSTOM_URL --mining-address $CUSTOM_TEMPLATE"


[[ ! -z $CUSTOM_USER_CONFIG ]] && conf+=" $CUSTOM_USER_CONFIG"

echo "$conf"
echo "$conf" > $CUSTOM_CONFIG_FILENAME


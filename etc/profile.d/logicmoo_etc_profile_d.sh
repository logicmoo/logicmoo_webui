#!/bin/bash

if [[ -z "${LOGICMOO_WS}" ]]; then
 WS_MAYBE="$(cd "$(dirname "${BASH_SOURCE[0]}")"; pwd -P)"

 if [[ -d "${WS_MAYBE}/packs_sys" ]]; then
  export LOGICMOO_WS=$WS_MAYBE
 else
  export LOGICMOO_WS=/opt/logicmoo_workspace
 fi

 echo LOGICMOO_WS=$LOGICMOO_WS

fi

source $LOGICMOO_WS/logicmoo_env.sh

#!/bin/bash

COREDIR=$(/usr/bin/dirname $0)
JSON="${COREDIR}/demo.json"
GENERATEJSON="${COREDIR}/generatejson.py"
PKGSDIR="${COREDIR}/pkgs"
ROOTSCRIPTSDIR="${COREDIR}/scripts/root"
USERSCRIPTSDIR="${COREDIR}/scripts/user"
BASEURL="https://raw.githubusercontent.com/erikng/installapplicationsdemo/python3/installapplications"
PKGSURL="${BASEURL}/pkgs"
ROOTSCRIPTSURL="${BASEURL}/scripts/root"
USERSCRIPTSURL="${BASEURL}/scripts/user"

/usr/bin/python ${GENERATEJSON} \
--base-url ${BASEURL} \
--output ~/Desktop \
--item \
item-name='Preflight' \
item-path="${ROOTSCRIPTSDIR}/preflight.py" \
item-stage='preflight' \
item-type='rootscript' \
item-url="${ROOTSCRIPTSURL}/preflight.py" \
script-do-not-wait=False \
--item \
item-name='Munki (LaunchD)' \
item-path="${PKGSDIR}/munkitools_launchd-3.0.3265.pkg" \
item-stage='setupassistant' \
item-type='package' \
item-url="${PKGSURL}/munkitools_launchd-3.0.3265.pkg" \
script-do-not-wait=False \
--item \
item-name='Munki (Core)' \
item-path="${PKGSDIR}/munkitools_core-4.0.0.3881.pkg" \
item-stage='setupassistant' \
item-type='package' \
item-url="${PKGSURL}/munkitools_core-4.0.0.3881.pkg" \
script-do-not-wait=False \
--item \
item-name='DEPNotify' \
item-path="${PKGSDIR}/DEPNotify-1.1.5.pkg" \
item-stage='setupassistant' \
item-type='package' \
item-url="${PKGSURL}/DEPNotify-1.1.5.pkg" \
script-do-not-wait=False \
--item \
item-name='Caffeinate Machine' \
item-path="${ROOTSCRIPTSDIR}/caffeinate.py" \
item-stage='userland' \
item-type='rootscript' \
item-url="${ROOTSCRIPTSURL}/caffeinate.py" \
script-do-not-wait=True \
--item \
item-name='Bless VM' \
item-path="${ROOTSCRIPTSDIR}/high_sierra_vm_bless.py" \
item-stage='userland' \
item-type='rootscript' \
item-url="${ROOTSCRIPTSURL}/high_sierra_vm_bless.py" \
script-do-not-wait=False \
--item \
item-name='Munki Bootsrap' \
item-path="${ROOTSCRIPTSDIR}/munki_bootstrap.py" \
item-stage='userland' \
item-type='rootscript' \
item-url="${ROOTSCRIPTSURL}/munki_bootstrap.py" \
script-do-not-wait=False \
--item \
item-name='Munki LaunchD Loader' \
item-path="${ROOTSCRIPTSDIR}/munki_launchd_loader.py" \
item-stage='userland' \
item-type='rootscript' \
item-url="${ROOTSCRIPTSURL}/munki_launchd_loader.py" \
script-do-not-wait=False \
--item \
item-name='Munki Auto Trigger' \
item-path="${ROOTSCRIPTSDIR}/munki_auto_trigger.py" \
item-stage='userland' \
item-type='rootscript' \
item-url="${ROOTSCRIPTSURL}/munki_auto_trigger.py" \
script-do-not-wait=True \
--item \
item-name='Dockutil User' \
item-path="${USERSCRIPTSDIR}/dockutil.py" \
item-stage='userland' \
item-type='userscript' \
item-url="${USERSCRIPTSURL}/dockutil.py" \
script-do-not-wait=False \
--item \
item-name='DEPNotify End' \
item-path="${ROOTSCRIPTSDIR}/depnotify_end.py" \
item-stage='userland' \
item-type='rootscript' \
item-url="${ROOTSCRIPTSURL}/depnotify_end.py" \
script-do-not-wait=False

/bin/mv ~/Desktop/bootstrap.json ${JSON}

unzip /InData.zip -d /SARWIND_LGMod
if [ -f /tmp/.X1-lock ]; then
    rm -f /tmp/.X1-lock
fi
if [ -d /tmp/.X11-unix ]; then
    rm -rf /tmp/.X11-unix
fi
vnc4server
/SARWIND_LGMod/run_SARWIND_LGMod_v401.sh /MCR_R2011b/v716 /SARWIND_LGMod/InData/SARWIND_IO_Info.txt /SARWIND_LGMod/InData/SARWIND_Settings.txt
zip /OutData.zip /SARWIND_LGMod/OutData

echo "--------------------------------------------------------------"
echo "CONTENT OF THE CURRENT FOLDER"
ls -a .
echo "--------------------------------------------------------------"

unzip ./InData.zip 

if [ -f /tmp/.X1-lock ]; then
    rm -f /tmp/.X1-lock
fi
if [ -d /tmp/.X11-unix ]; then
    rm -rf /tmp/.X11-unix
fi

vnc4server

export DISPLAY=$HOSTNAME:1
./run_SARWIND_MS_LGMod.sh /MCR_R2016b/v91 ./InData/SARWIND_IO_Info.txt ./InData/SARWIND_Settings.txt

zip -r OutData.zip OutData

if [ -d ./OutData/*Multiscale* ] 
then
    find ./OutData/*Multiscale* -name *_Results.txt -exec cp {} ./SARWIND_LGMod_Results.txt
else
    find ./OutData -name *_Results.txt -exec cp {} ./SARWIND_LGMod_Results.txt
fi

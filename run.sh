echo "--------------------------------------------------------------"
echo "CONTENT OF THE FOLDER"
ls -a .
echo "--------------------------------------------------------------"
echo "CONTENT OF THE PARENT FOLDER"
ls -a ..
echo "--------------------------------------------------------------"
unzip ./InData.zip 
if [ -f /tmp/.X1-lock ]; then
    rm -f /tmp/.X1-lock
fi
if [ -d /tmp/.X11-unix ]; then
    rm -rf /tmp/.X11-unix
fi
vnc4server
echo "--------------------------------------------------------------"
echo $DISPLAY
echo "--------------------------------------------------------------"
./run_SARWIND_LGMod_v401.sh /MCR_R2011b/v716 ./InData/SARWIND_IO_Info.txt ./InData/SARWIND_Settings.txt
ls OutData
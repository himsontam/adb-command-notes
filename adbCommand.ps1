# uninstall service
adb uninstall com.bbpos.wiseapp.service

# Go to Setting
adb shell am start -a android.settings.SETTINGS

# Uninstall Application
adb uninstall [package_name]
adb uninstall com.bbpos.wiseapp.service
com.stripe.reader
com.bbpos.loader
com.bbpos.wiseapp.tmt
adb uninstall com.checkoutapp #Uninstall Checkout App


adb shell dpm remove-active-admin com.seven11.launcher/.util.MDAdminReceiver #Uninstall Launcher (test version only)
adb uninstall com.seven11.launcher #Uninstall Launcher (test version only)
adb uninstall com.seven11.mobiledataprovider #Uninstall MobileDataProvider

# Install Application
adb install -r [package_name]
adb install -r "C:\Users\himson.tam\OneDrive - BBPOS\BBPOS\WiseServiceAppAPK\service_v1.5.2.20200213.WISEAPP.SERVICE-signed(Android9.0 sha256).apk"
adb install -r "C:\Users\himson.tam\OneDrive - BBPOS\BBPOS\WiseServiceAppAPK\service_v1.5.3.20200226.WISEAPP.SERVICE-signed(Android9.0 sha256).apk"
adb install -r "C:\Users\himson.tam\OneDrive - BBPOS\BBPOS\WiseServiceAppAPK\service_v1.5.4.20200310.WISEAPP.SERVICE-signed(Android9.0 sha256).apk"
adb install -r "C:\Users\himson.tam\OneDrive - BBPOS\BBPOS\WiseServiceAppAPK\service_v1.5.5.20200313.WISEAPP.SERVICE_beta6_debug.apk"
adb install -r "C:\Users\himson.tam\OneDrive - BBPOS\BBPOS\WiseServiceAppAPK\service_v1.5.5.20200313.WISEAPP.SERVICE_beta8_debug.apk"
adb install -r "C:\Users\himson.tam\OneDrive - BBPOS\BBPOS\WiseServiceAppAPK\service_v1.5.6.20200317.WISEAPP.SERVICE_beta1_debug.apk"
adb install -r "C:\Users\himson.tam\OneDrive - BBPOS\BBPOS\WiseServiceAppAPK\service_v1.5.6.20200324.WISEAPP.SERVICE_beta3_debug.apk"


service_v1.5.4.20200310.WISEAPP.SERVICE-signed(Android9.0 sha256)
adb install -r service_v1.5.4.20200309.WISEAPP.SERVICE_debug.apk
service_v1.5.5.20200311.WISEAPP.SERVICE_beta1_debug.apk
service_v1.5.5.20200311.WISEAPP.SERVICE_beta2_debug.apk
service_v1.5.5.20200313.WISEAPP.SERVICE_beta4_debug.apk
service_v1.5.5.20200313.WISEAPP.SERVICE_beta6_debug.apk
service_v1.5.5.20200313.WISEAPP.SERVICE_beta7_debug.apk
service_v1.5.5.20200313.WISEAPP.SERVICE_beta8_debug.apk
service_v1.5.4.20200310.WISEAPP.SERVICE-signed(Android9.0 sha256).apk
service_v1.5.6.20200317.WISEAPP.SERVICE_beta1_debug.apk
service_v1.5.6.20200324.WISEAPP.SERVICE_beta3_debug.apk

# Send unbind broadcast
adb shell am broadcast -a com.bbpos.intent.UNBIND_LAUNCHER

# sign apk
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore [keystore] -storepass [storepass] -keypass [storepass] [apk_file] [Alias]

# verify the apk certs
jarsigner -verify -verbose -certs [apk_file]

# archive the apk
zipalign -v 4 [apk_file] [sign_apk_file]

adb logcat -v time > filename.log
adb logcat -v time > "C:\Users\himson.tam\OneDrive - BBPOS\BBPOS\ProgramForLearning\log test\test1.txt"
adb logcat -d time > "C:\Users\himson.tam\OneDrive - BBPOS\BBPOS\ProgramForLearning\log test\test1.txt"

adb logcat -v time > "C:\Users\himson.tam\OneDrive - BBPOS\BBPOS\Test Task\Testing Log\problem1.txt"

adb logcat -s "WiseManager-TMT" > tmt.log

adb -s 192.168.8.205:5555 logcat -s "WiseManager-TMT" #log only the tag in cmd

adb reboot

# get app version
# com.android.keychain
adb shell "dumpsys package com.seven11.sevenboss | grep versionName"
adb shell "dumpsys package com.bbpos.wiseapp.service | grep versionName"

#OS Version
adb shell getprop ro.build.custom.version

# check current focus app
adb shell "dumpsys window windows | grep mCurrentFocus"

# to get logcat log with find and grep to search specific log
adb shell logcat | find ""
adb shell logcat | grep ""

#adb over wifi
adb -s DEVICENAME tcpip 5555
adb connect 192.168.9.10:5555

#get package name
adb shell pm list packages
com.android.keychain
adb shell pm path com.example.someapp
adb pull /data/app/com.example.someapp-2.apk path/to/desired/destination

#Get the ROM version, type, serial number
adb shell getprop ro.build.custom.version
adb shell getprop ro.build.type
adb shell getprop ro.boot.serialno

#Find a file
adb shell "find / -name 'libIAL*' -print 2>/dev/null"

#Logcat w/ filter
adb logcat -s com.bbpos

#Pull APK from device
# 1.	Get package list:	adb shell pm list packages [filter]
# 2.	Get package path:	adb shell pm path com.example.someapp <package-name>
# 3.	Pull package apk:	adb <pull path_to_apk> <path-on-computer-to-store-APK>

#Push file to sdcard
adb push local_file /sdcard/.

#Restart adb server
# adb kill-server & adb start-server

#Screenshot
adb exec-out screencap -p > screenshot.png

#Set Ring / Notification and Music Volume
adb shell media volume --show --stream 2 --set 3
adb shell media volume --show --stream 3 --set 3

#Start mtklogger
adb shell am start -n com.mediatek.mtklogger/com.mediatek.mtklogger.MainActivity

#Turn device screen on
adb shell input keyevent KEYCODE_WAKEUP

#Launch App
adb shell am start -n [Package Name]/[Activity Name]

# Get App Activity 
adb shell dumpsys activity

# To get the screen resolution:
adb shell wm size

# Screen Record
abd shell
# screenrecord --size 1080x1920 /sdcard/demo.mp4
# adb shell screenrecord <folder-path/filename.mp4>
# -time-limit <number-of-seconds> # add time limatation

# #install multiple apps from a folder
# for %f in (<folder-path>\*.apk) do adb install "%f"

# adb shell
# When you do, you can type many of the regular Linux shell commands. Here are a few of them:

pwd: Display the name of the current working directory.

cd: Change the current working directory.

ls: List the files in this directory.

cp: Copy a file.

mv: Move or rename a file.

rm: Delete a file.

mkdir: Make a new directory.

# am: Perform activity manager tasks (e.g., start an activity, start a service, stop a process, or broadcast something).

# pm: Perform package manager tasks (e.g., list installed packages or uninstall an app).

# Home button
adb shell am start -W -c android.intent.category.HOME -a android.intent.action.MAIN

#Go to home page
adb shell am start -a android.intent.action.MAIN -c android.intent.category.HOME

#Activity Manager
adb shell am start -a android.intent.action.VIEW
adb shell am broadcast -a 'my_action'

adb shell am start -a android.intent.action.CALL -d tel:+972527300294 // Make a call

# Open send sms screen with phone number and the message:
adb shell am start -a android.intent.action.SENDTO -d sms:+972527300294   --es  sms_body "Test" --ez exit_on_sent false

# Input text
adb shell input text

# Remove Folder
adb shell rm -r sdcard/logcatlog

# Full Backup backup
adb backup -all -f /backup/location/file.ab

# adb restore
# adb restore <backup-file-location>

# backup Specific App and Its Data
# 1. adb shell pm list packages
# 2. adb backup -f <file-location-for-backup> -apk <package-name>
# 3. adb restore <backup-file-location>

#Change DPI of the Screen
adb shell wm density
# adb shell wm density <value>

# Get System Stats and Info
adb shell dumpsys | grep "DUMP OF SERVICE"

adb command dictionary
https://mazhuang.org/awesome-adb/




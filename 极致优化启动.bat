@echo off
title [ Minecraft ������ ����̨ ] 
echo ==================================
echo     �����Ż����� ���� ALMikey 
echo  �뽫 ���������� ��Ϊ server.jar  
echo ==================================
set Xms=1G
set Xmx=5G

:start
java -Xms%Xms% -Xmx%XmX% --add-modules=jdk.incubator.vector -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -jar server.jar --nogui

echo ========================================
echo       [ ���������� 3s ������ ] 
echo ========================================
ping 127.0.0.1 -n 3 > nul
goto start

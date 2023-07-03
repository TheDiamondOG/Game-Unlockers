echo off
cls
echo Where is GAMENAME located
SET /P game=GAMENAME: 
cd %game%
cls
dotnet tool install -g BepInEx.AssemblyPublicizer.Cli
cd ./GAMENAME_Data/Managed/
assembly-publicizer Assembly-CSharp.dll
del Assembly-CSharp.dll
ren Assembly-CSharp-publicized.dll Assembly-CSharp.dll
echo Finished the mod stuff
pause
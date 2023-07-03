echo off
cls
echo Where is Muck located
SET /P muckgame=Muck: 
cd %muckgame%
cls
dotnet tool install -g BepInEx.AssemblyPublicizer.Cli
cd ./Muck_Data/Managed/
assembly-publicizer Assembly-CSharp.dll
del Assembly-CSharp.dll
ren Assembly-CSharp-publicized.dll Assembly-CSharp.dll
echo Finished the mod stuff
pause
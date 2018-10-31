; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Cosmica"
#define MyAppVersion "0.14.1.0"
#define MyAppPublisher "NeuroJump (2018) all rights reserved"
#define MyAppURL "https://playcosmica.com"
#define MyGameSourcePath "C:\Users\colsh\Downloads\development\cosmica\anw"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{D66402ED-CA2B-4F6E-92F8-BF6F09296F56}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=c:\neurojump\{#MyAppName}
DefaultGroupName={#MyAppName}
LicenseFile=C:\Users\colsh\Downloads\development\cosmica\anw\build\2018\license.txt
InfoBeforeFile=C:\Users\colsh\Downloads\development\cosmica\anw\build\2018\release.txt
OutputDir=C:\Users\colsh\Downloads\development\cosmica\anw\build\2018
OutputBaseFilename=Cosmica-{#MyAppVersion}
SetupIconFile=C:\Users\colsh\Downloads\development\cosmica\anw\build\2018\app.ico
Compression=lzma
SolidCompression=yes
UsePreviousAppDir=no

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; \
    GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "{#MyGameSourcePath}\Client\*"; DestDir: "{app}\Client"; Flags: ignoreversion recursesubdirs createallsubdirs; Permissions: users-full
Source: "{#MyGameSourcePath}\Data\*"; DestDir: "{app}\Data"; Flags: ignoreversion recursesubdirs createallsubdirs; Permissions: users-full
Source: "{#MyGameSourcePath}\Database\*"; DestDir: "{app}\Database"; Flags: ignoreversion recursesubdirs createallsubdirs; Permissions: users-full
Source: "{#MyGameSourcePath}\Packages\*"; DestDir: "{app}\Packages"; Flags: ignoreversion recursesubdirs createallsubdirs; Permissions: users-full
Source: "{#MyGameSourcePath}\Server\*"; DestDir: "{app}\Server"; Flags: ignoreversion recursesubdirs createallsubdirs; Permissions: users-full

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{userdesktop}\Cosmica Single Player"; Filename: "{app}\Client\singleplayer.bat"; \
    IconFilename: "{app}\Client\logo.ico"; Tasks: desktopicon
Name: "{userdesktop}\Cosmica Join Game"; Filename: "{app}\Client\startclient.bat"; \
    IconFilename: "{app}\Client\logo.ico"; Tasks: desktopicon
Name: "{userdesktop}\Cosmica Host Game"; Filename: "{app}\Client\startserver.bat"; \
    IconFilename: "{app}\Client\logo.ico"; Tasks: desktopicon
Name: "{userdesktop}\Cosmica Folder Location"; Filename: "{app}\Client\"; Tasks: desktopicon; Flags: foldershortcut;

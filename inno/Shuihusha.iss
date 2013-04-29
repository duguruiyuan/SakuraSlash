#define MyAppName "����ɱ"
#define MyAppVersion "3.0"
#define MyAppPublisher "���ӻṤ����"
#define MyAppURL "http://weibo.com/conanslash"
#define MyAppExeName "ConanSlash.exe"

[Setup]
; ע: AppId��ֵΪ������ʶ��Ӧ�ó���
; ��ҪΪ������װ����ʹ����ͬ��AppIdֵ��
; (�����µ�GUID����� ����|��IDE������GUID��)
AppId={{9EF3FB1B-0915-4C70-ACCC-EC68FCBA2107}
AppName={#MyAppName}
AppVersion={#MyAppVersion}AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
;AppUpdatesURL={#MyAppURL}

AppCopyright=?2010-2013 TianziClub QSanguosha Software
VersionInfoVersion=3.0.0.0
VersionInfoCompany=TianziClub Software
VersionInfoDescription=���ӻ�ˮ�ɱ
VersionInfoTextVersion=5, 0, 0, 0

DefaultDirName={pf}\ConanSlash
;DisableDirPage=yes
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=readme1.txt
InfoBeforeFile=readme2.txt
InfoAfterFile=readme3.txt
OutputDir=d:\
OutputBaseFilename=Shuihusha{#MyAppVersion}-Setup
SetupIconFile=package.ico
;WizardImageFile=border.bmp
;WizardSmallImageFile=logo.bmp
Compression=lzma
SolidCompression=yes

[Languages]
Name: "chinesesimp"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";
; OnlyBelowVersion: 0,6.1
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Components]
Name: main; Description: "������(��ѡ)"; Types: full compact custom; Flags: fixed
Name: doc; Description: "�ο��ĵ�"; Types: full;

[Files]
Source: "..\ConanSlash.exe"; DestDir: "{app}"; Flags: ignoreversion 

Source: "..\*"; DestDir: "{app}"; Excludes: "\inno\*,\swig\*,\propagate\*,\extension*\*,lua5*.dll,\config.ini"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: main Source: "..\propagate\����˵��.txt"; DestDir: "{app}"; Flags: ignoreversion ; Components: main
;Source: "..\extensions\customcards.*"; DestDir: "{app}\extensions"; Flags: ignoreversion ; Components: main
;Source: "..\extensions\custom-cards.txt"; DestDir: "{app}\extensions"; Flags: ignoreversion ; Components: main
 
Source: "..\extension-doc\*"; DestDir: "{app}\extension-doc"; Flags: ignoreversion recursesubdirs createallsubdirs ; Components: doc
Source: "..\swig\sanguosha.i"; DestDir: "{app}\swig"; Flags: ignoreversion recursesubdirs createallsubdirs ; Components: doc
; ע��: ��Ҫ���κι���ϵͳ�ļ���ʹ�á�Flags: ignoreversion��

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent


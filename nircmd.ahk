#NoEnv ; Stops variable weirdness ;
SendMode Input
#InstallKeybdHook ; probably not needed? ;
#UseHook On  
#SingleInstance force ; Forces only single instance of the script ;
#Hotstring * NoMouse B0 Z C C1 ; This is the activator for my hotstings ;
	; * for no end character ;
	; B0 for no backspacing ;
	; Z for resetting recognizer ;
	; C case sensitive ;
	; C1 case non-conforming ;
	; X send as command not text, use on case by case basis ;

;--------------------------------------------------;
#if (getKeyState("F24", "P")) ; Blocks F24 from passing through and accepts only the keypress inside of it ;
F24::return

; system block encoder 0 ;
F1:: Run nircmd.exe ""changesysvolume -1638"" 
F2:: Run nircmd.exe ""changesysvolume 1638""
F3:: Run nircmd.exe ""mutesysvolume 2""
F4:: Run nircmd.exe ""setsysvolume 32767"" ; was 49151 for 75%, 32767 is 50% ;
;--------------------------------------------------;
; focused block encoder 1 ;
F5:: Run nircmd.exe ""changeappvolume focused -.05""
F6:: Run nircmd.exe ""changeappvolume focused .05""
F7:: Run nircmd.exe ""muteappvolume focused 2""
F8:: Run nircmd.exe ""setappvolume focused .25""
;--------------------------------------------------;
; spotify.exe block encoder 2 ;
F9:: Run nircmd.exe ""changeappvolume spotify.exe -.05""
F10:: Run nircmd.exe ""changeappvolume spotify.exe .05""
F11:: Run nircmd.exe ""muteappvolume spotify.exe 2""
F12:: Run nircmd.exe ""setappvolume spotify.exe .25""
;--------------------------------------------------;
; discord.exe block encoder 3 ;
1:: Run nircmd.exe ""changeappvolume discord.exe -.05""
2:: Run nircmd.exe ""changeappvolume discord.exe .05""
3:: Run nircmd.exe ""muteappvolume discord.exe 2""
4:: Run nircmd.exe ""setappvolume discord.exe .25""
;--------------------------------------------------;
; firefox.exe block encoder 4 ;
5:: Run nircmd.exe ""changeappvolume firefox.exe -.05""
6:: Run nircmd.exe ""changeappvolume firefox.exe .05""
7:: Run nircmd.exe ""muteappvolume firefox.exe 2""
8:: Run nircmd.exe ""setappvolume firefox.exe .25""
;--------------------------------------------------;
; voicemeeter block encoder 5 ;
9:: Run nircmd.exe ""changeappvolume voicemeeterpro.exe -.05""
0:: Run nircmd.exe ""changeappvolume voicemeeterpro.exe .05""
-:: Run nircmd.exe ""muteappvolume voicemeeterpro.exe 2""
=:: Run nircmd.exe ""setappvolume voicemeeterpro.exe .25""
;--------------------------------------------------;
; encoder 6 ;
numpad1:: ; Run nircmd.exe ""changeappvolume voicemeeterpro.exe -.05""
numpad2:: ; Run nircmd.exe ""changeappvolume voicemeeterpro.exe .05""
numpad3:: ; Run nircmd.exe ""muteappvolume voicemeeterpro.exe 2""
numpad4:: ; Run nircmd.exe ""setappvolume voicemeeterpro.exe .25""
;--------------------------------------------------;
; encoder 7 ;
numpad5:: ; Run nircmd.exe ""changeappvolume firefox.exe -.025""
numpad6:: ; Run nircmd.exe ""changeappvolume firefox.exe .025""
numpad7:: ; Run nircmd.exe ""muteappvolume firefox.exe 2""
numpad8:: ; Run nircmd.exe ""setappvolume firefox.exe .25""
;--------------------------------------------------;
; encoder 8 ;
numpad9:: ; Run nircmd.exe ""changeappvolume firefox.exe -.025""
numpad0:: ; Run nircmd.exe ""changeappvolume firefox.exe .025""
numpadSub:: ; Run nircmd.exe ""muteappvolume firefox.exe 2""
numpadAdd:: ; Run nircmd.exe ""setappvolume firefox.exe .25""
;--------------------------------------------------;

#if ; This closes the F24 if argument
return

;--------------------------------------------------;
#if (getKeyState("F13", "P")) ; Blocks F13 from passing through and accepts only the keypress inside of it ;
F13::return

; Discord letters block ;
::a:::regional_indicator_a: `
::c:::regional_indicator_c: `
::d:::regional_indicator_d: `
::e:::regional_indicator_e: `
::f:::regional_indicator_f: `
::g:::regional_indicator_g: `
::h:::regional_indicator_h: `
::I:::regional_indicator_i: `
::j:::regional_indicator_j: `
::k:::regional_indicator_k: `
::l:::regional_indicator_l: `
::m:::regional_indicator_m: `
::n:::regional_indicator_n: `
::o:::regional_indicator_o: `
::p:::regional_indicator_p: `
::q:::regional_indicator_q: `
::r:::regional_indicator_r: `
::s:::regional_indicator_s: `
::t:::regional_indicator_t: `
::u:::regional_indicator_u: `
::v:::regional_indicator_v: `
::w:::regional_indicator_w: `
::x:::regional_indicator_x: `
::y:::regional_indicator_y: `
::z:::regional_indicator_z: `
;--------------------------------------------------;
; Discord numbers block ;
::1:::one: `
::2:::two: `
::3:::three: `
::4:::four: `
::5:::five: `
::6:::six: `
::7:::seven: `
::8:::eight: `
::9:::nine: `
::0:::zero: `
;--------------------------------------------------;

#if ; This closes the F13 if argument
return
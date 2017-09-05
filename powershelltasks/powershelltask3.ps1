function encrypt($a){
    $letter=[int][char]$a
    $letter=$letter+1;
    return [char]$letter
}

$encryptedtext=""

$plaintext=Read-Host 'Text to be encrypted: '

for($i=0;$i -lt $plaintext.length; $i++){
    $tmpl=encrypt($plaintext[$i])
    $encryptedtext +=$tmpl
}
return $encryptedtext
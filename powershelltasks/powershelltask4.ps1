function encrypt($a){
    $letter=[int][char]$a
    $letter=$letter+1;
    return [char]$letter
}

function decrypt($a){
    $letter=[int][char]$a
    $letter=$letter-1;
    return [char]$letter
}

$userchoice=Read-Host 'Do you want to [E]ncrypt or [D]ecrypt?'

if($userchoice -eq "E"){
    $encryptedtext=""
    $plaintext=Read-Host 'Text to be encrypted: '

    for($i=0;$i -lt $plaintext.length; $i++){
        $tmpl=encrypt($plaintext[$i])
        $encryptedtext +=$tmpl
    }
    echo "Decrypted text: $plaintext"
    echo ""
    echo "Encrypted to: $encryptedtext"

    Read-Host -Prompt "Press enter to exit"
}

elseif($userchoice -eq "D"){
    $decryptedtext=""

    $input=Read-Host 'Text to be decrypted: '
    for($i=0;$i -lt $input.Length; $i++){

    $tmpl=decrypt($input[$i])
    $decryptedtext+=$tmpl
    }
    echo "Encrypted text: $input"
    echo ""
    echo "Decrypted to: $decryptedtext"
    Read-Host -Prompt "Press enter to exit"
}
else{
    echo "Thats not a valid response. Either E for encrypt or D for decrypt!"
}
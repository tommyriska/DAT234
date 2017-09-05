function decrypt($a){
$character=[int][char]$a
$character=$character-1;
return [char]$character
}

$finalword=""

$input=Read-Host 'Write one or more characters to decrypt: '
for($i=0;$i -lt $input.Length; $i++){

$tmpw=decrypt($input[$i])
$finalword+=$tmpw
}
echo "Encrypted text: $input"
echo ""
echo "Decrypted to: $finalword"
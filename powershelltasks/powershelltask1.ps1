function decrypt($a){
$character=[int][char]$a
echo "CONVERTED TO: $a"
echo ""
echo ""
$character=$character-1;
return [char]$character
}

$input=Read-Host 'Write a number to decrypt'

decrypt($input)
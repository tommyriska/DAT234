function encrypttwo($text, $key){
  $newtext=""
  $newkey=""
  $e=0

  if($text.length/$key.length -gt 1){
    $e=[int][Math]::Ceiling($text.length/$key.length)

    for($i=0; $i -lt $e; $i++){
      $newkey+=$key
    }
  }

  for($i=0; $i -lt $text.length; $i++){
    $currentkey=[int][char]$newkey[$i]
    $letter=[int][char]$text[$i]+$currentkey
    $newtext+=[char]$letter
  }

  return $newtext
}

function decrypttwo($text, $key){
  $newtext=""
  $newkey=""
  $e=0

  if($text.length/$key.length -gt 1){
    $e=[int][Math]::Ceiling($text.length/$key.length)

    for($i=0; $i -lt $e; $i++){
      $newkey+=$key
    }
  }

  for($i=0; $i -lt $text.length; $i++){
    $currentkey=[int][char]$newkey[$i]
    $letter=[int][char]$text[$i]-$currentkey
    $newtext+=[char]$letter
  }

  return $newtext
}

$userchoice=Read-Host 'Do you want to [E]ncrypt or [D]ecrypt?'

if($userchoice -eq "E"){
    $plaintext=Read-Host 'Text to be encrypted: '
    $key=Read-Host 'Key to use in encryption: '

    if($key.length -gt 0){
      $encryptedtext=encrypttwo $plaintext $key
      echo "Decrypted text: $plaintext"
      echo "Encrypted to: $encryptedtext"
    }
    else{
      echo "The key can not be empty."
    }
}

elseif($userchoice -eq "D"){
    $plaintext=Read-Host 'Text to be decrypted: '
    $key=Read-Host 'Key to use in decryption: '

    if($key.length -gt 0){
      $decryptedtext=decrypttwo $plaintext $key
      echo "Encrypted text: $plaintext"
      echo "Decrypted to: $decryptedtext"
    }
    else{
      echo "The key can not be empty."
    }
}
else{
    echo "Thats not a valid response. Either E for encrypt or D for decrypt!"
}

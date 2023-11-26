$i = 1

$str = ""


while ($str.Length -lt 1000000) {
    $str += "$i"
    $i++

    #if ($str.Length % 100 -eq 0) {
    Write-Host "$($str.Length) - $i"

    # }
    
}


$str = "a$str"
$a = [int]::Parse($str[1])
$b = [int]::Parse($str[10])
$c = [int]::Parse($str[100])
$d = [int]::Parse($str[1000])
$e = [int]::Parse($str[10000])
$f = [int]::Parse($str[100000])
$g = [int]::Parse($str[1000000])

$a * $b * $c * $d * $e * $f * $g




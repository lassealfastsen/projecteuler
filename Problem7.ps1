




$ints = 0..1000000
for ($i = 2; $i -lt [Math]::Sqrt($ints.length); $i++) {
    if ($ints[$i] -eq 0) {
        continue
    }
    for ($j = $i * $i; $j -lt $ints.length; $j += $i) {
        $ints[$j] = 0
    }
}
#$ints | foreach { if ($_) { Write-Host -NoNewLine "$_ " } }
 ($ints | Where-Object { ($_ -ne 0) })[10001]


# for ($n = 3; $n -lt 100000; $n++) {
#     try {
#         for ($d = 2; $d -le [Math]::Sqrt($n); $d++) {
#             if ($n % $d -eq 0) {
#                 throw
#             }
#         }
#         Write-Host -NoNewLine "$n "
#     }
#     catch { }
# }


$target = 10001

$primes = @()
$n = 3    
while ($primes.Length -lt $target - 1) {
    
    $prime = $true
    for ($d = 3; $d -le [Math]::Sqrt($n); $d += 2) {
        if ($n % $d -eq 0) {
            $prime = $false
            break;
        }
    }
    if ($prime) {
        $primes += $n
        #$n
    }
    $n += 2
}
$primes[-1]

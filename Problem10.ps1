
$maxval = 2000000


[bigint]$sum = 2
$cnt = 1
$primes = @(2)
$n = 3    
while ($n -lt $maxval) {
    
    $prime = $true
    for ($d = 3; $d -le [Math]::Sqrt($n); $d += 2) {
        if ($n % $d -eq 0) {
            $prime = $false
            break;
        }
    }
    if ($prime) {
        #$primes += $n
        $sum += $n
        Write-Host "$n - $sum"
    }
    $n += 2
}
($primes | Select-Object -SkipLast 1) -join '+' | Invoke-Expression

#Slow as heck, but it works...
#142913828922
 
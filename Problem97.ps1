#Generate the bigass number...

(28433 * [System.Numerics.BigInteger]::Pow(2, 7830457) + 1) | Out-File C:\Temp\bigassnumber.txt

$a = Get-Content C:\Temp\bigassnumber.txt
$a[-10..-1] -join ''
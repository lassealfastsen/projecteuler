function Get-Factorial ($n) {
    if ($n -eq 0) {
        return 1
    }
    [bigint]$fact = 1
    1..$n | ForEach { $fact *= $_ }
    return $fact
}




$r = 0
("$([bigint](Get-Factorial 100))").ToCharArray() | % {
    $r += [int]::Parse($_)
}
$r
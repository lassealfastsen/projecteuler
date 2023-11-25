$sum = 1000;
for ($a = 1; $a -le $sum / 3; $a++) {
    for ($b = $a + 1; $b -le $sum / 2; $b++) {
        $c = $sum - $a - $b;
        if ( $a * $a + $b * $b -eq $c * $c ) {
            Write-Host "$a $b $c = $($a*$b*$c)" -ForegroundColor Green
        } else {
            #Write-Host "$a $b $c = $($a*$b*$c)" -ForegroundColor Red
        }
    }
}


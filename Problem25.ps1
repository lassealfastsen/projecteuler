$fibonacchi = @([bigint]1, [bigint]1, [bigint]2)

$i = 3
while (($fibonacchi[-1]).ToString().Length -lt 1000) {
    
    $f2 = $fibonacchi[1]
    $f3 = $fibonacchi[2]

    $fibonacchi[0] = [bigint]$f2
    $fibonacchi[1] = [bigint]$f3
    $fibonacchi[2] = [bigint]($f2 + $f3)
    $i++

    if ($i % 100 -eq 0) {
        Write-Host "$i $(($fibonacchi[-1]).ToString().Length)"
    }
    
    #Start-Sleep -Milliseconds 1
}
$fibonacchi[2]
$i
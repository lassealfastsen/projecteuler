<#
<p>The prime factors of $13195$ are $5, 7, 13$ and $29$.</p>
<p>What is the largest prime factor of the number $600851475143$?</p>
#>



$num = 600851475143


$MaxFactor = [math]::Sqrt($num)

#take care of 2 as a factor
$Factor = 2
while ( ($num % $Factor) -eq 0) {
    $Factor
    $num = $num / $Factor
}

#brute force all odd numbers as factors up to max prime
$Factor = 3
while ($Factor -le $MaxFactor -and $num -ge $MaxFactor) {
    while ( ($num % $Factor) -eq 0) {
        $Factor
        $num = $num / $Factor
    }
    $Factor += 2
}
$num

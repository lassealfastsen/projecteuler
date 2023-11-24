<#
<p>$2520$ is the smallest number that can be divided by each of the numbers from $1$ to $10$ without any remainder.</p>
<p>What is the smallest positive number that is <strong class="tooltip">evenly divisible<span class="tooltiptext">divisible with no remainder</span></strong> by all of the numbers from $1$ to $20$?</p>
#>

Function Find-LCM {
    PARAM (
        [Parameter(ValueFromPipeline = $true)]
        [System.String]$String,
        [System.Double]$Number
    )
    $array = @()
    [System.Double]$product = 1
    $Numbers = $String.Split(",")
    foreach ($Number in $Numbers) {
        $sqrt = [math]::sqrt($number)
        $Factor = 2
        $count = 0
        while ( ($Number % $Factor) -eq 0) {
            $count += 1
            $Number = $Number / $Factor
            if (($array | Where-Object { $_ -eq $Factor }).count -lt $count) {
                $array += $Factor
            }
        }
        $count = 0
        $Factor = 3
        while ($Factor -le $sqrt) {
            while ( ($Number % $Factor) -eq 0) {
                $count += 1
                $Number = $Number / $Factor
                if (($array | Where-Object { $_ -eq $Factor }).count -lt $count) {
                    $array += $Factor
                }
            }           
            $Factor += 2
            $count = 0
        }
        if ($array -notcontains $Number) {
            $array += $Number
        }
    }
    foreach ($arra in $array) { $product = $product * $arra }
    $product
}

Find-LCM (1..20 -join ',')
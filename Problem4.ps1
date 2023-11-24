<#
<p>A palindromic number reads the same both ways. The largest palindrome made from the product of two $2$-digit numbers is $9009 = 91 \times 99$.</p>
<p>Find the largest palindrome made from the product of two $3$-digit numbers.</p>
#>


$length = 3

$start = ""
$end = ""


for ($i = 0; $i -lt $length; $i++) {
    $start = "$($start)1"
    $end = "$($end)9"
}



$start = [int]$start
$end = [int]$end

$res = @()

Function Palindrome ([int]$in) {
    $arr = ([string]($in)).ToCharArray()
    for ($i = 0; $i -lt $arr.Length / 2; $i++) {
        if ($arr[$i] -ne $arr[(-1 - $i)]) { return $false }
    }
    return $true
}


for ($i = $end; $i -ge $start; $i--) {
    for ($j = $end; $j -ge $start; $j--) {
        $k = $i * $j
        if (Palindrome $k) {
            $res += $k
            Write-Host "$i * $j = $k" -ForegroundColor Green
            break 
        }
    }
}

$res | Sort-Object -Descending | Select-Object -First 1
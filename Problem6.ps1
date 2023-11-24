<#
<p>The sum of the squares of the first ten natural numbers is,</p>
$$1^2 + 2^2 + ... + 10^2 = 385.$$
<p>The square of the sum of the first ten natural numbers is,</p>
$$(1 + 2 + ... + 10)^2 = 55^2 = 3025.$$
<p>Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is $3025 - 385 = 2640$.</p>
<p>Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.</p>
#>
$sumsquares = [int]0
$sum = [int]0
for ($i = 1; $i -le 100; $i++) {
    $sumsquares += ($i * $i)
    $sum += $i
}

($sum * $sum) - $sumsquares

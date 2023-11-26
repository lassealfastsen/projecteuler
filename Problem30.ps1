$these = @()

$pow = 5

10..1000000 | ForEach-Object {
    $sum = 0
    $str = $_.ToString()
    for ($i = 0; $i -lt $str.Length; $i++) {
        $sum += [Math]::Pow([int]::Parse($str[$i]), $pow)
    }



    if ($sum -eq $_) {
        Write-Host $_
        $these += [int]::Parse($str)
    }
}

$these | Measure-Object -Sum
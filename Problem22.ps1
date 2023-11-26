Set-Location C:\Temp\GIT\projecteuler
$in = (Get-Content .\in_Problem22.txt).Replace('"', '').Split(',') | Sort-Object

$scores = @()

for ($i = 0; $i -lt $in.Count; $i++) {
    $name = $in[$i]
    $multiplier = $i + 1
    $worth = 0

    for ($j = 0; $j -lt $name.Length; $j++) {
        $worth += [byte][char]($name[$j]) - 64
    }

    $scores += [PSCustomObject]@{
        Name       = $name
        Multiplier = $multiplier
        Worth      = $worth
        Score      = ($worth * $multiplier)
    }
}

$scores.Score | Measure-Object -Sum
$end = Get-Date 12/31/2001

$res = 0
for ($d = Get-Date 1/1/1901; $d -le $end; $d = $d.AddMonths(1)) {
    if ($d.DayOfWeek -eq 'Sunday') {
        $res++
        $d
    }
}

$res
# Test my adder

$anyTestFailed = $False
$val = .\adder.ps1 1 2
if ($val -ne 3) {
    echo "FAIL: expected 1 + 2 = 3"
    $anyTestFailed = $True
} else {
    echo "PASS"
}

$val = .\adder.ps1 11 22
if ($val -ne 33) {
    echo "FAIL: expected 11 + 22 = 33"
    $anyTestFailed = $True
} else {
    echo "PASS"
}

if ($anyTestFailed) {
    exit 1
}

# Test my adder

$anyTestFailed = $False
$val = .\adder.ps1 1 2
if ($val -ne 3) {
    echo "FAIL: expected 1 + 2 = 3"
    $anyTestFailed = $True
} else {
    echo "PASS"
}

if ($anyTestFailed) {
    exit 1
}

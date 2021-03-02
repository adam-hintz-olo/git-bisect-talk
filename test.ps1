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

$val = .\adder.ps1 100 222
if ($val -ne 322) {
    echo "FAIL: expected 100 + 222 = 322"
    $anyTestFailed = $True
} else {
    echo "PASS"
}

$val = .\adder.ps1 101 222
if ($val -ne 323) {
    echo "FAIL: expected 101 + 222 = 323"
    $anyTestFailed = $True
} else {
    echo "PASS"
}

if ($anyTestFailed) {
    # The exit code guides `git bisect` to know that if tests fail, this commit
    # is considered bad
    exit 1
}

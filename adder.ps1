param ([Int]$val1, [Int]$val2)

# Introduce an obvious bug to a trivial program
if ($val1 -gt 100) {
    $val1 = 100
}
echo ($val1 + $val2)

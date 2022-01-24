$resourceGroupName = "pzmaltapp4-rg"
$loadTestName = "t4"
$loadTestId = "00a50b56-2ca5-488a-b35c-aed89440fc34"
$maxPageSize = 20

. ./get-loadtests.ps1 -resourceGroupName "$resourceGroupName" -loadTestName "$loadTestName" -loadTestId "$loadTestId" -maxPageSize $maxPageSize

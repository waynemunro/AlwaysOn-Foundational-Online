$tenantId = az account show -o tsv --query 'tenantId'
$subscriptionId = az account show -o tsv --query 'id'

$apiVersion = "2021-09-01-preview"
$apiEndpoint = "" #needs to be updated... will be returned when resource is created

$accessToken = az account get-access-token -o tsv --subscription $subscriptionId --query 'accessToken'

$accessTokenHeader = "Authorization=Bearer " + $accessToken

# Write access token to file as otherwise HTTP request too long to use az rest in Powershell
$accessTokenFileName = "./accesstoken.txt"
$accessTokenHeader | Out-File -FilePath $accessTokenFileName -Force

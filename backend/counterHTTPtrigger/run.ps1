using namespace System.Net

# Input bindings are passed in via param block.
param($Request, $TriggerMetadata, $CosmosDBinput)

# Write to the Azure Functions log stream.
Write-Host "PowerShell HTTP trigger function processed a request."


#increment the currentValue by 1, and save to new Value
$newValue = ([int]$CosmosDBinput.counterValue + 1)

#set body to the currentValue
$body = $CosmosDBinput | select-object id,counterValue | convertto-json

#build object to update cosmoDB to new value
$Object = [PSCustomObject]@{
    id         = "1"
    counterValue     = $newValue
}
# #push output to update cosmoDB
Push-OutputBinding -Name CosmosDBOutput -Value $Object

# Associate values to output bindings by calling 'Push-OutputBinding'.
Push-OutputBinding -Name Response -Value ([HttpResponseContext]@{
    StatusCode = [HttpStatusCode]::OK
    Body = $body
})

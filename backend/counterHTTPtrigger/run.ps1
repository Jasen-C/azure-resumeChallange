using namespace System.Net

# Input bindings are passed in via param block.
param($Request, $TriggerMetadata, $CosmosDBinput)

# Write to the Azure Functions log stream.
Write-Host "PowerShell HTTP trigger function processed a request."

# Test to run function with a test parameter supplied durring API call
$test = $Request.Query.Test

# Check if test param was passed in api call, if not update the database and return counter value
if (-not $test){

    #build object to update cosmoDB to new value
    $Object = [PSCustomObject]@{
        id  = "1"
        counterValue    = ([int]$CosmosDBinput.counterValue + 1)
    }

    #push output to update cosmoDB
    Push-OutputBinding -Name CosmosDBOutput -Value $Object

    #set body to the current counterValue from the cosmoDB
    $body = $CosmosDBinput | select-object id,counterValue | convertto-json

    # Associate values to output bindings by calling 'Push-OutputBinding'.
    Push-OutputBinding -Name Response -Value ([HttpResponseContext]@{
        StatusCode = [HttpStatusCode]::OK
        Body = $body
    })
}

# Check if test param was passed in api call, if true, Dont update the database and use the supplied test value.
if ($test){
    try {
        $testValue = [int]$test
    }
    catch {
        <#Do this if a terminating exception happens#>
        $testValue = [int]404
    }

    #build object to pass back in the response
    $Object = [PSCustomObject]@{
        id  = "1"
        counterValue    = $testValue
    }

    #set body to the current counterValue from the cosmoDB
    $body = $Object | select-object id,counterValue | convertto-json

    # Associate values to output bindings by calling 'Push-OutputBinding'.
    Push-OutputBinding -Name Response -Value ([HttpResponseContext]@{
        StatusCode = [HttpStatusCode]::OK
        Body = $body
    })
}


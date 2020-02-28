Write-Host "Start Script"

try {
    Write-Host "Start Try"

    Write-Host "npm pack @azure/template"
    npm pack @azure/template
    
    Write-Host "npm publish azure-template-0.2.0-preview.3.tgz"
    npm publish azure-template-0.2.0-preview.3.tgz
    
    if ($LastExitCode -ne 0) {
        Write-Host "npm publish failed with exit code $LastExitCode"
        exit 1
    }
    
    Write-Host "End Try"
}
finally {
    Write-Host "Finally"
}

Write-Host "End Script"

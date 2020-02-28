Write-Host "Start Script"

npm pack @azure/template

npm publish azure-template-0.2.0-preview.3.tgz

if ($LastExitCode -ne 0) {
    Write-Host "npm publish failed with exit code $LastExitCode"
    exit 1
}

Write-Host "End Script"

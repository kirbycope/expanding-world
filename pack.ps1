#Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

$addonName = "expanding-world"
$dir = Get-Location;

# Compress the directory into a .zip
Compress-Archive -Path  "$dir\datapacks\$addonName\*" -DestinationPath "$dir\$addonName.zip" -Force;

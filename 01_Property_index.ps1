# Set the path to a sample file
$sampleFilePath = "E:\Test_folder\My-Name-Is-Billa.mp3"

# Use the Shell object to access file properties
$shell = New-Object -ComObject Shell.Application
$folder = $shell.Namespace((Get-Item $sampleFilePath).DirectoryName)
$item = $folder.ParseName((Get-Item $sampleFilePath).Name)

# Get all available property names and indices
for ($i = 0; $i -le 266; $i++) {  # Assuming properties up to index 266 (you can adjust this limit)
    $propertyName = $folder.GetDetailsOf($item, $i)
    if ($propertyName) {
        Write-Host "Index ${i}: $propertyName"
    }
}

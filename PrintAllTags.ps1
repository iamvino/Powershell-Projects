# Set the path to the TagLibSharp DLL
$tagLibPath = "C:\Program Files\PackageManagement\NuGet\Packages\TagLibSharp.2.3.0\lib\netstandard2.0\TagLibSharp.dll"

# Load the TagLibSharp assembly
Add-Type -Path $tagLibPath

# Set the path to a sample audio file
$sampleFilePath = "E:\Test_folder\Pottu-Mela-Pottu-Vachu-MassTamilan.com.mp3"

# Load the audio file
$file = [TagLib.File]::Create($sampleFilePath)

# Get the Tag object
$tags = $file.Tag

# Create an array to store tag information
$tagInfo = @()

# Populate the array with tag information
foreach ($tag in $tags.Properties) {
    $tagName = $property
    $tagValue = $tags.$tagName
    Write-Host $tagName : $tagValue
}




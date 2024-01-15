# Load TagLib library
Add-Type -Path "E:\Test folder\taglib-sharp-TaglibSharp-2.3.0.0"

# Function to update the title tag of an MP3 file with its filename
function Update-Mp3Title {
    param (
        [string]$filePath
    )

    # Load the MP3 file
    $mp3File = [TagLib.File]::Create($filePath)

    # Get the filename without extension
    $fileName = [System.IO.Path]::GetFileNameWithoutExtension($filePath)

    # Update the title tag with the filename
    $mp3File.Tag.Title = $fileName

    # Save changes
    $mp3File.Save()
}

# Example: Specify the path to your MP3 file
$mp3FilePath = "C:\Path\To\Your\File.mp3"

# Call the function to update the title tag
Update-Mp3Title -filePath $mp3FilePath
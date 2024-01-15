# Get all the files in the current directory
$files = Get-ChildItem -File

# Loop through each file
foreach ($file in $files) {
    # Get the file name without the extension
    $name = $file.BaseName

    # Find the index of the first occurrence of -
    $index = $name.IndexOf("-")

    # If the index is not -1, meaning there is a - in the name
    if ($index -ne -1) {
        # Remove the characters after the - (including the -)
        $newName = $name.Substring(0, $index)
    }
    else {
        # Otherwise, keep the original name
        $newName = $name
    }

    # Rename the file with the new name and the same extension
    Rename-Item -Path $file.FullName -NewName ($newName + $file.Extension)
}

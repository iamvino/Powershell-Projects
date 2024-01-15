$tagLibPath = "C:\Program Files\PackageManagement\NuGet\Packages\TagLibSharp.2.3.0\lib\netstandard2.0\TagLibSharp.dll"
# If you do not know the path where the library is stored use the code below to get the path
# Get-Package TagLibSharp | Format-List -Property Source

# Load the TagLibSharp assembly
Add-Type -Path $tagLibPath

# Set the path to the folder containing the files
$folderPath = "E:\Test_folder"

# Get all audio files in the specified folder
$audioFiles = Get-ChildItem -Path $folderPath -Filter *.mp3

# Loop through each file
foreach ($audiofile in $audiofiles) {
    # Get the file name without the extension
    $name = $audiofile.BaseName

    # Find the index of the first occurrence of -
    $index = $name.IndexOf("-Mass")

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
    Rename-Item -Path $audiofile.FullName -NewName ($newName + $audiofile.Extension)
}

$audioFiles = Get-ChildItem -Path $folderPath -Filter *.mp3
# Loop through each audio file and update the title and album tags
foreach ($audioFile in $audioFiles) {
    # Load the audio file
    $tag = [TagLib.File]::Create($audioFile.FullName)

    # Get the current title and album
    $title = $tag.Tag.Title
    $album = $tag.Tag.Album
    $performers = $tag.Tag.Performers
    $albumartists = $tag.Tag.AlbumArtists
    $composers = $tag.Tag.Composers
    $conductor = $tag.Tag.Conductor

    # Remove the contents of the following tags
    $tag.Tag.Publisher = ""
    $tag.Tag.Subtitle = ""
    $tag.Tag.Comment = ""
    $tag.Tag.Lyrics = ""
    $tag.Tag.BeatsPerMinute = ""
    $tag.Tag.Copyright = ""
    $tag.Tag.Grouping = ""
    $tag.Tag.ISRC = ""
    $tag.Tag.RemixedBy = ""
    $tag.Tag.Conductor = ""
    $tag.Tag.Genres = ""
    $tag.Tag.FirstGenre = ""
    $tag.Tag.JoinedGenres = ""
    $tag.Tag.FirstAlbumArtist = ""
    $tag.Tag.FirstArtist = ""
    $tag.Tag.FirstComposer = ""
    $tag.Tag.FirstGenre = ""
    $tag.Tag.FirstPerformer = ""
    $tag.Tag.Grouping = ""
    $tag.Tag.JoinedAlbumArtists = ""
    $tag.Tag.JoinedArtists = ""
    $tag.Tag.JoinedComposers = ""
    $tag.Tag.JoinedPerformers = ""
    $tag.Tag.JoinedGenres = ""
    
    # Assign the search term to find
    $find = "- Mass"

    # Check if "-" exists in title and album
    if ($title -match $find) {
        # Remove everything after "-"
        $newTitle = ($title -split $find)[0].Trim()
        $tag.Tag.Title = $newTitle  # Update the title
    }

    if ($album -match $find) {
        # Remove everything after "-"
        $newAlbum = ($album -split $find)[0].Trim()
        $tag.Tag.Album = $newAlbum  # Update the album
    }

    if ($performers -match $find) {
        # Remove everything after "-"
        $newPerformers = ($performers -split $find)[0].Trim()
        $tag.Tag.Performers = $newPerformers  # Update the performer
    }

        if ($albumartists -match $find) {
        # Remove everything after "-"
        $newAlbumartists = ($albumartists-split $find)[0].Trim()
        $tag.Tag.AlbumArtists = $newAlbumartists  # Update the Album artists
    }

    if ($composers -match $find) {
        # Remove everything after "-"
        $newComposers = ($composers -split $find)[0].Trim()
        $tag.Tag.Composers = $newComposers  # Update the composer
    }

    if ($conductor -match $find) {
        # Remove everything after "-"
        $newConductor = ($conductor -split $find)[0].Trim()
        $tag.Tag.Conductor = $newConductor  # Update the composer
    }
    # Save the changes
    $tag.Save()
}

Write-Host "File properties updated successfully."

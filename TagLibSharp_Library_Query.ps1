# Set the path to the TagLibSharp DLL
$tagLibPath = "C:\Program Files\PackageManagement\NuGet\Packages\TagLibSharp.2.3.0\lib\netstandard2.0\TagLibSharp.dll"

# Load the TagLibSharp assembly
Add-Type -Path $tagLibPath

# Set the path to a sample audio file
$sampleFilePath = "E:\Test_folder\Completed\Thee-Yazhini.mp3"

# Load the audio file
$tag = [TagLib.File]::Create($sampleFilePath)

# Get the Tag object
$tagObject = $tag.Tag

# List all available tag properties
$tagObject | Get-Member -MemberType Properties

# Display various tag values
Write-Host "Title: $($tagObject.Title)"
Write-Host "Album: $($tagObject.Album)"
Write-Host "Artists: $($tagObject.Performers -join ', ')"
Write-Host "Album Artists: $($tagObject.AlbumArtists -join ', ')"
Write-Host "Genres: $($tagObject.Genres -join ', ')"
Write-Host "Year: $($tagObject.Year)"
Write-Host "Track: $($tagObject.Track)"
Write-Host "Disc: $($tagObject.Disc)"
Write-Host "Composers": $($tagObject.Composers)
Write-Host "Publisher": $($tagObject.Publisher)
Write-Host "Subtitle": $($tagObject.Subtitle)
Write-Host "Full Name": $($tagObject.FullName)
Write-Host "Comment": $($tagObject.Comment)
Write-Host "Description": $($tagObject.Description)
Write-Host "Lyrics": $($tagObject.Lyrics)
Write-Host "Beats Per Minute": $($tagObject.BeatsPerMinute)
Write-Host "Conductor": $($tagObject.Conductor)
Write-Host "Publisher": $($tagObject.Publisher)
Write-Host "AlbumArtistSort": $($tagObject.AlbumArtistSort)
Write-Host "AlbumSort": $($tagObject.AlbumSort)
Write-Host "AmazonId": $($tagObject.AmazonId)
Write-Host "ComposersSort": $($tagObject.ComposersSort)
Write-Host "Copyright": $($tagObject.Copyright)
Write-Host "EndTag": $($tagObject.EndTag)
Write-Host "FirstAlbumArtist": $($tagObject.FirstAlbumArtist)
Write-Host "FirstAlbumArtistSort": $($tagObject.FirstAlbumArtistSort)
Write-Host "FirstArtist": $($tagObject.FirstArtist)
Write-Host "FirstComposer": $($tagObject.FirstComposer)
Write-Host "FirstComposerSort": $($tagObject.FirstComposerSort)
Write-Host "FirstGenre": $($tagObject.FirstGenre)
Write-Host "FirstPerformer": $($tagObject.FirstPerformer)
Write-Host "FirstPerformerSort": $($tagObject.FirstPerformerSort)
Write-Host "Genre": $($tagObject.Genres)
Write-Host "Grouping": $($tagObject.Grouping)
Write-Host "InitialKey": $($tagObject.InitialKey)
Write-Host "IsEmpty": $($tagObject.IsEmpty)
Write-Host "ISRC": $($tagObject.ISRC)
Write-Host "JoinedAlbumArtists": $($tagObject.JoinedAlbumArtists)
Write-Host "JoinedArtists": $($tagObject.JoinedArtists)
Write-Host "JoinedComposers": $($tagObject.JoinedComposers)
Write-Host "JoinedGenres": $($tagObject.JoinedGenres)
Write-Host "JoinedPerformers": $($tagObject.JoinedPerformers)
Write-Host "JoinedPerformersSort": $($tagObject.JoinedPerformersSort)
Write-Host "MusicBrainzArtistId": $($tagObject.MusicBrainzArtistId)
Write-Host "MusicBrainzDiscId": $($tagObject.MusicBrainzDiscId)
Write-Host "MusicBrainzReleaseArtistId": $($tagObject.MusicBrainzReleaseArtistId)
Write-Host "MusicBrainzReleaseCountry": $($tagObject.MusicBrainzReleaseCountry)
Write-Host "MusicBrainzReleaseGroupId": $($tagObject.MusicBrainzReleaseGroupId)
Write-Host "MusicBrainzReleaseId": $($tagObject.MusicBrainzReleaseId)
Write-Host "MusicBrainzReleaseStatus": $($tagObject.MusicBrainzReleaseStatus)
Write-Host "MusicBrainzReleaseType": $($tagObject.MusicBrainzReleaseType)
Write-Host "MusicBrainzTrackId": $($tagObject.MusicBrainzTrackId)
Write-Host "MusicIpId": $($tagObject.MusicIpId)
Write-Host "Performers": $($tagObject.Performers)
Write-Host "Lyrics": $($tagObject.PerformersRole)
Write-Host "Lyrics": $($tagObject.PerformersSort)
Write-Host "RemixedBy": $($tagObject.RemixedBy)
Write-Host "ReplayGainAlbumGain": $($tagObject.ReplayGainAlbumGain)
Write-Host "RemixedBy": $($tagObject.ReplayGainAlbumPeak)
Write-Host "RemixedBy": $($tagObject.ReplayGainTrackGain)
Write-Host "RemixedBy": $($tagObject.ReplayGainTrackPeak)
Write-Host "Lyrics": $($tagObject.StartTag)
Write-Host "Subtitle": $($tagObject.Subtitle)
Write-Host "AllTags": $($tagObject.Tags)
Write-Host "Lyricist": $($tagObject.OrignalArtist)
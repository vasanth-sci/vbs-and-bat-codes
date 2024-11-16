# Prompt user for video URL
$videoUrl = Read-Host -Prompt "https://www.youtube.com/watch?v=3DRdl7i56Xs"

# Prompt user for the output directory
$outputDirectory = Read-Host -Prompt "D:\"

# Prompt user for start time
$startTime = Read-Host -Prompt "30"

# Prompt user for end time
$endTime = Read-Host -Prompt "200"

# Construct the output filename
$outputFilename = Join-Path -Path $outputDirectory -ChildPath "downloaded_video.%(ext)s"

# Build the yt-dlp command with time options
$command = "yt-dlp -o `"$outputFilename`" --postprocessor-args `"-ss $startTime -to $endTime`" $videoUrl"

# Execute the command
Invoke-Expression $command

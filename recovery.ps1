# Function to run Windows File Recovery for a specific file
function Recover-SpecificFile {
    param (
        [string]$SourceDrive = "D",      # The drive where the file was deleted
        [string]$DestinationDrive = "E",  # The drive where the file will be recovered to
        [string]$FilePath = "\gate\kumar.txt" # Full path of the specific file to recover (without the drive letter)
    )

    # Construct the Windows File Recovery command
    $command = "winfr ${SourceDrive}: ${DestinationDrive}: /extensive /n $FilePath"

    try {
        # Execute the command
        Write-Host "Running command: $command" -ForegroundColor Green
        Invoke-Expression $command
    } catch {
        Write-Host "An error occurred: $_" -ForegroundColor Red
    }
}

# Example usage
Recover-SpecificFile

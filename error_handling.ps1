# Check if a required command-line argument is provided
if ($args.Count -eq 0) {
    Write-Host "Error: Missing required command-line argument."
    exit 1
}

# Attempt to read from the provided file
$file = $args[0]
if (-not (Test-Path $file)) {
    Write-Host "Error: File '$file' does not exist."
    exit 1
}

# Perform further processing if the file exists
# Replace this part with your actual script logic
Write-Host "File '$file' exists. Performing further processing..."

# Read the content of the file
$fileContent = Get-Content -Path "data.txt"

# Initialize variables for calculations
$sum = 0
$maxValue = $null
$average = 0
$count = 0

# Process each line of the file
foreach ($line in $fileContent) {
    # Split the line by comma to extract values
    $values = $line.Split(',')
    
    # Check if the values array has at least 4 elements
    if ($values.Length -ge 4) {
        # Extract the value from the second column and add it to the sum
        $sum += [double]$values[1]
        
        # Extract the value from the third column and update max value if needed
        $currentValue = [double]$values[2]
        if ($maxValue -eq $null -or $currentValue -gt $maxValue) {
            $maxValue = $currentValue
        }
        
        # Extract the value from the fourth column and update the count and sum for average
        $count++
        $average += [double]$values[3]
    }
}

# Calculate average
if ($count -gt 0) {
    $average /= $count
}

# Display results
Write-Host "Sum of values in the second column: $sum"
Write-Host "Maximum value in the third column: $maxValue"
Write-Host "Average value in the fourth column: $average"

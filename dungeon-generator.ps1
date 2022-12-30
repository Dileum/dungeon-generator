# Constants
$sizeSmall = "small"
$sizeMed = "med"
$sizeLarge = "large"

$inputSize = "Enter dungeon size (small/med/large)"

$title = "DUNGEON GENERATOR"
$tileName = "Room"

$randomMin = 0
$newLine = "`n"

$dashFifteen = ("-"*15)
$dashFourtySeven = ("-"*47)

$tilesList = @(
"A - [1x2]",
"B - [2x2]",
"C - [4x1]",
"D - [2x5]",
"E - [4x4]",
"F - [2x3]",
"G - [3x4]",
"H - [5x5]",
"I - [3x8]",
"J - [6x6]",
"K - [9x8]",
"L - [2x10]",
"M - [5x10]")

$dashLineOne = $newLine + $dashFifteen + $title + $dashFifteen + $newLine
$dashLineTwo = $newLine + $dashFourtySeven + $newLine


# Begin program
Write-Host $dashLineOne

	# Get level size
$userInputSize = Read-Host $inputSize

Write-Host $dashLineTwo

		# If input small, max = small
if($userInputSize -eq $sizeSmall){$randomMax = 4}

		# Elseif input med, max = med
elseif($userInputSize -eq $sizeMed){$randomMax = 8}

		# Else input large, max = large
else{$randomMax = 12}

	# Output generated tiles
foreach($tile in $tilesList){

		# For each index, pick a random tile within that range
	$randomNum = Get-Random -Minimum $randomMin -Maximum $randomMax
	Write-Host $tileName $tilesList[$randomNum] $newLine
}
	# End program
Write-Host $dashLineTwo
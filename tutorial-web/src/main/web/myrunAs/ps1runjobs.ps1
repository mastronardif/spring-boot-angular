# Open two Command Prompt windows, change directory, and run commands

$folderPath1 = "C:\FxM\\Dev\Ng\townpon"
$folderPath2 = "C:\FxM\Dev\Ng\myapp22"

# Window 1
$cmd11 = "npm start"
$title1 = "1.) "+ (Split-Path -Path $folderPath2 -Leaf) + " - $cmd11"
# $cmd1 = "Set-Location `"$folderPath1`"; npm run build"


#Start-Process cmd.exe -ArgumentList "/k", "title `"$title1`"", "/k", "$cmd1"
Start-Process cmd.exe -ArgumentList "/K  color 17 && title `"$title1`" & cd C:\FxM\\Dev\Ng\townpon & $cmd11"

Start-Sleep -Seconds 1
$cmd11 = "npm run build"
$title2 = "2.) "+ (Split-Path -Path $folderPath2 -Leaf) + " - $cmd11"
Start-Process cmd.exe -ArgumentList ",  /K title `"$title2`" & cd $folderPath2 & $cmd11"
#Start-Process cmd.exe -ArgumentList "/K", "$cmd1", "/title", "`"$title1`""

# Wait for a moment before proceeding to the next window
# Start-Sleep -Seconds 1

# # Window 2
# $title2 = (Split-Path -Path $folderPath2 -Leaf) + " - Command Prompt"
# $cmd2 = "cd `"$folderPath2`" && npm run build"
# Start-Process cmd.exe -ArgumentList "/k", "title `"$title2`"", "/k", "$cmd2"

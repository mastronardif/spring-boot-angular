$terminalCount = 3

# Start the first instance of Windows Terminal
Start-Process wt

# Wait for a moment to ensure the first instance is launched
Start-Sleep -Milliseconds 500

# Open additional tabs in the same window
for ($i = 2; $i -le $terminalCount; $i++) {
    Start-Process wt -ArgumentList "--new-tab"
}
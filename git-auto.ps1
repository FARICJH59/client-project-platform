param(
    [string]$message = "Automated commit"
)

# Ensure we're in the correct project directory
Set-Location "C:\Users\User\Documents\ClientProject"

# Add all files
git add .

# Commit changes
git commit -m "$message" 2>$null
Write-Host "📝 Committed changes with message: '$message'"

# Set up remote if missing or update URL
$remoteURL = "https://github.com/FARICJH59/client-project-platform.git"
$remotes = git remote

if ($remotes -contains "origin") {
    git remote set-url origin $remoteURL
    Write-Host "🔗 Updated remote origin URL."
} else {
    git remote add origin $remoteURL
    Write-Host "🔗 Added remote origin."
}

# Pull remote changes safely
try {
    git pull origin main --allow-unrelated-histories --no-edit
    Write-Host "⬇ Pulled remote changes successfully."
} catch {
    Write-Host "⚠ Pull failed: $_"
}

# Push local changes
git push origin main
Write-Host "⬆ Pushed local changes to GitHub."
Write-Host "🎉 Git automation complete!"
param(
    [string]\Automated commit = "Automated commit"
)

# Add all files
git add .

# Commit changes
git commit -m "\Automated commit" 2>
Write-Host "📝 Committed changes with message: '\Automated commit'"

# Set up remote if missing
\https://github.com/FARICJH59/client-project-platform.git = "https://github.com/FARICJH59/client-project-platform.git"
\origin = git remote
if (\origin -contains "origin") {
    git remote set-url origin \https://github.com/FARICJH59/client-project-platform.git
    Write-Host "🔗 Updated remote origin URL."
} else {
    git remote add origin \https://github.com/FARICJH59/client-project-platform.git
    Write-Host "🔗 Added remote origin."
}

# Pull remote changes safely
try {
    git pull origin main --allow-unrelated-histories --no-edit
    Write-Host "⬇ Pulled remote changes successfully."
} catch {
    Write-Host "⚠ Pull failed: "
}

# Push changes
git push origin main
Write-Host "⬆ Pushed local changes to GitHub."
Write-Host "🎉 Git automation complete!"

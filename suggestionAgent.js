export async function getProjectSuggestions(projectType, tier='basic') {
    const suggestionsCount = tier === 'basic' ? 3 : tier === 'standard' ? 5 : 7;
    // Placeholder suggestions
    let suggestions = [];
    for(let i=1;i<=suggestionsCount;i++){
        suggestions.push({projectTitle: projectType + ' Project ' + i, stack:'Sample Stack', description:'Description', gptPrompt:'Prompt'});
    }
    return suggestions;
}

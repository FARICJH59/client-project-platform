const express = require('express');
const app = express();
app.use(express.json());

// Dummy endpoints for demonstration
app.get('/', (req,res) => res.send('Server running'));
app.get('/api/suggestions', (req,res) => res.json({message: 'Suggestions endpoint'}));
app.post('/api/generate', (req,res) => res.json({message: 'Project generated'}));

app.listen(3000, () => console.log('Backend running on port 3000'));

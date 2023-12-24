const express = require("express");
const app = express();
const path = require('path')

// Heroku dynamically sets a port
// eslint-disable-next-line no-undef
const PORT = process.env.PORT || 5000;

app.use(express.static("dist"));
// Serve your React application for all routes
app.get('*', (req, res) => {
  res.sendFile(path.resolve(__dirname, 'dist', 'index.html'));
});

app.listen(PORT, () => {
  // eslint-disable-next-line no-console
  console.log("server started on port 5000");
});

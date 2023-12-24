// e2e-run-tests.js
const cypress = require('cypress')

cypress
  .run({
    // the path is relative to the current working directory
    spec: './cypress/e2e/pokedex.cy.js',
  })
  .then((results) => {
    // eslint-disable-next-line no-console
    console.log(results)
    if (results.totalFailed > 0) {
        console.error('Tests failed. Exiting with an error.');
        // eslint-disable-next-line no-undef
        process.exit(1); // Exit with a non-zero status code
    }
  })
  .catch((err) => {
    // eslint-disable-next-line no-console
    console.error(err)
  })
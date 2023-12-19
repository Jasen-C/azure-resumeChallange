# azure-ResumeChallange
Cloud Resume Challenge repo for resume html and css, and backend Azure Function App code.

## Converted Resume to more modern HTML/CSS layout
- [x] Converted my resume to a more modern looking html template, modified CSS for additional sections I added to the template for a seemless looking page.

## Setup Github Actions
- [x] Configured Github actions to auto deploy any changes in frontend code to Azure Storage, purge CDN so updated content is severed immediatly after new code commits.

## Next steps
- [x] Setup cosmo database to track visitor count
- [x] Create Azure Function in ~~Python~~ Powershell to query the cosmoDB for the current count, and update it for each visitor to the page.
- [x] Add ability to pass a test parameter to the Azure function so calling it in test doesnt update the counterValue stored in the database.
- [x] Configure javascript function to call the Azure Function, and display the current count on the page
- [] Setup CI/CD Pipelines for the Azure function deployment
- [] Create unit tests
- [] Move CosmoDB Connection string to a key vault for secret storage
- [x] Add fake credentials into the code (API Keys)
- [] implement a CI/CD scanner to identify commited secrets
- [] Create a secondary page to discuss the project and showcase findings from the scanner and fixes
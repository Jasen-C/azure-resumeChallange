# azure-ResumeChallange
Cloud Resume Challenge repo for resume html and css, and backend Function App code.

## Converted Resume to more modern HTML/CSS layout
- [x] Converted my resume to a more modern looking html template, modified CSS for additional sections I added to the template for a seemless looking page.

## Setup Github Actions
- [x] Configured Github actions to auto deploy any changes in frontend code to Azure Storage, purge CDN so updated content is severed immediatly after new code commits.

## Next steps
- [x] Setup cosmo database to track visitor count
- [x] Create Azure Function in ~~Python~~ Powershell to query the cosmoDB for the current count, and update it for each visitor to the page.
- [x] Configure javascript function to call the Azure Function, and display the current count on the page
- [] Setup CI/CI Pipelines for the Azure function
- [] Create unit tests


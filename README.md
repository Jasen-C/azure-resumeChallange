# azure-ResumeChallange
Cloud Resume Challenge repo for resume html and css

## Converted Resume to more modern HTML/CSS layout
Converted my resume to a more modern looking html template, modified CSS for additional sections I added to the template.

## Setup Github Actions
Configured Github actions to auto deploy any changes in frontend code to Azure Storage, purge CDN so updated content is severed immediatly

## Next steps
Setup cosmo database to track visitor count
Create Azure Function in python to query the cosmoDB for the current count, and update it for each visitor
Create javascript function to call the Azure Function, and display the current count on the page
Setup CI/CI Pipelines for the Azure function, and unit tests


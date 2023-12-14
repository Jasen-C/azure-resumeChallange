window.addEventListener('DOMContentLoaded', (event) =>{
    getVisitCount();
})

const functionApiUrl = 'https://azure-crispsec-resume-counter-powershell.azurewebsites.net/api/counterHTTPtrigger';


const getVisitCount = () => {
    let count = 30;
    fetch(functionApiUrl).then(response => {
        return response
        // return response.json()
    }).then(response =>{
        console.log("Website called function API.");
        count =  response;
        // count =  response.count;
        document.getElementById("counter").innerText = count;
    }).catch(function(error){
        console.log(error);
    });
    return count;
}
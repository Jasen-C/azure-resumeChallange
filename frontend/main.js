window.addEventListener('DOMContentLoaded', (event) =>{
    getVisitCount();
})
// Azure FUnction URL
const functionApiUrl = 'https://counter.crispsec.com/api/counterHTTPtrigger';

// Fake Api Credentials
const ApiKey = "a52b2787-c1e4-480d-8bd9-c63f8605352c"
const ApiSecret = "a9654691-bf60-43e1-9469-78bf3479de91"


const getVisitCount = () => {
    let count = 30;
    fetch(functionApiUrl).then(response => {
        return response.json()
    }).then(response =>{
        console.log("Website called function API.");
        count =  response.counterValue;
        document.getElementById("counter").innerText = count;
    }).catch(function(error){
        console.log(error);
    });
    return count;
}
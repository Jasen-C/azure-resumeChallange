window.addEventListener('DOMContentLoaded', (event) =>{
    getVisitCount();
})

const functionApiUrl = 'https://counter.crispsec.com/api/counterHTTPtrigger';


const getVisitCount = () => {
    let count = 30;
    fetch(functionApiUrl).then(response => {
        return response.json()
    }).then(response =>{
        console.log("Website called function API.");
        count =  response.counterValue;
        document.getElementById("counter").innerText = counterValue;
    }).catch(function(error){
        console.log(error);
    });
    return count;
}
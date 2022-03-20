function addSeven(number){
    let num = parseInt(number);
    if(isNaN(num)){
        return " Not a number!"
    }
    else{
        return num+7;
    };
};

function multiply(one,two){
    let num1 = parseInt(one);
    let num2 = parseInt(two);
    if(isNaN(num1)){
        return " Not a number!";
    }
    else if(isNaN(num2)){
        return " Not a number!";
    }
    else{
        return num1*num2;
    };
}

// Add seven to a number
let numSeven = document.getElementById("addSevenInput");
let outputAddSeven = document.getElementById("addSevenOutput");
numSeven.addEventListener('input',()=>{
    numAdded = addSeven(numSeven.value);
    outputAddSeven.textContent = numAdded;
})

// Multiply two numbers
let multOne = document.getElementById("multOne");
let multTwo = document.getElementById("multTwo");
let multiplyOutput = document.getElementById("multiplyOutput");
multOne.addEventListener('input',()=>{
    product = multiply(multOne.value,multTwo.value);
    multiplyOutput.textContent = product;
})
multTwo.addEventListener('input',()=>{
    product = multiply(multOne.value,multTwo.value);
    multiplyOutput.textContent = product;
})


const btn = document.querySelector('#btn');
btn.onclick = () => {
    alert('Hello World');
};

const btn2 = document.querySelector('#btn2');
btn2.addEventListener('click',()=>{
    alert('Hello World');
});

function alertF(){
    alert('Hello World');
};

const btn3 = document.querySelector('#btn3');
btn3.addEventListener('click',function(e){
    console.log(e.target);
    e.target.style.backgroundColor = 'red';
});
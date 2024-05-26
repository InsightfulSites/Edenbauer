const q1 = document.querySelector('.q1');
const q2 = document.querySelector('.q2');
const q3 = document.querySelector('.q3');
const q4 = document.querySelector('.q4');

function faq(faq){  
  if(faq.classList.value.includes('activ__faq')){
    q1.classList = 'accordion q1';
    q2.classList = 'accordion q2';
    q3.classList = 'accordion q3';
    q4.classList = 'accordion q4';
  }else{
    q1.classList = 'accordion q1';
    q2.classList = 'accordion q2';
    q3.classList = 'accordion q3';
    q4.classList = 'accordion q4';
    faq.classList += ' activ__faq';
  }
}

document.querySelector('#accor__question1').onclick = function(){
  faq(q1);
}

document.querySelector('#accor__question2').onclick = function(){
  faq(q2);
}

document.querySelector('#accor__question3').onclick = function(){
  faq(q3);
}

document.querySelector('#accor__question4').onclick = function(){
  faq(q4);
}
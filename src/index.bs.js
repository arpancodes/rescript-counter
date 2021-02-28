// Generated by ReScript, PLEASE EDIT WITH CARE


var plusButton = document.querySelector("#plus-one");

var minusButton = document.querySelector("#minus-one");

var counter = document.querySelector("#count");

window.count = 0;

function setZeroClass(param) {
  counter.classList.remove("count-positive");
  counter.classList.remove("count-negative");
  counter.classList.add("count-zero");
  
}

function setPositiveClass(param) {
  counter.classList.add("count-positive");
  counter.classList.remove("count-negative");
  counter.classList.remove("count-zero");
  
}

function setNegativeClass(param) {
  counter.classList.remove("count-positive");
  counter.classList.add("count-negative");
  counter.classList.remove("count-zero");
  
}

function setAppropriateClass(param) {
  if (window.count < 0) {
    return setNegativeClass(undefined);
  } else if (window.count > 0) {
    return setPositiveClass(undefined);
  } else {
    return setZeroClass(undefined);
  }
}

function updateCount(step) {
  window.count = window.count + step | 0;
  
}

function updateView(param) {
  counter.innerText = "Count is " + String(window.count);
  
}

function plusOne(param) {
  updateCount(1);
  updateView(undefined);
  return setAppropriateClass(undefined);
}

function minusOne(param) {
  updateCount(-1);
  updateView(undefined);
  return setAppropriateClass(undefined);
}

plusButton.addEventListener("click", plusOne);

minusButton.addEventListener("click", minusOne);

export {
  plusButton ,
  minusButton ,
  counter ,
  setZeroClass ,
  setPositiveClass ,
  setNegativeClass ,
  setAppropriateClass ,
  updateCount ,
  updateView ,
  plusOne ,
  minusOne ,
  
}
/* plusButton Not a pure module */

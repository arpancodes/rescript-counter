@val external document: {..} = "document"
@val external window: {..} = "window"

let plusButton = document["querySelector"]("#plus-one")
let minusButton = document["querySelector"]("#minus-one")
let counter = document["querySelector"]("#count")
window["count"] = 0

let setZeroClass = () => {
  counter["classList"]["remove"]("count-positive")->ignore
  counter["classList"]["remove"]("count-negative")->ignore
  counter["classList"]["add"]("count-zero")->ignore
}

let setPositiveClass = () => {
  counter["classList"]["add"]("count-positive")->ignore
  counter["classList"]["remove"]("count-negative")->ignore
  counter["classList"]["remove"]("count-zero")->ignore
}

let setNegativeClass = () => {
  counter["classList"]["remove"]("count-positive")->ignore
  counter["classList"]["add"]("count-negative")->ignore
  counter["classList"]["remove"]("count-zero")->ignore
}

let setAppropriateClass = () => {
  if window["count"] < 0{
    setNegativeClass()
  }
  else if window["count"] > 0{
    setPositiveClass()
  }
  else {
    setZeroClass()
  }
}

let updateCount = step => window["count"] = window["count"] + step
let updateView = () => counter["innerText"] = `Count is ${Belt.Int.toString(window["count"])}`

let plusOne = () => {
  updateCount(1)
  updateView()
  setAppropriateClass()
}

let minusOne = () => {
  updateCount(-1)
  updateView()
  setAppropriateClass()
}

plusButton["addEventListener"]("click", plusOne)
minusButton["addEventListener"]("click", minusOne)

@val external document: {..} = "document"
@val external window: {..} = "window"

let plusButton = document["querySelector"]("#plus-one")
let minusButton = document["querySelector"]("#minus-one")
let counter = document["querySelector"]("#count")
window["count"] = 0

let setZeroClass = () => {
  counter["classList"]["remove"]("count-positive")
  counter["classList"]["remove"]("count-negative")
  counter["classList"]["add"]("count-zero")
}

let setPositiveClass = () => {
  counter["classList"]["add"]("count-positive")
  counter["classList"]["remove"]("count-negative")
  counter["classList"]["remove"]("count-zero")
}

let setNegativeClass = () => {
  counter["classList"]["remove"]("count-positive")
  counter["classList"]["add"]("count-negative")
  counter["classList"]["remove"]("count-zero")
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

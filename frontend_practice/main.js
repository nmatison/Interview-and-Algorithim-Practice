document.addEventListener("load",() => {
  let target = document.getElementById("target");
  target.innerHTML += `<input type="submit" onClick=${changeColor("blue")} value="Blue" />`
  target.innerHTML += `<input type="submit" onClick=${changeColor("green")} value="Green" />`
  target.innerHTML += `<input type="submit" onClick=${changeColor("red")} value="Red" />`
})
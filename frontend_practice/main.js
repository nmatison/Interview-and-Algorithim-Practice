
let target = document.getElementById("target");
target.innerHTML += `<input class="blue" type="submit" value="Blue" />`;
target.innerHTML += `<input class="green" type="submit" value="Green" />`;
target.innerHTML += `<input class="red" type="submit" value="Red" />`;

document.querySelector(".blue").addEventListener("click", function(event) {
    event.preventDefault;
    let target = document.getElementById("target");
    target.setAttribute("style", `background-color:blue`)
  });

document.querySelector(".green").addEventListener("click", function(event) {
    event.preventDefault;
    let target = document.getElementById("target");
    target.setAttribute("style", `background-color:green`)
  });

document.querySelector(".red").addEventListener("click", function(event) {
    event.preventDefault;
    let target = document.getElementById("target");
    target.setAttribute("style", `background-color:red`)
  });

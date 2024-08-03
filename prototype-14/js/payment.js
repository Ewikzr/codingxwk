document.addEventListener("DOMContentLoaded", function () {
    setTimeout(function () {
      const h2Element = document.querySelector(".pending-payment h2");
      const spinnerElement = document.getElementById("loading-bar-spinner");
  
      spinnerElement.style.display = "none";
  
      h2Element.innerHTML =
        'Payment Successfully <span class="checkmark-animation">&#10003;</span>';
      h2Element.classList.add("success");
    }, 3000);
  });
  
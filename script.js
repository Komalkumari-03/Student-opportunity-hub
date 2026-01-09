document.addEventListener("DOMContentLoaded", function () {

  let applyButtons = document.querySelectorAll(".apply-btn");
  let registerButtons = document.querySelectorAll(".register-btn");

  applyButtons.forEach(function (button) {
    button.addEventListener("click", function () {
      alert("Application submitted successfully!");
    });
  });

  registerButtons.forEach(function (button) {
    button.addEventListener("click", function () {
      alert("Registered successfully!");
    });
  });

});

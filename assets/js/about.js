// animate the logo
const logo = document.getElementById("logo");
logo.style.opacity = 0;
logo.style.transform = "translateY(-50px)";

window.addEventListener("load", () => {
  logo.style.transition = "all 1s ease-in-out";
  logo.style.opacity = 1;
  logo.style.transform = "translateY(0px)";
});
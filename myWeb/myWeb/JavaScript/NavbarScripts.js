const navigation = document.getElementById("mainBar")
const logo = document.getElementById("logo")

window.onscroll = function () { scrollFunction() };

function scrollFunction() {
    if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
        navigation.style.padding = "25px 10px";
        logo.style.fontSize = "25px";
    } else {
        navigation.style.padding = "60px 10px";
        logo.style.fontSize = "35px";
    }
}
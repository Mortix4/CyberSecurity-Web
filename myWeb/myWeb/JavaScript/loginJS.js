function loginValidate() {
    var userName = document.getElementById("userName").value;
    var password = document.getElementById("pw").value;
    if (userName.length == 0) {
        document.getElementById("uNameMsg").value = "You must enter user name ";
        document.getElementById("uNameMsg").style.color = "red";

        if (password.length == 0) {
            document.getElementById("pwMsg").value = "You must enter password";
            document.getElementById("pwMsg").style.color = "red";

        }
        return false;
    }

    if (password.length == 0) {
        document.getElementById("pwMsg").value = "You must enter password";
        document.getElementById("pwMsg").style.color = "red";

        if (userName.length == 0) {
            document.getElementById("uNameMsg").value = "You must enter user name ";
            document.getElementById("uNameMsg").style.color = "red";

        }
        return false;
    }
    return true;
}



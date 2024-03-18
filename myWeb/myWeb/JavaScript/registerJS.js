function isLetter(str) {
    return str.length == 1 && str.match(/[a-z]/i);
}

function validateForm() {
    var res = true;
    res = userNameVal() && res;
    res = passWordVal() && res;
    res = confirmFname() && res;
    res = confirmLname() && res;
    res = confirmEmail() && res;
    res = confirmPhone() && res;
    return res;
}

function userNameVal() {
    var userName = document.getElementById("userName").value;
    var msgBox = document.getElementById("uNameMsg");
    if (userName.length == 0) {
        msgBox.value = "you must enter user name";
        msgBox.style.color = "red";

        return false;
    }

    if (!(isLetter(userName[0]))) {
        msgBox.value = "user name must start with a letter";
        msgBox.style.color = "red";
        return false;
    }
    msgBox.value = "";
    return true;
}

function passWordVal() {
    var pass = document.getElementById("pw").value;
    var msgBox = document.getElementById("pwMsg");
    if (pass.length < 7) {
        msgBox.value = "password must contain at least 7 charecters";
        msgBox.style.color = "red";
        return false;
    }
    var specialChar = /[@!#$%^&*()-+]/;
    if (!specialChar.test(pass)) {
        msgBox.value = "password must one special char";
        return false;
    }
    msgBox.value = "";
    return true;
}

function confirmFname() {
    var fName = document.getElementById("fName").value;
    var msgBox = document.getElementById("fNameMsg");
    if (fName.length == 0) {
        msgBox.value = "you must enter first name";
        msgBox.style.color = "red";
        return false;
    }
    for (let i = 0; i < fName.length; i++) {
        if (!(isLetter(fName[i]))) {
            msgBox.value = "first name must contain only letters";
            msgBox.style.color = "red";
        }
    }
    msgBox.value = "";
    return true;
}

function confirmLname() {
    var lName = document.getElementById("lName").value;
    var msgBox = document.getElementById("lNameMsg");
    if (lName.length == 0) {
        msgBox.value = "you must enter last name";
        msgBox.style.color = "red";
        return false;
    }
    for (let i = 0; i < lName.length; i++) {
        if (!(isLetter(lName[i]))) {
            msgBox.value = "last name must contain only letters";
            msgBox.style.color = "red";
            return false;
        }
    }
    msgBox.value = "";
    return true;
}

function confirmEmail() {
    var email = document.getElementById("email").value;
    var msgBox = document.getElementById("emailMsg");
    reg = /^\w+([\.-]?\w+)*@\w+([\.-]?w+)*(\.\w{2,4})+$/;
    if (!reg.test(email)) {
        msgBox.value = "Invalid email";
        msgBox.style.color = "red";
        return false;
    }
    msgBox.value = "";
    return true;
}

function confirmPhone()
{
    var phone = (document.getElementById("phone").value).replace(/\D/g, '');
    var msgBox = document.getElementById("phoneMsg");

    reg = /^0{1}(2|3|4|6|8|9|5[2-8]|73)-[1-9]\d{6}$/;

    // Define an array of regex patterns to match different phone number formats
    const phonePatterns = [
        /^\d{10}$/,                     // 10 digits: 1234567890
        /^\d{3}-\d{3}-\d{4}$/,          // 3-3-4 format: 123-456-7890
        /^\(\d{3}\)\s?\d{3}-\d{4}$/,    // (123) 456-7890 or (123)456-7890
        /^\+\d{1,2}\s?\(\d{3}\)\s?\d{3}-\d{4}$/  // +1 (123) 456-7890 or +12 (123) 456-7890
    ];

    // Check if the cleaned number matches any of the patterns
    for (const pattern of phonePatterns)
    {
        if (pattern.test(cleanedNumber))
        {
            // Valid
            return true;
        }
    }

    // Invalid phone number
    if (!reg.test(phone)) {
        msgBox.value = "Invalid phone number";
        msgBox.style.color = "red";
        return false;
    }
    
}

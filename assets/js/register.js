$(document).ready(function(){
    $('form').submit(function(event){
        var password = $('#password').val();
        var passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z])/;

        if (!passwordRegex.test(password)) {
            event.preventDefault();
            alert('Password must contain at least one uppercase letter, one lowercase letter, one number, and one special character');
        }
    });
});
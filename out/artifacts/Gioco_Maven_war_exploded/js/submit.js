const submit = document.getElementById('submitFormLogin');
const user = document.getElementById('userInput');
const pass = document.getElementById('passwordInput');
submit.onclick = () => alert('Usuario: ' + user.value + ' contraseña:' + pass.value);
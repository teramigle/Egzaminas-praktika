document.getElementById('submit').addEventListener("click", validateForm);

function validateForm(e){
    e.preventDefault();
    let vardas = document.getElementById('vardas').value;
    let email = document.getElementById('email').value;
    if (vardas =='' || email == '' || !email.includes('@')) {
        alert('Būtina užpildyti visus laukus!');
    } else {
        let alert = document.getElementById('alert');
        alert.classList.add('alert');
        alert.classList.add('alert-success');
        alert.innerHTML = `Jūs sėkmingai užsiprenumeravote naujienlaiškį adresu ${email}`;
        setTimeout(function() { 
             alert.classList.add('d-none');
        }, 6000);
    }
}

const form = document.getElementById('form')
const username_input = document.getElementById('username')
const password_input = document.getElementById('password')
const error_message = document.getElementById('error-message')

form.addEventListener('submit', (e) => {
  

  let errors = []

  if(firstname_input){
    // Iƒ firstname_input = Sign Up Page
    errors = getSignupFormErrors()
  }
  else {
    // Iƒ no firstname_input = Log In Page
    errors = getLoginFormErrors(username_input.value, password_input.value)
  }

  if(errors.length > 0) {
    e.preventDefault() // Prevent Submit
    error_message.innerText = errors.join(". ")
  }
})

function getSignupFormErrors(firstname, email, password, repeatPassword){
  let errors = []

  if(firstname === '' || firstname == null){
    errors.push('Firstname is required')
    firstname_input.parentElement.classList.add('incorrect')
  }
}

function getLoginFormErrors(username, password){
  let errors = []

  if(username === '' || username == null || password === '' || password == null){
    errors.push('This Field is required')
    username_input.parentElement.classList.add('incorrect')
    password_input.parentElement.classList.add('incorrect')
  }

  return errors;
}

const allInputs = [username_input, password_input]

allInputs.forEach(input => {
  input.addEventListener('input', () => {
    if(input.parentElement.classList.contains('incorrect')){
      input.parentElement.classList.remove('incorrect')
      error_message.innerText = ''
    }
  })
})

function redirectToNextPage(event) {
  event.preventDefault(); // Prevent form submission (default behavior)
  const username = document.getElementById("username").value;
  const password = document.getElementById("password").value;

  // Add your validation logic here if needed
  if (username === "admin" && password === "password") {
      window.location.href = "home.html"; // Redirect to the next page
  } else {
      alert("Invalid username or password!");
  }
}
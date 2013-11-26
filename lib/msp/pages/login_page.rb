class LoginPage
  include PageObject

  page_url FigNewton.lotus_qa

  text_field(:user_email, id: 'user_email')
  text_field(:user_password, id: 'user_password')
  button(:login_button, value: 'Login')



end
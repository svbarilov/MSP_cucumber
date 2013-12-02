class LoginPage
  include PageObject

  page_url FigNewton.lotus_qa

  text_field(:user_email, id: 'user_email')
  text_field(:user_password, id: 'user_password')
  button(:login_button, value: 'Login')
  div(:error, class: "flash alert", index: 0)

  def error_text
    error_element.text
  end

  def log_in
    user_email = "arogovskoy@marketron.com"
    user_password = "Password123"
    login_button
  end

end
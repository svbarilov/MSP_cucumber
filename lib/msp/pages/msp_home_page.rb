class MspHomePage
  include PageObject

  page_url FigNewton.msp_home_page


  link(:accounts_button, text: 'Accounts')
  text_field(:search_field, id: 'js-text-filter')
  link(:new_account, id: 'js-new-company')

  def present?
    search_field?
  end


end
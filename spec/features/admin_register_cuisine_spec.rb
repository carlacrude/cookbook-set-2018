require 'rails_helper'

feature 'Admin Register Cuisine' do 

  scenario 'sucessfully' do

    visit root_path
    click_on 'Cadastrar Cozinha'
    fill_in 'Nome', with: 'Grega'
    click_on 'Enviar'

    expect(page).to have_css('h1', text: 'Cozinha: Grega')
    expect(page).to have_css('div.alert.alert-success', text: 'Cadastrada com sucesso')


  end

end

describe 'login form', :login do 

    before(:each) do 
        visit '/login'
    end 
    
    it 'login com sucesso' do
       

        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        expect(find('#flash').visible?).to be true
        #expect(find('#flash').text).to eql 'Olá, Tony Stark. Você acessou a área logada!' #tem que ser igual 
        #expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!' #tem que ter no texto 
        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!' #tem que ter no elemento 

    end

    it 'senha incorreta' do

        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'jarvis'

        click_button 'Login'
        expect(find('#flash').text).to include 'Senha é invalida!' #um ID


    end
    
    it 'usuário não cadastrado' do

        fill_in 'username', with: 'sta'
        fill_in 'password', with: 'jarvis'

        click_button 'Login'
        expect(find('#flash').text).to include 'O usuário informado não está cadastrado'
    
    end


end
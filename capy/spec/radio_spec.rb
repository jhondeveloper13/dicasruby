describe 'Botões de Radio', :radio do 

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/radios' #radios button
    end

    it 'selecão por ID' do 
       
        choose('cap')
   
    end

    it 'selecão por ID' do 
       
         find('input[value=cap]').click #se for com elemento css
    end

end
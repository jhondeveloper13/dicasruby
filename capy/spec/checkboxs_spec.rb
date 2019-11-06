describe 'caixas de selecção', :checkbox do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/checkboxes'
    end

    it 'marcando uma opção' do 
        check('thor') #id ou name
    end

    it 'desmarcando uma opção' do
        uncheck('antman')
    end

    it 'mancando com find set true' do 
        find('input[value=cap]').set(true)#usando seletor css
    end

    it 'escolhendo um radiobutton' do 
        visit 'https://training-wheels-protocol.herokuapp.com/radios' #radios button
        choose('cap')
        # find('input[value=cap]').click se for com elemento css
    end

    after(:each) do
    sleep 3
    end

end
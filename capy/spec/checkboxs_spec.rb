describe 'caixas de selecção', :checkbox do

    before(:each) do
        visit '/checkboxes'
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

    after(:each) do
    sleep 3
    end

end
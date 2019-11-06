describe 'caixa de selecao', :este do
    it 'item especifico simples' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        select('Loki', from:'dropdown') #só para quando possui ID
        sleep 3
    end

    it 'item especifico com o find', :este2 do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list') #usando selector class
        drop.find('option', text: 'Scott Lang').select_option
        sleep 3
    end

    it 'qualquer item', :este3 do 
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list') #usando selector class
        drop.all('option').sample
    end


end
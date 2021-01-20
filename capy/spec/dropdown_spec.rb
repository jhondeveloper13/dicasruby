describe 'caixa de opções', :este do

    before(:each) do 

        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'

    end
    it 'item especifico simples' do
      
        select('Loki', from:'dropdown') #só para quando possui ID
        sleep 3
    end

    it 'item especifico com o find', :este2 do
        
        drop = find('.avenger-list') #usando selector class
        drop.find('option', text: 'Scott Lang').select_option
        sleep 3
    end

    it 'qualquer item', :este3 do 
     
        drop = find('.avenger-list') #usando selector class
        drop.all('option').sample
    end


end
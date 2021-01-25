describe 'Teclado', :key do 

    before(:each) do 
        visit'/key_presses'
    end

    it 'enviando teclas' do 

        teclas = %i[tab escape space enter shift control alt]

        teclas.each do |r|
            find('#campo-id').send_keys r

            expect(page).to have_content 'You entered: ' + r.to_s.upcase 
            
        end
    end

    it 'enviando letras' do 

        teclas = %w[a s d f g h j k l]

        teclas.each do |l|
            find('#campo-id').send_keys l

            expect(page).to have_content 'You entered: ' + l.to_s.upcase 
            
        end
    end



end
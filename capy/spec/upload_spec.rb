describe 'Upload', :upload do

before(:each) do
    visit 'https://training-wheels-protocol.herokuapp.com/upload'
    @arquivo = Dir.pwd + '/spec/src/jhon.txt'
    @imagem = Dir.pwd + '/spec/src/jj.jpg'
end

#it 'uploado com arquivo texto' do 
 #attach_file('file-upload', @arquivo)
 #click_button 'Upload'

 #div_arquivo = find('#uploaded-file')
 #expect(div_arquivo.text).to eql 'jhon.txt'

#end

it 'uploado com arquivo imagem' do 
    attach_file('file-upload', @imagem)
    click_button 'Upload'
   
    div_arquivo = find('#uploaded-file')
    expect(div_arquivo.text).to eql 'jj.jpg'

    img - finf('#new-image')
    expect(img[:src]).to eql 'jj.jpg'
   
   end

after(:each) do
    sleep 3
end

end
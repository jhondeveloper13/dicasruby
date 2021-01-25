describe 'Upload', :upload do

before(:each) do
    visit '/upload'
    @arquivo = Dir.pwd + '/spec/src/jhon.txt'
    @imagem = Dir.pwd + '/spec/src/jj.jpg'
end

it 'uploado com arquivo texto' do 
 attach_file('file-upload', @arquivo)
 click_button 'Upload'

 div_arquivo = find('#uploaded-file')
 expect(div_arquivo.text).to eql 'jhon.txt'

end

it 'upload de imagem' do 
    attach_file('file-upload', @imagem)
    click_button 'Upload'
   
    div_arquivo = find('#uploaded-file')
    expect(div_arquivo.text).to eql 'jj.jpg'

    img = find('#new-image')
    expect(img[:src]).to include 'jj.jpg'
   
   end

after(:each) do
    sleep 3
end

#page.has_field? 'id', disable: true verifica se o camp esta habilitado

end
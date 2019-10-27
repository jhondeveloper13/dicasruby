class QuartetoVingador
    attr_accessor :list
    
    def initialize
        self.list = [] 
    end

    def coloca(vingador)
        self.list.push(vingador)
    end
end

describe QuartetoVingador do 
    it 'deve adicionar um vingador' do
        hq = QuartetoVingador.new

        hq.coloca('spiderman')
        expect(hq.list).to eql ['spiderman']
       
    end

end

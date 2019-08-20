Dado("que chamo serviço apifilms selecionando director e producer") do
    @response = Apifilms.new.buscar_filmes
end
                                                                                   
Dado("tenho status {int}") do |status|
    expect(@response.code).to eq status
    puts @response.code
end

Então("tenho uma lista de filmes personalisada por diretor e produtor") do
    @response['results'].each do |result|
        director = result['director']
        producer = result['producer']
        if director == 'George Lucas' || producer == 'Rick McCallum'
            puts ("Titulo: "+result['title'])
            puts ("Diretor: "+result['director'])
            puts ("Produtor: "+result['producer'])
        end
    end
end    
Dado("que chamo serviço apifilms selecionando director e producer") do
    @response = Apifilms.new.buscar_filmes
end
                                                                                   
Dado("tenho status {int}") do |status|
    expect(@response.code).to eq status
    puts @response.code
end

Então("tenho uma lista de filmes personalisada por diretor e produtor") do
    @response['results'].each do |result|
        puts result['title']
        # print result['title']
        # p result['title']
        # p result['director']
        # p result['producer']
    end
end
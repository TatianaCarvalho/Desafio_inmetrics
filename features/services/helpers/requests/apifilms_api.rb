class Apifilms
  def buscar_filmes
    HTTParty.get('http://swapi.co/api/films/')
    end
  end
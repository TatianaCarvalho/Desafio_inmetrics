module Helpers
  module Requests
      class Apifilms
          def buscar_filmes(body)
            HTTParty.get('http://swapi.co/api/films/', body: body.to_json)
          end
        end
      end
end

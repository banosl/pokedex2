class PokemonService
  def self.get_all_pokemon
    response = conn.get("pokemon")
    parse_json(response)
  end

  private
  def self.conn
    Faraday.new(
      url: "https://pokeapi.co/api/v2/"
    )
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: :true)
  end
end
require "rails_helper"

RSpec.describe PokemonService do
  describe 'get_all_pokemon' do
    it 'returns a list of the first 20 pokemon' do
      response = PokemonService.get_all_pokemon

      expect(response).to be_a(Hash)
      expect(response[:results]).to be_a(Array)
    end
  end
end
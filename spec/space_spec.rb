require 'space'
require 'database_helpers'

describe Space do
  describe '.create' do
    it 'creates a space with name, description and price' do
      space = Space.create(name: 'Luxury resort', description: 'Pleasant flats by the beach', price_per_day: "100")
      persisted_data = persisted_data(id: space.id, table: 'spaces')
      
      expect(space).to be_a Space
      expect(space.id).to eq persisted_data.first['id']
      expect(space.name).to eq 'Luxury resort'
      expect(space.description).to eq 'Pleasant flats by the beach'
      expect(space.price_per_day).to eq '100'
    end
  end
end


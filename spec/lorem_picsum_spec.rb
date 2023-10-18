require 'spec_helper'
require 'lorem_picsum'

RSpec.describe LoremPicsum do
  describe '.random_image' do
    it 'returns an image URL' do
      result = LoremPicsum.random_image(width: 200, height: 300)
      expect(result).to start_with('https://')
      expect(result).to include('picsum.photos')
    end
  end
end
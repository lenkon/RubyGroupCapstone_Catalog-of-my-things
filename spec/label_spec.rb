require 'rspec'
require_relative '../classes/label'

describe Label do
  let(:color) { 'white' }
  let(:title) { 'Duck' }
  let(:label) { Label.new(title, color) }
  describe '#initialize' do
    it 'sets color and title' do
      expect(label.color).to eq('white')
      expect(label.title).to eq('Duck')
    end
  end
end

require 'rspec'
require_relative '../classes/book'

describe Book do
  let(:cover_state) { 'Title of Book' }
  let(:publisher) { 'Peacock' }
  let(:publish_date) { Time.now - (10 * 365 * 24 * 60 * 60) }
  let(:publish_date_recent) { Time.now - (2 * 365 * 24 * 60 * 60) } # 2 years ago
  let(:book_good_state) { Book.new(publisher, cover_state, publish_date) } # 10 years ago
  let(:book_bad_state) { Book.new(publisher, 'bad', publish_date_recent) } # 2 years ago with bad cover
  
  describe '#initialize' do
    it 'sets publisher and cover_state' do
      expect(book_good_state.publisher).to eq('Peacock')
      expect(book_good_state.cover_state).to eq('Title of Book')
    end
  end
  describe '#can_be_archived?' do
    context 'when cover state is not bad' do
      it 'returns true' do
        expect(book_good_state.can_be_archived?).to be_truthy
      end
    end
    context 'when cover state is bad' do

      it 'returns true' do
        expect(book_bad_state.can_be_archived?).to be_truthy
      end
    end
  end
end
require_relative '../karate_chop'

RSpec.describe 'karate chop' do
  before do
    @searcher = Chop.new
  end
it 'searches a list for the sought element' do
  expect(@searcher.chop(3, [])).to eq(-1)
  expect(@searcher.chop(1, [1])).to eq(0)
  expect(@searcher.chop(1, [1])).to eq(0)
  expect(@searcher.chop(1, [1, 3, 5])).to eq(0)
  expect(@searcher.chop(3, [1, 3, 5])).to eq(1)
  expect(@searcher.chop(5, [1, 3, 5])).to eq(2)
  expect(@searcher.chop(0, [1, 3, 5])).to eq(-1)
  expect(@searcher.chop(2, [1, 3, 5])).to eq(-1)
  expect(@searcher.chop(4, [1, 3, 5])).to eq(-1)
  expect(@searcher.chop(6, [1, 3, 5])).to eq(-1)
  expect(@searcher.chop(1, [1, 3, 5, 7])).to eq(0)
  expect(@searcher.chop(3, [1, 3, 5, 7])).to eq(1)
  expect(@searcher.chop(5, [1, 3, 5, 7])).to eq(2)
  expect(@searcher.chop(7, [1, 3, 5, 7])).to eq(3)
  expect(@searcher.chop(0, [1, 3, 5, 7])).to eq(-1)
  expect(@searcher.chop(2, [1, 3, 5, 7])).to eq(-1)
  expect(@searcher.chop(4, [1, 3, 5, 7])).to eq(-1)
  expect(@searcher.chop(6, [1, 3, 5, 7])).to eq(-1)
  expect(@searcher.chop(8, [1, 3, 5, 7])).to eq(-1)
end
end

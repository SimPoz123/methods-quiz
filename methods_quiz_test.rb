require 'minitest/autorun'
require './methods_quiz'

# TODO - write tests here

describe 'Methods' do

  describe 'has_teen?' do

    it 'is true when the first is a teen' do
      has_teen?(14, 23, 88).must_equal(true)
    end

    it 'is true when the second is a teen' do
      has_teen?(76, 15, 88).must_equal(true)
    end

    it 'is true when the first is a teen' do
      has_teen?(90, 23, 16).must_equal(true)
    end

    it 'is true 13 or 19' do
      has_teen?(13, 23, 88).must_equal(true)
      has_teen?(19, 23, 87).must_equal(true)
    end

    it 'is true when multiple teens' do
      has_teen?(13, 16, 78).must_equal(true)
      has_teen?(13, 14, 15).must_equal(true)
    end

    it 'is false when no teens' do
      has_teen?(60, 50, 40).must_equal(false)
    end

  end

  describe 'not_string' do

    it 'returns string with not unchanged' do
      not_string("not cool").must_equal("not cool")
    end

    it 'returns string without not with a not' do
      not_string("cool").must_equal("notcool")
    end

  end

  describe 'icy_hot?' do

    it 'is true when one is icy and the other is hot' do
      icy_hot?(-20, 115).must_equal(true)
      icy_hot?(125, -40).must_equal(true)
    end

    it 'is false when one is icy' do
      icy_hot?(-50, 40).must_equal(false)
      icy_hot(60, -25).must_equal(false)
    end

    it 'is false when one is hot' do
      icy_hot?(115, 20).must_equal(false)
      icy_hot?(75, 130).must_equal(false)
    end

    it 'is false when neither is icy nor hot' do
      icy_hot?(3, 70).must_equal(false)
    end

  end

end

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

end

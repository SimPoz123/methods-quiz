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
      icy_hot?(60, -25).must_equal(false)
    end

    it 'is false when one is hot' do
      icy_hot?(115, 20).must_equal(false)
      icy_hot?(75, 130).must_equal(false)
    end

    it 'is false when neither is icy nor hot' do
      icy_hot?(3, 70).must_equal(false)
    end

  end

  describe 'closer_to' do

    it 'returns the first guess if it is closest' do
      closer_to(50, 49, 30).must_equal(49)
    end

    it 'returns the second guess if it is closest' do
      closer_to(50, 53, 78).must_equal(53)
    end

    it 'returns the correct guess if the guesses are over target' do
      closer_to(2, 50, 49).must_equal(49)
      closer_to(2, 100, 101).must_equal(100)
    end

    it 'returns the correct guess if the guesses are under target' do
      closer_to(100, 60, 70).must_equal(70)
      closer_to(2100, 40, 20).must_equal(40)
    end

    it 'returns 0 if they are the same distance' do
      closer_to(50, 40, 60).must_equal(0)
    end

  end

  describe 'two_as_one?' do

    it 'is true when a and b add to c' do
      two_as_one?(3, 5, 8).must_equal(true)
    end

    it 'is true when b and c add to a' do
      two_as_one?(13, 6, 7).must_equal(true)
    end

    it 'is true when a and c add to b' do
      two_as_one?(24, 49, 25).must_equal(true)
    end

    it 'is false when two do not add to the third' do
      two_as_one?(90, 60, 100).must_equal(false)
    end

    it 'is false when all the same number' do
      two_as_one?(1, 1, 1,).must_equal(false)
    end

    it 'is true when all 0' do
      two_as_one?(0, 0, 0).must_equal(true)
    end

  end

  describe 'pig_latinify' do

    it 'moves the consonant to the end and adds ay if starts with a consonant' do
      pig_latinify("truck").must_equal("rucktay")
    end

    it 'add way if starts with a vowel' do
      pig_latinify("apple").must_equal("appleway")
    end

    it "changes to lowercase" do
      pig_latinify("aPPlE").must_equal("appleway")
      pig_latinify("TruCK").must_equal("rucktay")
    end

    it 'removes spaces around input' do
      pig_latinify("apple ").must_equal("appleway")
      pig_latinify(" truck").must_equal("rucktay")
    end

  end

end

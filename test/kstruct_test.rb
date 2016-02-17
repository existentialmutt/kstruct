require 'test_helper'

class KStructTest < Minitest::Test

  def test_that_it_has_a_version_number
    refute_nil ::KStruct::VERSION
  end

  def test_new_returns_a_class
    assert_kind_of Class, KStruct.new
  end

  class Subject < KStruct.new(:num); end

  def test_provides_accessor_methods
    subject = Subject.new
    subject.num = 5
    assert_equal 5, subject.num
  end

  def test_new_provides_an_initializer_that_accepts_keyword_arguments
    subject = Subject.new num: 12
    assert_equal 12, subject.num
  end

  def test_no_argument_constructor_and_everything_is_nil
    subject = Subject.new
    assert_equal nil, subject.num
  end

  def test_raises_no_method_error_on_unrecognized_keyword
    assert_raises NoMethodError do
      subject = Subject.new name: "Kaboom!" 
    end
  end

  def test_accessor_methods_are_the_only_difference_from_object
    method_diff = Subject.new.methods - Object.new.methods
    assert_equal [:num, :num=], method_diff
  end

end

require File.expand_path(File.dirname(__FILE__) + '/neo')

class My_own_koans < Neo::Koan
  def test_1
    testHash = Hash.new 
    assert_equal __, TestHash.class
  end
  def test_2
    assert_equal __, [4,3,2,1].sort
  end
  def test_3
    assert_equal __, square(4)
  end
  def test_4
    assert_equal __, "hello".upcase
  end
  def test_5
    testHash1 ={:font_size => 14, :font => "Times New Roman"}
    assert_equal __, testHash1[:font]
  end
  def test_6
    my_array=[52,31,21]
    assert_equal __, my_array.size
  end
  def test_7
    name = "Andro"
    assert_equal __, "Hello, #{name}"
  end
  def test_8
    assert_equal __, "hello".include?("e")
  end
  def test_9
    true?? = 0
    if "Do you like cats?".match(/like/)
      puts"Match found!"
      true 1
    end
    assert_equal __, true??
  end
  def test_10
    assert_equal __, "eerssaaasffFdsssaa".scan(/\d/)
end

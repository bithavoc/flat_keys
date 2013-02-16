require_relative 'test_helper'

describe "flat_keys" do

  it "should return an empty hash when an empty hash is given" do
     Hash.new.flat_keys.must_be_empty
  end

  it "should flat_keys all root keys" do
    {'a'=>'Letter A', 'b'=>'Letter B'}.flat_keys.must_equal({'a'=>'Letter A', 'b'=>'Letter B'})
  end

  it "should flat_keys all nested keys" do
    {'a'=>'Letter A', 'name'=>{'fname'=>'John', 'lname'=>'Doe'}}.flat_keys('$').must_equal({'a'=>'Letter A', 'name$fname'=>'John', 'name$lname'=>'Doe'})
  end

  it "should flat_keys with default separator " do
    {'a'=>'Letter A', 'name'=>{'fname'=>'John'}}.flat_keys('.').must_equal({'a'=>'Letter A', 'name.fname'=>'John'})
  end

end

describe "unflat_keys" do

  it "should unflat all nested keys" do
    {'a'=>'Letter A', 'name$fname'=>'John', 'name$lname'=>'Doe'}.unflat_keys('$').must_equal({'a'=>'Letter A', 'name'=>{'fname'=>'John', 'lname'=>'Doe'}})
  end

  it "should unflat with default separator " do
    {'a'=>'Letter A', 'name.fname'=>'John'}.unflat_keys('.').must_equal({'a'=>'Letter A', 'name'=>{'fname'=>'John'}} )
  end

end

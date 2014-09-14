require 'rspec'
require './problem3.rb'

describe Problem3 do
  before do
    @pblm = Problem3.new
  end

  it 'should return true with "dog" and "god"' do
    expect(@pblm.run("dog", "god")).to be true
  end

  it 'should return true with "dog" and "God"' do
    expect(@pblm.run("dog", "god")).to be true
  end

  it 'should return true with "dog" and "g o d"' do
    expect(@pblm.run("dog", "g o d")).to be true
  end

  it 'should return true with "dog" and "cat"' do
    expect(@pblm.run("dog", "cat")).to be false
  end

end

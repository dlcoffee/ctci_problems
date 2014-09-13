require 'rspec'
require './problem1.rb'


describe Problem1 do
  before do
    @pblm = Problem1.new
  end

  it '\'cat\' should return true' do
    expect(@pblm.run("cat")).to be true
  end

  it '\'poop\' should return false' do
    expect(@pblm.run("poop")).to be false
  end

  it '\'a b c c\' should return false' do
    expect(@pblm.run("a b c c")).to be false
  end

end

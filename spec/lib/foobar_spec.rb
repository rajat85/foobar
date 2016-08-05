require 'rspec'
require_relative '../../lib/foobar'

describe Foobar do
  subject(:foobar) { Foobar.new(1, 100) }

  it 'should fail for an invalid foobar instance' do
    expect {
        Foobar.new()
    }.to raise_error ArgumentError
  end

  it 'should fail for invalid params' do
    expect {
        Foobar.new(1, 'z')
    }.to raise_error Exception
  end

  describe 'is_foobar?' do

    it 'shound return true, if the number is divisible by 3 and 5' do
      expect(foobar.is_foobar?(15)).to be_truthy
    end

    it 'shound return false, if the number is divisible by 3, but not 5' do
      expect(foobar.is_foobar?(9)).to be_falsey
    end

    it 'shound return false, if the number is divisible by 5, but not 3' do
      expect(foobar.is_foobar?(20)).to be_falsey
    end

    it 'shound return false, if the number is divisible by neither 5 nor 3' do
      expect(foobar.is_foobar?(19)).to be_falsey
    end

  end

  describe 'is_foo?' do

    it 'shound return true, if the number is divisible by 3' do
      expect(foobar.is_foo?(3)).to be_truthy
    end

    it 'shound return false, if the number is not divisible by 3' do
      expect(foobar.is_foo?(7)).to be_falsey
    end

  end

  describe 'is_bar?' do

    it 'shound return true, if the number is divisible by 5' do
      expect(foobar.is_bar?(5)).to be_truthy
    end

    it 'shound return false, if the number is not divisible by 5' do
      expect(foobar.is_bar?(7)).to be_falsey
    end
  end

end

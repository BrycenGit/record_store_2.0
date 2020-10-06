require('spec_helper')
require 'rspec'
require 'album'
require 'song'
require 'artist'
require 'pry'

describe '#Artist' do
  
  describe('.all') do
    it("returns an empty array when there are no artists") do
      expect(Artist.all).to(eq([1]))
    end
  end



end
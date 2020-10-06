require('spec_helper')
require 'rspec'
require 'album'
require 'song'
require 'artist'
require 'pry'


describe '#Artist' do
  
  describe('.all') do
    it("returns an empty array when there are no artists") do
      expect(Artist.all).to(eq([]))
    end
  end

  describe('#save') do
    it("saves an artist") do
      artist = Artist.new({:name => "john", :id => nil})
      artist.save()
      artist2 = Artist.new({:name => "brycen", :id => nil})
      artist2.save()
      expect(Artist.all).to(eq([artist, artist2]))
    end
  end

  describe('.clear') do
    it("clears all artists") do
      artist = Artist.new({:name => "A Love Supreme", :id => nil})
      artist.save()
      artist2 = Artist.new({:name => "Blue", :id => nil})
      artist2.save()
      Artist.clear
      expect(Artist.all).to(eq([]))
    end
  end

  describe('#==') do
    it("is the same artist if it has the same attributes as another artist") do
      artist = Artist.new({:name => "Blue", :id => nil})
      artist2 = Artist.new({:name => "Blue", :id => nil})
      expect(artist).to(eq(artist2))
    end
  end

  describe('.find') do
    it("finds an artist by id") do
      artist = Artist.new({:name => "A Love Supreme", :id => nil})
      artist.save()
      artist2 = Artist.new({:name => "Blue", :id => nil})
      artist2.save()
      expect(Artist.find(artist.id)).to(eq(artist))
    end
  end

  
end
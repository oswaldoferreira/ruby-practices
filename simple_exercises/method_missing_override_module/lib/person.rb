require 'all_with_module'

class Person
  extend AllWith
  PEOPLE = []
  attr_reader :name, :hobbies, :friends

  def initialize name
    @name = name
    @friends = []
    @hobbies = []
    PEOPLE << self
  end

  def has_friend friend
    friends << friend
    friends.flatten!
  end

  def has_hobbie hobbie
    hobbies << hobbie
    hobbies.flatten!
  end

  def self.people
    PEOPLE
  end
end
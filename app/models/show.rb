class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def build_network(arg)
        puts arg
        new_network = Network.create(arg)
        new_network.shows << self
    end
  
end
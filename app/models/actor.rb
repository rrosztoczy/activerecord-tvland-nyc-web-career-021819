class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        first_name + " " + last_name
    end
    
    def list_roles
        #put out each character - show in a string in an array
        characters.map {|char| char.name + " - " + char.show.name}
    end

end
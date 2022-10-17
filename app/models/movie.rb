class Movie < ActiveRecord::Base

# Create
    def self.create_with_title(new_title)
        titled_movie = self.create(title: new_title)
    end

 # Read  
    def self.first_movie
        self.first
    end

    def self.last_movie
        self.last
    end

    def self.movie_count
        self.count
    end

    def self.find_movie_with_id(id)
        self.find(id)
    end

    def self.find_movie_with_attributes(attributes)
        self.find_by(attributes)
    end

    def self.find_movies_after_2002
        self.where("release_date > ?", 2002)
    end

# Update
    def update_with_attributes(attribute)
        self.update(attribute)
    end

    def self.update_all_titles(new_title)
        self.update(title: new_title)
    end

# Delete
    def self.delete_by_id(id)
        self.find(id).destroy
    end

    def self.delete_all_movies
        self.destroy_all
    end
end
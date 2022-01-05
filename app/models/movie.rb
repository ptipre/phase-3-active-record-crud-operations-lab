class Movie < ActiveRecord::Base

    def self.create_with_title(title)

        Movie.create(title: title)
    
    end

    # read first item in movie db

    def self.first_movie
        Movie.first
    end

    def self.last_movie
        Movie.last
    end

    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id(value)
        Movie.find(value)
    end

    def self.find_movie_with_attributes(field)
        Movie.find_by(field)
    end

    def self.find_movies_after_2002
        Movie.where("release_date > ?", 2002)
    end

    def update_with_attributes(value)
        self.update(value)
    end

    def self.update_all_titles(value)
        Movie.update_all(title: value)
    end

    def self.delete_by_id(value)
        Movie.destroy(value)
    end

    def self.delete_all_movies
        Movie.delete_all
    end

end
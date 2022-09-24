class AuthorsController < ApplicationController

    def index
        authors = Author.all
        render json: authors
        # author = Author.new(name: "Caligula", phone_number: "5553054425")
    end
end
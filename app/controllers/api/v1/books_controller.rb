class Api::V1::BooksController < ApplicationController
  def index
    data = {
      titles: [
        { name: "book 1" },
        { name: "new BOOK" },
      ]
    }

    render json: data
  end
end

class Api::V1::BooksController < ApplicationController
  def index
    books = Book.all.map do |b|
      b.as_json.compact.deep_transform_keys { |k| k.camelize(:lower) }
    end

    render json: {
      titles: books
    }
  end
end

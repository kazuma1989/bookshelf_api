class Api::V1::BooksController < ApplicationController

  def index
    books = Book.all.map do |b|
      b.as_json.compact.deep_transform_keys { |k| k.camelize(:lower) }
    end

    render json: {
      titles: books
    }
  end

  def create
    book = Book.new(book_params)

    if book.save
      render status: :created, json: book.as_json
    else
      render status: :bad_request, json: {
        errors: book.errors.full_messages,
        payload: book_params
      }
    end
  end

  private

    def book_params
      params.require(:book).permit(:name, :thumbnail, :author, :url, :note)
    end

end

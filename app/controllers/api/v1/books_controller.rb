class Api::V1::BooksController < ApplicationController

  def index
    books = Book.all.map { |b| as_json(b) }

    render status: :ok, json: {
      titles: books
    }
  end

  def create
    book = Book.new(book_params)

    if book.save
      render status: :created, json: as_json(book)
    else
      render status: :bad_request, json: {
        errors: book.errors.full_messages,
        payload: as_json(book)
      }
    end
  end

  private

    def book_params
      params.require(:book).permit(:name, :thumbnail, :author, :url, :note, :is_read)
    end

    def as_json(model)
      model.as_json.compact.deep_transform_keys { |k| k.camelize(:lower) }
    end

end

class Api::V1::BooksController < ApplicationController
  def index
    data = {
      titles: [
        { name: "book 1" },
        { name: "new BOOK" },
      ]
    }

    if Rails.env.development?
      data[:_debug] = {
        params: params,
        is_stub: true,
      }
    end

    render json: data
  end
end

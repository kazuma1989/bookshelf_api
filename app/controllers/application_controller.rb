class ApplicationController < ActionController::API
  def hello
    data = {
      titles: [
        { name: "foo" },
        { name: "bar" },
      ]
    }
    render json: data
  end
end

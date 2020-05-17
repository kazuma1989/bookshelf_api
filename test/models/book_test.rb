require 'test_helper'

class BookTest < ActiveSupport::TestCase

  def setup
    @book = Book.new(
      name: "My Book",
      thumbnail: "https://example.com/image",
      author: "Me",
      url: "https://example.com/url",
      is_read: false,
      note: "My note",
    )
  end

  test "valid" do
    assert @book.valid?
  end

  test "required: name" do
    @book.name = ""
    assert_not @book.valid?
  end

  test "required: author" do
    @book.author = ""
    assert_not @book.valid?
  end

  test "required: url" do
    @book.url = ""
    assert_not @book.valid?
  end

  test "optional: thumbnail" do
    @book.thumbnail = ""
    assert @book.valid?
  end

  test "optional: note" do
    @book.note = ""
    assert @book.valid?
  end

  test "URL validation: thumbnail" do
    @book.thumbnail = "ttp://"
    assert_not @book.valid?
  end

  test "URL validation: url" do
    @book.url = "ttp://"
    assert_not @book.valid?
  end

end

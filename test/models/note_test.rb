require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  def setup
    @note = Note.new(title: 'Groceries List')
  end

  test 'note should be valid' do
    assert @note.valid?
  end

  test 'title should be present' do
    @note.title = ''
    assert_not @note.valid?
  end
  
  test 'title should not be too short' do
    @note.title = 'aa'
    assert_not @note.valid?
  end

  test 'title should not be too long' do
    @note.title = 'a' * 51
    assert_not @note.valid?
  end

  test 'body should not be too long' do
    @note.body = 'a' * 1001
    assert_not @note.valid?
  end
end

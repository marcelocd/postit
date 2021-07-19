class NotesController < ApplicationController
  before_action :find_note, only: %i[edit update destroy]

  def index
    @note = Note.new
    @notes = Note.all
                 .order(created_at: :desc)
                 .to_a
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.create(note_params)
  end

  def edit ; end

  def update
    @note.update(note_params)
  end

  def destroy
    @article.destroy
  end

  private

  def find_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note)
          .permit(:title, :body)
  end
end

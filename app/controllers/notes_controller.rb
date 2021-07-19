class NotesController < ApplicationController
  before_action :find_note, only: %i[update destroy]

  def index
    @notes = Note.all
                 .order(created_at: :desc)
                 .to_a
  end

  def create
    @note = Note.create(note_params)
  end

  def update
    if @note.udpate(valid_params)
      flash[:notice] = t('.success')
    end
  end

  def destroy
    @article.destroy
		redirect_to articles_path
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

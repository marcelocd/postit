class Api::V1::NotesController < ApiController
  skip_before_action :verify_authenticity_token

  before_action :find_note, only: %i[show destroy]

  def index
    notes = Note.all
                .order(updated_at: :desc)
    render json: (notes.any? ? notes :
                               { response: t('no_notes_found') }).to_json
  end

  def create
    note = Note.new(note_params)
    if note.save
      render json: note.to_json
    else
      render json: { errors: note.errors
                                 .full_messages }.to_json
    end
  end


  def show
    if @note
      render json: @note.to_json
    else
      render json: { response: t('note_not_found') }.to_json
    end
  end

  def destroy
    @note.destroy
    notes = Note.all
                .order(updated_at: :desc)
    render json: notes.to_json
  end

  private

  def find_note
    @note = Note.find_by(id: params[:id])
  end

  def note_params
    params.permit(:title, :body)
  end
end

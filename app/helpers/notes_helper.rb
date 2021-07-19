module NotesHelper
  def note_form_url note
    note.id.present? ? note_path(note) : notes_path
  end

  def note_form_method note
    note.id.present? ? :patch : :post
  end

  def note_form_submit_text note
    note.id.present? ? t('.update') : t('.create') 
  end
end

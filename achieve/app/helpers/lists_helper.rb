module ListsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_lists_path
    elsif action_name == 'edit'
      list_path
    end
  end 
end

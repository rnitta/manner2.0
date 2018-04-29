# frozen_string_literal: true
module UsersHelper
  def urge_complete_registration
    # メール認証後に必ずユーザー登録させる
    if current_user
      redirect_to edit_user_registration_path if current_user.name.blank?
    end
  end
end

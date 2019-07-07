# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  def new
    super
  end

  # POST /resource
  def create
    # binding.pry
    kanji_last_name = params[:kanji_name][0][:last]
    kanji_first_name = params[:kanji_name][0][:first]
    kanji_name = "#{kanji_last_name}#{kanji_first_name}"
    params[:user][:kanji_name] = kanji_name
    kana_last_name = params[:kana_name][0][:last]
    kana_first_name = params[:kana_name][0][:first]
    kana_name = "#{kana_last_name}#{kana_first_name}"
    params[:user][:kana_name] = kana_name
    super
    # User.create(nickname: params[:nickname], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation], kanji_name: params[:kanjiname], kana_name: params[:kana_name])
    if @user.save
      redirect_to new_user_session_path
    end
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  def post_params
    params.require(:user).permit(:kanji_name, :kana_name, :nickname, :birth_of_date, :prefecture, :address, :profile, :phone_number)
  end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:kanji_name, :kana_name, :nickname, :birth_of_date, :prefecture, :address, :profile, :phone_number])
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end

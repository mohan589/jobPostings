class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  def edit
    # super
    self.resource.seeker_profiles.build
    self.resource.education_details.build
    self.resource.experience_details.build
    self.resource.seeker_skill_sets.build
    respond_with self.resource
  end

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

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

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

  private

  def sign_up_params
    binding.pry
    allow = [:user_type_id, :date_of_birth, :gender,
             :is_active, :contact_number,
             :sms_notification_active,
             :email_notification_active,:email, :password, :password_confirmation, seeker_profiles_attributes:[:first_name, :last_name, :current_salary, :is_annualy_monthly, :currency],
             education_details_attributes: [:cerficate_degree_name,
                                            :major,:institute_university_name,:starting_date,
                                            :percentage, :grade],
             experience_details_attributes:[:is_current_job,
                                            :start_date, :end_date, :job_title, :company_name,
                                            :job_location_city, :job_location_state, :job_location_country,
                                            :description],
             seeker_skill_sets_attributes: [:skill_set_id, :skill_level]]
    params.require(resource_name).permit(allow)
  end
end

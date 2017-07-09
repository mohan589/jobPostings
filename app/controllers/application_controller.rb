class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_type_id, :date_of_birth, :gender,
                                                       :is_active, :contact_number,
                                                       :sms_notification_active,
                                                       :email_notification_active,
                                                       seeker_profiles_attributes:[:first_name, :last_name, :current_salary, :is_annualy_monthly, :currency],
                                                       education_details_attributes: [:cerficate_degree_name,
                                                       :major,:institute_university_name,:starting_date,
                                                       :percentage, :grade],
                                                       experience_details_attributes:[:is_current_job,
                                                       :start_date, :end_date, :job_title, :company_name,
                                                       :job_location_city, :job_location_state, :job_location_country,
                                                       :description],
                                                       seeker_skill_sets_attributes: [:skill_set_id, :skill_level]])
  end
end

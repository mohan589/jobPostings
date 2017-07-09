class UsersController < ApplicationController
  before_action :authenticate_user!

  def profile
    if current_user.seeker_profiles.count > 0 && current_user.education_details.count > 0 &&
        current_user.experience_details.count > 0 && current_user.seeker_skill_sets.count > 0
      current_user.seeker_profiles
      current_user.education_details
      current_user.experience_details
      current_user.seeker_skill_sets
    else
      current_user.seeker_profiles.build
      current_user.education_details.build
      current_user.experience_details.build
      current_user.seeker_skill_sets.build
    end

  end

  def update_profile
    if current_user.update_attributes(user_params)
      redirect_to root_path, notice: 'Profile updated'
    else
      render 'profile'
    end
  end

  private

  def user_params
    params.require(:user).permit(:id, :user_type_id, :date_of_birth, :gender,
                                  :is_active, :contact_number,
                                  :sms_notification_active,
                                  :email_notification_active,
                                  seeker_profiles_attributes:[:id, :first_name, :user_id, :last_name, :current_salary, :is_annualy_monthly, :currency, :_destroy],
                                  education_details_attributes: [:id, :cerficate_degree_name, :user_id,
                                                                 :major,:institute_university_name,:starting_date,
                                                                 :percentage, :grade, :_destroy],
                                  experience_details_attributes:[:id, :is_current_job, :user_id,
                                                                 :start_date, :end_date, :job_title, :company_name,
                                                                 :job_location_city, :job_location_state, :job_location_country,
                                                                 :description],
                                  seeker_skill_sets_attributes: [:id, :skill_set_id, :skill_level, :user_id, :_destroy])
  end
end

class SkillSetsController < ApplicationController
  before_action :set_skill_set, only: [:show, :edit, :update, :destroy]

  # GET /skill_sets
  # GET /skill_sets.json
  def index
    @skill_sets = SkillSet.all
  end

  # GET /skill_sets/1
  # GET /skill_sets/1.json
  def show
  end

  # GET /skill_sets/new
  def new
    @skill_set = SkillSet.new
  end

  # GET /skill_sets/1/edit
  def edit
  end

  # POST /skill_sets
  # POST /skill_sets.json
  def create
    @skill_set = SkillSet.new(skill_set_params)

    respond_to do |format|
      if @skill_set.save
        format.html { redirect_to @skill_set, notice: 'Skill set was successfully created.' }
        format.json { render :show, status: :created, location: @skill_set }
      else
        format.html { render :new }
        format.json { render json: @skill_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skill_sets/1
  # PATCH/PUT /skill_sets/1.json
  def update
    respond_to do |format|
      if @skill_set.update(skill_set_params)
        format.html { redirect_to @skill_set, notice: 'Skill set was successfully updated.' }
        format.json { render :show, status: :ok, location: @skill_set }
      else
        format.html { render :edit }
        format.json { render json: @skill_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skill_sets/1
  # DELETE /skill_sets/1.json
  def destroy
    @skill_set.destroy
    respond_to do |format|
      format.html { redirect_to skill_sets_url, notice: 'Skill set was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill_set
      @skill_set = SkillSet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skill_set_params
      params.require(:skill_set).permit(:skill_set_name)
    end
end

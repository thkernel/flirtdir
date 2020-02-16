class HobbyProfilesController < ApplicationController
  before_action :set_hobby_profile, only: [:show, :edit, :update, :destroy]

  # GET /hobby_profiles
  # GET /hobby_profiles.json
  def index
    @hobby_profiles = HobbyProfile.all
  end

  # GET /hobby_profiles/1
  # GET /hobby_profiles/1.json
  def show
  end

  # GET /hobby_profiles/new
  def new
    @hobby_profile = HobbyProfile.new
  end

  # GET /hobby_profiles/1/edit
  def edit
  end

  # POST /hobby_profiles
  # POST /hobby_profiles.json
  def create
    @hobby_profile = HobbyProfile.new(hobby_profile_params)

    respond_to do |format|
      if @hobby_profile.save
        format.html { redirect_to @hobby_profile, notice: 'Hobby profile was successfully created.' }
        format.json { render :show, status: :created, location: @hobby_profile }
      else
        format.html { render :new }
        format.json { render json: @hobby_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hobby_profiles/1
  # PATCH/PUT /hobby_profiles/1.json
  def update
    respond_to do |format|
      if @hobby_profile.update(hobby_profile_params)
        format.html { redirect_to @hobby_profile, notice: 'Hobby profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @hobby_profile }
      else
        format.html { render :edit }
        format.json { render json: @hobby_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hobby_profiles/1
  # DELETE /hobby_profiles/1.json
  def destroy
    @hobby_profile.destroy
    respond_to do |format|
      format.html { redirect_to hobby_profiles_url, notice: 'Hobby profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hobby_profile
      @hobby_profile = HobbyProfile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hobby_profile_params
      params.require(:hobby_profile).permit(:hobby_id, :status, :profile_id)
    end
end

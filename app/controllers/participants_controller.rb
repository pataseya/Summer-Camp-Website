class ParticipantsController < ApplicationController
  
  before_action :authenticate_user!
  before_action :require_admin, only: [:index, :destroy]
  before_action :set_participant, only: [:show, :edit, :update, :destroy]

  
  # GET /participants
  # GET /participants.json
  def index

    @participants = Participant.all


  end

  
  # GET /participants/1
  # GET /participants/1.json
  def show
  end

  # GET /participants/new
  def new
    @participant = Participant.new

  end

  # GET /participants/1/edit
  def edit
  end

  # POST /participants
  # POST /participants.json
  def create
    @participant = Participant.new(participant_params)


    respond_to do |format|
      if @participant.save



        format.html { redirect_to @participant, notice: 'Yippee! Your child has been successfully registered for B.R.A.T. Camp!' }
        format.json { render :show, status: :created, location: @participant }
      else
        format.html { render :new }
        format.json { render json: @participant.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /participants/1
  # PATCH/PUT /participants/1.json
  def update
    respond_to do |format|
      if @participant.update(participant_params)
        format.html { redirect_to @participant, notice: "Nice! Your child's regiatration has been successfully updated!" }
        format.json { render :show, status: :ok, location: @participant }
      else
        format.html { render :edit }
        format.json { render json: @participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participants/1
  # DELETE /participants/1.json
  def destroy
    @participant.destroy
    respond_to do |format|
      format.html { redirect_to participants_url, notice: 'Participant was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participant
      @participant = Participant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def participant_params
      params.require(:participant).permit(:name, :age, :sex, :allergies, :parent, :parentemail, :notes)
    end

    def require_admin 
      if !current_user.admin?
        redirect_to root_path, notice:"I'm sorry, you're not authorized to view this page."
      end

    end

end

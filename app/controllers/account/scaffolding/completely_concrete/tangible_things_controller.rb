class Account::Scaffolding::CompletelyConcrete::TangibleThingsController < Account::ApplicationController
  account_load_and_authorize_resource :tangible_thing, through: :absolutely_abstract_creative_concept, through_association: :completely_concrete_tangible_things

  # GET /account/scaffolding/absolutely_abstract/creative_concepts/:absolutely_abstract_creative_concept_id/completely_concrete/tangible_things
  # GET /account/scaffolding/absolutely_abstract/creative_concepts/:absolutely_abstract_creative_concept_id/completely_concrete/tangible_things.json
  def index
    # if you only want these objects shown on their parent's show page, uncomment this:
    # redirect_to [:account, @absolutely_abstract_creative_concept]
  end

  # GET /account/scaffolding/completely_concrete/tangible_things/:id
  # GET /account/scaffolding/completely_concrete/tangible_things/:id.json
  def show
  end

  # GET /account/scaffolding/absolutely_abstract/creative_concepts/:absolutely_abstract_creative_concept_id/completely_concrete/tangible_things/new
  def new
  end

  # GET /account/scaffolding/completely_concrete/tangible_things/:id/edit
  def edit
  end

  # POST /account/scaffolding/absolutely_abstract/creative_concepts/:absolutely_abstract_creative_concept_id/completely_concrete/tangible_things
  # POST /account/scaffolding/absolutely_abstract/creative_concepts/:absolutely_abstract_creative_concept_id/completely_concrete/tangible_things.json
  def create
    respond_to do |format|
      if @tangible_thing.save
        format.html { redirect_to [:account, @absolutely_abstract_creative_concept, :completely_concrete_tangible_things], notice: I18n.t("scaffolding/completely_concrete/tangible_things.notifications.created") }
        format.json { render :show, status: :created, location: [:account, @tangible_thing] }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tangible_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /account/scaffolding/completely_concrete/tangible_things/:id
  # PATCH/PUT /account/scaffolding/completely_concrete/tangible_things/:id.json
  def update
    respond_to do |format|
      if @tangible_thing.update(tangible_thing_params)
        format.html { redirect_to [:account, @tangible_thing], notice: I18n.t("scaffolding/completely_concrete/tangible_things.notifications.updated") }
        format.json { render :show, status: :ok, location: [:account, @tangible_thing] }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tangible_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account/scaffolding/completely_concrete/tangible_things/:id
  # DELETE /account/scaffolding/completely_concrete/tangible_things/:id.json
  def destroy
    @tangible_thing.destroy
    respond_to do |format|
      format.html { redirect_to [:account, @absolutely_abstract_creative_concept, :completely_concrete_tangible_things], notice: I18n.t("scaffolding/completely_concrete/tangible_things.notifications.destroyed") }
      format.json { head :no_content }
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def tangible_thing_params
    strong_params = params.require(:scaffolding_completely_concrete_tangible_thing).permit(
      # 🚅 skip this section when scaffolding.
      :text_field_value,
      :action_text_value,
      :button_value,
      :color_picker_value,
      :ckeditor_value,
      :cloudinary_image_value,
      :date_field_value,
      :date_and_time_field_value,
      :date_and_time_field_value_time_zone,
      :email_field_value,
      :file_field_value,
      :file_field_value_removal,
      :password_field_value,
      :phone_field_value,
      :super_select_value,
      :text_area_value,
      # 🚅 stop any skipping we're doing now.
      # 🚅 super scaffolding will insert new fields above this line.
      multiple_button_values: [],
      multiple_super_select_values: [],
      # 🚅 super scaffolding will insert new arrays above this line.
    )

    # 🚅 skip this section when scaffolding.
    assign_date_and_time(strong_params, :date_and_time_field_value)
    assign_checkboxes(strong_params, :multiple_button_values)
    assign_select_options(strong_params, :multiple_super_select_values)
    # 🚅 stop any skipping we're doing now.
    # 🚅 super scaffolding will insert processing for new fields above this line.

    strong_params
  end
end

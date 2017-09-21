class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  #ログインしていないと機能使用不可
  before_action :authenticate_user!
  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = Recipe.all
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
    #入力フォームと一覧を表示するためインスタンスを2つ生成
    @comment = @recipe.comments.build
    @comments = @recipe.comments
    Notification.find(params[:notification_id]).update(read: true) if params[:notification_id]
  end

  # GET /recipes/new
  def new
    if params[:back]
      @recipe = Recipe.new(recipes_params)
    else
      @recipe = Recipe.new
    end
  end

  # GET /recipes/1/edit
  def edit
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = Recipe.new(recipes_params)
    #user.idも合わせて登録
    @recipe.user_id = current_user.id

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to recipes_path, notice: 'Recipe was successfully created.' }
        format.json { render :show, status: :created, location: @recipe }
        #send_mailのメソッドを呼び出す
        NoticeMailer.sendmail_recipe(@recipe).deliver
      else
        format.html { render :new }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update
    respond_to do |format|
      if @recipe.update(recipes_params)
        format.html { redirect_to recipes_path, notice: 'Recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe }
      else
        format.html { render :edit }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_path, notice: 'Recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def confirm
    @recipe = Recipe.new(recipes_params)
    render :new if @recipe.invalid?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipes_params
      params.require(:recipe).permit(:title, :knack, :comment, :genre, :recipe_image, :recipe_image_cache, :remove_recipe_image, :material_01, :material_02, :material_03, :material_04, :material_05, :material_06, :material_07, :material_08, :material_09, :material_10, :material_11, :material_12, :material_13, :material_14, :material_15, :material_16, :material_17, :material_18, :material_19, :material_20, :process_image_01, :process_image_01_cache, :remove_process_image_01, :process_image_02, :process_image_02_cache, :remove_process_image_02, :process_image_03, :process_image_03_cache, :remove_process_image_03, :process_image_04, :process_image_04_cache, :remove_process_image_04, :process_image_05, :process_image_05_cache, :remove_process_image_05, :process_image_06, :process_image_06_cache, :remove_process_image_06, :process_image_07, :process_image_07_cache, :remove_process_image_07, :process_image_08, :process_image_08_cache, :remove_process_image_08, :process_image_09, :process_image_09_cache, :remove_process_image_09, :process_image_10, :process_image_10_cache, :remove_process_image_10, :process_image_11, :process_image_11_cache, :remove_process_image_11, :process_image_12, :process_image_12_cache, :remove_process_image_12, :process_01, :process_02, :process_03, :process_04, :process_05, :process_06, :process_07, :process_08, :process_09, :process_10, :process_11, :process_12 )
    end

end

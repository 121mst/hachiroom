class CommentsController < ApplicationController
  # コメントを保存、投稿するためのアクションです。
  def create
    # recipeをパラメータの値から探し出し,recipeに紐づくcommentsとしてbuild
    @comment = current_user.comments.build(comment_params)
    @recipe = @comment.recipe
    @comment = current_user.comments.build(comment_params)
    @recipe = @comment.recipe
    @notification = @comment.notifications.build(user_id: @recipe.user.id )
    # クライアント要求に応じてフォーマットを変更
    respond_to do |format|
      if @comment.save
        format.html { redirect_to recipe_path(@recipe), notice: 'コメントを投稿しました。' }
        format.js { render :index }

        unless @comment.recipe.user_id == current_user.id
          Pusher.trigger("user_#{@comment.recipe.user_id}_channel", 'comment_created', {
            message: 'あなたの作成したレシピにコメントが付きました'
          })
        end
        Pusher.trigger("user_#{@comment.recipe.user_id}_channel", 'notification_created', {
          unread_counts: Notification.where(user_id: @comment.recipe.user.id, read: false).count
        })

      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to recipe_path(@recipe), notice: 'コメントを削除しました。' }
      format.html { render :index }
      format.js { render :index }
    end
  end

  private
    # ストロングパラメーター
    def comment_params
      params.require(:comment).permit(:recipe_id, :content)
    end
end

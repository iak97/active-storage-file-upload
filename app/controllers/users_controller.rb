class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update, :destroy, :delete_profile_picture]

    def index
        @users = User.all.order(created_at: :desc)
    end

    def show
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        if @user.save
            redirect_to user_url(@user)
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
    end

    def update
        if @user.update(user_params)
            redirect_to @user
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @user.destroy

        redirect_to root_path, status: :see_other
    end

    def delete_profile_picture
        if @user.profile_picture.purge
            redirect_to @user
        else
            render :edit, status: :unprocessable_entity
        end
    end

    private
      def find_user
        @user = User.find(params[:id] || params[:user_id])
      end

      def user_params
        params.require(:user).permit(:first_name, :last_name, :profile_picture)
      end
end
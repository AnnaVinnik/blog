class PostPolicy < ApplicationPolicy
   attr_reader :user, :post

  def initialize(user, post)
    @user = user
    @post = post
  end

  def update?
    @user == @post.user or @user.admin?
  end

  def destroy
  	@user == @post.user or @user.admin?
  end
end
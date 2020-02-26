class PostPolicy < ApplicationPolicy
   attr_reader :user, :post

  def initialize(user, post)
    @user = user
    @post = post
  end

  def update?
    if @user == @post.user or user.admin?
    	true
    end
  end
end
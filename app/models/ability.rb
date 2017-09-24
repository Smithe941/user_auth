class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new(role: 'guest')
    case user.role
    when 'admin'
      can :manage, :all
    when 'user'
      can :create, :all
      can :read, :all
      can :manage, Post, user_id: user.id
      can :manage, Comment, user_id: user.id
    when 'banned'
      cannot :read, :all
    else
      can :read, :all
      can :create, User
    end
  end
end

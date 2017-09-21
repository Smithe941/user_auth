class Ability
  include CanCan::Ability

  def initialize(user)
        user ||= User.new
        if user.role == 'admin' # если пользователь иммет роль admin, то его действия не ограничены
        can :manage, :all #здесь указываем что может делать конкретно пользователь, в данном случае так как админ, разрешаем все
          else
            # ниже прописываем какие права имеют простые пользователи
            can :read, :all #просматривать разрешено всем
            can :create, :all #создавать всем
            can [:edit, :update, :destroy], Post, :user_id => user.id #редактирование разрешено только автору записи
            # cannot :destroy, Post #удаление записи запрещено
            # can [:edit, :update, :destroy], Comment, :user_id => user.id #удаление и комментария разрешены только автору комментария
            # can [:update, :destroy], Vote #разрешение переголосования
        end
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end

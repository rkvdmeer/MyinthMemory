class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. 
    #if user.nil? do
    #  user ||= User.new # guest user (not logged in)
    #end 
    
    can :read, [Pom, Tag]
    can :access, :rails_admin
    can :dashboard
    
    can :manage, [Pom, Tag, User] if user.has_role? :admin
      
    can :manage, [Pom, Tag] if user.has_role? :author
      
    #can :read, [Pom, Tag] if user.has_role? :reader

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

module UsersHelper

  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user, options = { size:50 })
    gravatar_image_tag(user.email.downcase, :alt => h(user.name),
    										:class => 'gravatar',
    										:gravatar => options)
  end
end

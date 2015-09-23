def process(user)
  return unless user.logged?
  return if user.is_admin?

  # side effects
end

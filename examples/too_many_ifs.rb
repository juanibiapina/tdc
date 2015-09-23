def process(user)
  if user.id_admin?
    admin_specific
  end

  user.camels.each do |c|
    camel.run
  end
end

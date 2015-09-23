def process_name(user)
  user.name.downcase!
end

def process_age(user)
  user.age %= 100
end

def process
  user = User.find(params[:id])
  process_name(user)
  process_age(user)
  user.save!
end

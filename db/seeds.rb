User::ROLES.each do |role|
  User.create(
    first_name: role,
    last_name: role,
    username: role,
    email: "#{role}@example.com",
    role: role,
    password: 123123123
  )
end

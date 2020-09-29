User.create!(nickname: "管理者",
  email: ENV["RCO_ADMIN_EMAIL"],
  password: ENV["RCO_ADMIN_PASSWORD"],
  password_confirmation: ENV["RCO_ADMIN_PASSWORD"],
  admin: true)
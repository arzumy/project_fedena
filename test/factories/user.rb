Factory.define :user do |user|
  user.username    "username"
  user.password    'password'
  user.first_name  'first name'
  user.last_name   'last name'
  user.email       'admin@fedena.com'
  user.role        'Admin'
end

Factory.define :admin_user, :parent => :user do |user|
  user.username "admin"
  user.password 'admin123'
  user.first_name 'Fedena'
  user.last_name 'Administrator'
end
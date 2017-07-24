  Admin.seed_once(:id) do |admin|
    admin.id = 1
    admin.email = "happy@flower.com"
    admin.password = "fujiike"
    admin.password_confirmation = "fujiike"
end

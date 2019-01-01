task :migrate_users do
  File.open("#{Rails.root}/lib/users.json", 'r') do |f|
    f.each_line do |l|
      p JSON.parse(l)
    end
  end
end

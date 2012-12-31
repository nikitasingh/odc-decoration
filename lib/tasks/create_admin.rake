 namespace :admin do
    desc "creating admin nikita"
    task :create_admin => :environment do
   	p 'nikita as admin'
    role=Role.find_by_name('admin')
    user=User.find_by_email('nikitaa_Singh@yahoo.co.in')
    user.role_id=role.id
    user.save!
    p 'Admin created as nikitaa_Singh'
    end
  end
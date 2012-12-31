describe 'create a admin'
  task :create_admin => :environment do
  	p 'nikita as admin'
    role=Role.find_by_name('admin')
    user=User.find_by_email('nikitaa_Singh@yahoo.co.in')
    user.role_id=role.role_id
    user.save!
    p 'Admin created as nikitaa_Singh'
  end
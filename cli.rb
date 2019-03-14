require_relative 'client'

if ARGV[0] == 'ls'
  my_projects = GITLAB_CLIENT.user_projects(GITLAB_CLIENT.user.id)
  my_projects.map do |project|
    puts "#{project.name}\t#{project.ssh_url_to_repo}"
  end
else
  puts "Arguments: \n\tnew [project-name]\t- create new project\n\tls \t\t\t- list my projects"
end

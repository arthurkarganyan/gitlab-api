require 'gitlab'

endpoint = "https://gitlab.com/api/v4"
Gitlab.endpoint = endpoint

token = File.read(".token").chomp
GITLAB_CLIENT = Gitlab.client(private_token: token)

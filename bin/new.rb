#!/usr/bin/env ruby

require_relative '../client'

name = ARGV[0] || fail("No name provided")
project = GITLAB_CLIENT.create_project name
puts project.ssh_url_to_repo

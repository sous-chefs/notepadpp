# frozen_string_literal: true

name 'notepadpp'

run_list 'notepadpp::default', 'minitest-handler::default'

named_run_list :default, 'notepadpp::default', 'minitest-handler::default'

cookbook 'notepadpp', path: '.'
cookbook 'minitest-handler',
         git: 'https://github.com/b-dean/minitest-handler-cookbook.git',
         branch: 'chef-13-fix'
cookbook 'chef_handler',
         git: 'https://github.com/chef-boneyard/chef_handler.git',
         branch: 'master'
cookbook 'windows',
         git: 'https://github.com/chef-boneyard/windows.git',
         branch: 'master'

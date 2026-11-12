# frozen_string_literal: true

name 'notepadpp'
default_source :supermarket
run_list 'test::default'
cookbook 'notepadpp', path: '.'
cookbook 'test', path: 'test/cookbooks/test'
named_run_list :default, 'test::default'
named_run_list :remove, 'test::remove'

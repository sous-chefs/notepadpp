# frozen_string_literal: true

control 'notepadpp-remove-01' do
  impact 1.0
  title 'The editor executable is removed'
  desc 'The resource uninstalls the package while preserving user-owned configuration.'

  describe file('C:/Program Files/Notepad++/notepad++.exe') do
    it { should_not exist }
  end
end

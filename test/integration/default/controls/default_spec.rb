# frozen_string_literal: true

control 'notepadpp-install-01' do
  impact 1.0
  title 'The editor and its uninstaller are installed'
  desc 'The architecture-specific package provides an executable and a native uninstaller.'

  %w(notepad++.exe uninstall.exe).each do |executable|
    describe file("C:/Program Files/Notepad++/#{executable}") do
      it { should exist }
    end
  end
end

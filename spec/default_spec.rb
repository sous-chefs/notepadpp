require 'spec_helper'

describe 'notepadpp::default' do
  describe '32-bit Windows' do
    let(:chef_run) do
      ChefSpec::ServerRunner.new do |node|
        node.automatic['kernel']['machine'] = 'i386'
      end.converge(described_recipe)
    end
    it 'downloads the Notepad++ package' do
      expect(chef_run).to install_windows_package('Notepad++ (32-bit x86)')
        .with(
          source: 'https://notepad-plus-plus.org/repository/7.x/7.5.6/npp.7.5.6.Installer.exe',
          checksum: '9ce95883c5821c3fa7b9319f4952d67ae077cdd79d5327dd7bed63542703cb82'
        )
    end
  end

  describe '64-bit Windows' do
    let(:chef_run) do
      ChefSpec::ServerRunner.new do |node|
        node.automatic['kernel']['machine'] = 'x86_64'
      end.converge(described_recipe)
    end
    it 'downloads the Notepad++ package' do
      expect(chef_run).to install_windows_package('Notepad++ (64-bit x64)')
        .with(
          source: 'https://notepad-plus-plus.org/repository/7.x/7.5.6/npp.7.5.6.Installer.x64.exe',
          checksum: 'adc915baa76e80c26d04f0ce1df6b592da809b3e14815f5a53369a7f3a993a83'
        )
    end
  end
end

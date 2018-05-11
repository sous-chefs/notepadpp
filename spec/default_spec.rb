describe 'notepadpp::default' do
  let(:chef_run) do
    ChefSpec::ServerRunner.new do |node|
    end.converge(described_recipe)
  end
  it 'downloads the Notepadd++ package' do
    expect(chef_run).to install_windows_package('Notepad++')
      .with(
        source: 'https://notepad-plus-plus.org/repository/7.x/7.5.6/npp.7.5.6.Installer.x64.exe',
        checksum: 'adc915baa76e80c26d04f0ce1df6b592da809b3e14815f5a53369a7f3a993a83'
      )
  end
end

describe 'notepadpp::default' do
  let(:chef_run) do
    ChefSpec::ServerRunner.new do |node|
    end.converge(described_recipe)
  end
  it 'downloads the Notepadd++ package' do
    expect(chef_run).to install_windows_package('Notepad++')
      .with(
        source: 'https://notepad-plus-plus.org/repository/7.x/7.0/npp.7.Installer.exe',
        checksum: '0155c4ab117d63ba5142fc1090debc07dc7953264f7202ef8d25014e2cf8668d'
      )
  end
end

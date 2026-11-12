# frozen_string_literal: true

require 'spec_helper'

describe 'notepadpp_install' do
  platform 'windows', '2019'
  step_into :notepadpp_install

  {
    'x86' => ['Notepad++ (32-bit x86)', 'Installer.exe', '8f6f564e628d35f20fdf0f38fa827f843c29b834c2e16f5e70091acac259df95'],
    'x64' => ['Notepad++ (64-bit x64)', 'Installer.x64.exe', 'ce3267f5c4e7e42f847e00f4b20234da6150647203033cdde34a69593efc3152'],
    'arm64' => ['Notepad++ (ARM 64-bit)', 'Installer.arm64.exe', 'e5ac20348d83693a2816f4ed8e4a3118d5759f258af07c8cec525d1e0cc026e9'],
  }.each do |arch, (package_name, installer, checksum)|
    context "installing #{arch}" do
      recipe do
        notepadpp_install 'editor' do
          architecture arch
        end
      end

      it 'installs the matching vendor package with a pinned checksum' do
        expect(chef_run).to install_windows_package(package_name).with(
          source: "https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.9.9.1/npp.8.9.9.1.#{installer}",
          checksum: checksum,
          installer_type: :nsis,
          options: '/S'
        )
      end
    end
  end

  context 'installing another version to an explicit path' do
    recipe do
      notepadpp_install 'editor' do
        architecture 'x64'
        version '8.9.9'
        source 'https://example.test/npp.exe'
        checksum 'a' * 64
        install_dir 'C:/Developer Tools/Notepad++'
      end
    end

    it 'passes the explicit source, version and final NSIS directory argument' do
      expect(chef_run).to install_windows_package('Notepad++ (64-bit x64)').with(
        source: 'https://example.test/npp.exe', version: '8.9.9', checksum: 'a' * 64,
        options: '/S /D=C:/Developer Tools/Notepad++'
      )
    end
  end

  context 'removing the editor' do
    recipe do
      notepadpp_install 'editor' do
        architecture 'x64'
        action :remove
      end
    end

    it 'uses the native uninstaller without downloading an installer' do
      expect(chef_run).to remove_windows_package('Notepad++ (64-bit x64)')
      expect(chef_run.windows_package('Notepad++ (64-bit x64)').source).to be_nil
    end
  end

  context 'using the node architecture' do
    automatic_attributes['kernel']['machine'] = 'aarch64'
    recipe { notepadpp_install 'editor' }

    it 'selects the ARM64 package without an explicit architecture property' do
      expect(chef_run).to install_windows_package('Notepad++ (ARM 64-bit)')
    end
  end

  context 'selecting another version without its checksum' do
    recipe do
      notepadpp_install 'editor' do
        version '8.9.9'
      end
    end

    it 'requires an explicit checksum instead of reusing a different installer digest' do
      expect { chef_run }.to raise_error(ArgumentError, /Set checksum/)
    end
  end
end

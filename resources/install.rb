# frozen_string_literal: true

provides :notepadpp_install
unified_mode true

property :version, String, default: '8.9.9.1'
property :architecture, String, equal_to: %w(x86 x64 arm64), default: lazy {
  case node['kernel']['machine'].downcase
  when 'x86_64', 'amd64', 'x64' then 'x64'
  when 'aarch64', 'arm64' then 'arm64'
  when /\Ai[3-6]86\z/, 'x86' then 'x86'
  else raise ArgumentError, 'Set architecture to x86, x64 or arm64 for this machine'
  end
}
property :package_name, String, default: lazy {
  {
    'x86' => 'Notepad++ (32-bit x86)',
    'x64' => 'Notepad++ (64-bit x64)',
    'arm64' => 'Notepad++ (ARM 64-bit)',
  }.fetch(architecture)
}
property :source, String, default: lazy {
  suffix = architecture == 'x86' ? '' : ".#{architecture}"
  "https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v#{version}/npp.#{version}.Installer#{suffix}.exe"
}
property :checksum, String, default: lazy {
  raise ArgumentError, 'Set checksum when selecting another Notepad++ version' unless version == '8.9.9.1'

  {
    'x86' => '8f6f564e628d35f20fdf0f38fa827f843c29b834c2e16f5e70091acac259df95',
    'x64' => 'ce3267f5c4e7e42f847e00f4b20234da6150647203033cdde34a69593efc3152',
    'arm64' => 'e5ac20348d83693a2816f4ed8e4a3118d5759f258af07c8cec525d1e0cc026e9',
  }.fetch(architecture)
}
property :install_dir, String

action :install do
  windows_package new_resource.package_name do
    source new_resource.source
    checksum new_resource.checksum
    version new_resource.version
    installer_type :nsis
    options new_resource.install_dir ? "/S /D=#{new_resource.install_dir}" : '/S'
    action :install
  end
end

action :remove do
  windows_package new_resource.package_name do
    installer_type :nsis
    options '/S'
    action :remove
  end
end

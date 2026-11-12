# notepadpp_install

Installs or removes an architecture-specific Notepad++ package using its native NSIS installer.

## Actions

| Action | Description |
| --- | --- |
| `:install` | Install the selected version (default). |
| `:remove` | Uninstall the editor; preserve user settings. |

## Properties

| Property | Type | Default | Description |
| --- | --- | --- | --- |
| `version` | String | `8.9.9.1` | Editor version. Set a checksum for other versions. |
| `architecture` | String | Detected from the node | `x86`, `x64` or `arm64`. |
| `package_name` | String | Vendor name for the architecture | Registry display name used for package detection. |
| `source` | String | Official GitHub installer | Installer URL for the version and architecture. |
| `checksum` | String | Pinned SHA256 for the default version | Expected installer checksum. |
| `install_dir` | String | Vendor default | Optional explicit destination. |

```ruby
notepadpp_install 'editor'
notepadpp_install 'remove editor' do
  action :remove
end
```

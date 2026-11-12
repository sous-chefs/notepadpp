# Migrating to version 4

Root recipes and node attributes have been removed. Chef 16 or newer is required.

Replace `include_recipe 'notepadpp'` with:

```ruby
notepadpp_install 'editor'
```

| Removed attribute | Resource property |
| --- | --- |
| `node['notepadpp']['url']` | `source` |
| `node['notepadpp']['checksum']` | `checksum` |
| `node['notepadpp']['package_name']` | `package_name` |
| `node['notepadpp']['install_dir']` | `install_dir` |

The default version changes from 7.5.6 to 8.9.9.1. x86 and x64 remain available; ARM64 is now supported.
For another version, set `version` and `checksum`, plus `source` when using another download location.

Legacy minitest-handler and archived windows cookbook dependencies are removed.
Native Chef Windows resources manage installation and removal.

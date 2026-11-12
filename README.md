# Notepad++ cookbook

Installs and removes Notepad++ on Windows through the `notepadpp_install` custom resource.

Requires Chef 16 or newer. The default editor version is 8.9.9.1; x86, x64 and ARM64 installers are available.

```ruby
notepadpp_install 'editor'
```

See [resource properties and actions](documentation/notepadpp_install.md), the [version 4 migration guide](migration.md), and [platform and maintainer guidance](AGENTS.md).

## Maintainers

This cookbook is maintained by the [Sous Chefs](https://sous-chefs.org/).

## Licence

Apache-2.0. Notepad++ is distributed separately under its own licence.

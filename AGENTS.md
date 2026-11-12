# Notepad++ cookbook guidance

## Owner decision

* Full custom resource migration confirmed on 12 November 2026.
* Release 4.0.0 removes root recipes and node attributes. Use `notepadpp_install` in wrapper cookbooks.
* Preserve x86 and x64 support. ARM64 is also available from the vendor.

## Product and installation

* Notepad++ is a Windows desktop editor, distributed as architecture-specific NSIS installers. No compilation or Linux package repository is needed.
* The pinned default is 8.9.9.1. SHA256 values come from the official GitHub release asset digests.
* For another version, set both `version` and `checksum`; `source` can select a mirror or alternative vendor installer.
* NSIS `/S` is case sensitive. `/D=...` must be last and must not quote the directory, including paths with spaces.
* Package display names differ across x86, x64 and ARM64; these are verified against the pinned installer source.
* Removal uses the native Windows package uninstaller. User settings belong to users and are preserved.

## Platform and verification

* Windows Server 2019 remains in the local Vagrant configuration; it is still within Microsoft extended support. Hosted Windows CI verifies the installed executable and its removal.
* Chef 16 or newer supplies native Windows resources, so the archived windows cookbook dependency is removed.
* Unit tests run on Ubuntu with Windows Fauxhai data, matching branch protection. Native integration stays on Windows.
* Full migration replaces the former dummy/minitest verifier contract: native InSpec profiles now verify installation and removal.
* Kitchen exec uses the installed Cinc Workstation client and skips a second installation. Clear inherited PSModulePath before launching Kitchen from pwsh.
* A macOS ARM host cannot run the existing x64 Windows Vagrant box; use native Windows CI for integration evidence.

## Sources

* [Official release 8.9.9.1](https://github.com/notepad-plus-plus/notepad-plus-plus/releases/tag/v8.9.9.1)
* [Supported systems](https://github.com/notepad-plus-plus/notepad-plus-plus/blob/master/SUPPORTED_SYSTEM.md)
* [Installer display names](https://github.com/notepad-plus-plus/notepad-plus-plus/blob/v8.9.9.1/PowerEditor/installer/nsisInclude/tools.nsh)
* [Installer command-line options](https://github.com/notepad-plus-plus/npp-usermanual/blob/master/content/docs/command-prompt.md)
* [Windows Server lifecycle](https://endoflife.date/windows-server)

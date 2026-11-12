# CHANGELOG for notepadpp

This file is used to list changes made in each version of notepadpp.

## [5.0.0](https://github.com/sous-chefs/notepadpp/compare/v4.0.0...v5.0.0) (2026-11-12)


### ⚠ BREAKING CHANGES

* replace Notepad++ recipes with resources ([#44](https://github.com/sous-chefs/notepadpp/issues/44))

### Features

* normalize scaffolding across all windowschefcookbooks repos ([0f35b5d](https://github.com/sous-chefs/notepadpp/commit/0f35b5d735ec94afd2a46f3686b3a86073523b31))
* replace Notepad++ recipes with resources ([#44](https://github.com/sous-chefs/notepadpp/issues/44)) ([c7e0498](https://github.com/sous-chefs/notepadpp/commit/c7e0498904215068677203a5f23f9eb8c5398727))
* update notepad++ version, install package matching cpu type ([c18150d](https://github.com/sous-chefs/notepadpp/commit/c18150d02a2827d52b3591c4b658b5879200d5c0))


### Bug Fixes

* architecture specific package names in tests ([0cc8305](https://github.com/sous-chefs/notepadpp/commit/0cc83058782e829c27c064fabc69a57a75ecb9f6))
* **ci:** Update workflows to use release pipeline ([#25](https://github.com/sous-chefs/notepadpp/issues/25)) ([ffa6b5c](https://github.com/sous-chefs/notepadpp/commit/ffa6b5cce36f6ebe844a73d0ce0ecbe6780a598c))
* migrate to Policyfile ([#36](https://github.com/sous-chefs/notepadpp/issues/36)) ([8106d0f](https://github.com/sous-chefs/notepadpp/commit/8106d0f69866424f1e51430687762724a62e318b))
* output encoding 'handle is invalid' error in build script ([0e02f43](https://github.com/sous-chefs/notepadpp/commit/0e02f439380d29f1f3111ed6c387fb703135f8e1))
* output encoding 'handle is invalid' error in build script ([1f74595](https://github.com/sous-chefs/notepadpp/commit/1f745958d53eb71fdfab43fd03a7232d0c329b8d))
* use fork of 'minitest-handler' compatible with chef 13 ([175c5f4](https://github.com/sous-chefs/notepadpp/commit/175c5f4137548a82a854189109b0901504e45476))
* use node.automatic not node.override for kernel attributes ([480cef9](https://github.com/sous-chefs/notepadpp/commit/480cef9c5c949ba7d482836f09ca9bebcf02fc42))

## [4.0.0](https://github.com/sous-chefs/notepadpp/compare/v3.0.3...v4.0.0) (2026-11-12)


### ⚠ BREAKING CHANGES

* replace Notepad++ recipes with resources ([#44](https://github.com/sous-chefs/notepadpp/issues/44))

### Features

* normalize scaffolding across all windowschefcookbooks repos ([0f35b5d](https://github.com/sous-chefs/notepadpp/commit/0f35b5d735ec94afd2a46f3686b3a86073523b31))
* replace Notepad++ recipes with resources ([#44](https://github.com/sous-chefs/notepadpp/issues/44)) ([c7e0498](https://github.com/sous-chefs/notepadpp/commit/c7e0498904215068677203a5f23f9eb8c5398727))
* update notepad++ version, install package matching cpu type ([c18150d](https://github.com/sous-chefs/notepadpp/commit/c18150d02a2827d52b3591c4b658b5879200d5c0))


### Bug Fixes

* architecture specific package names in tests ([0cc8305](https://github.com/sous-chefs/notepadpp/commit/0cc83058782e829c27c064fabc69a57a75ecb9f6))
* **ci:** Update workflows to use release pipeline ([#25](https://github.com/sous-chefs/notepadpp/issues/25)) ([ffa6b5c](https://github.com/sous-chefs/notepadpp/commit/ffa6b5cce36f6ebe844a73d0ce0ecbe6780a598c))
* migrate to Policyfile ([#36](https://github.com/sous-chefs/notepadpp/issues/36)) ([8106d0f](https://github.com/sous-chefs/notepadpp/commit/8106d0f69866424f1e51430687762724a62e318b))
* output encoding 'handle is invalid' error in build script ([0e02f43](https://github.com/sous-chefs/notepadpp/commit/0e02f439380d29f1f3111ed6c387fb703135f8e1))
* output encoding 'handle is invalid' error in build script ([1f74595](https://github.com/sous-chefs/notepadpp/commit/1f745958d53eb71fdfab43fd03a7232d0c329b8d))
* use fork of 'minitest-handler' compatible with chef 13 ([175c5f4](https://github.com/sous-chefs/notepadpp/commit/175c5f4137548a82a854189109b0901504e45476))
* use node.automatic not node.override for kernel attributes ([480cef9](https://github.com/sous-chefs/notepadpp/commit/480cef9c5c949ba7d482836f09ca9bebcf02fc42))

## [3.0.3](https://github.com/sous-chefs/notepadpp/compare/3.0.2...v3.0.3) (2025-10-15)


### Bug Fixes

* **ci:** Update workflows to use release pipeline ([#25](https://github.com/sous-chefs/notepadpp/issues/25)) ([ffa6b5c](https://github.com/sous-chefs/notepadpp/commit/ffa6b5cce36f6ebe844a73d0ce0ecbe6780a598c))

## 3.0.0 - *2024-05-06*

* Standardise files with files in sous-chefs/repo-management
* Add integration tests
* Remove rakefile
* Remove .rspec
* Remove .appveyor.yml
* Fix Rpsec tests
**BREAKING CHANGE** Require Chef 15.3 or later

## 2.0.4 - *2023-02-14*

* Standardise files with files in sous-chefs/repo-management

## 2.0.3 - *2022-02-08*

* Remove delivery folder

## 2.0.2 - *2021-08-30*

* Standardise files with files in sous-chefs/repo-management

## 2.0.1 - *2021-06-01*

* Various Cookstyle fixes

## 2.0.0

* Support Chef 13, drop support for Chef 12.
* Upgrade to Notepad++ 7.5.6.
* Use install package which matches CPU architecture.
* Standardize testing environment across repos.  (AppVeyor, Kitchen, Rake, etc.)
* Upgrade development dependencies.

## 1.0.0

* Initial release to Chef SuperMarket

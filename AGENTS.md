# AGENTS.md

## Cookbook Scope

The `notepadpp` cookbook installs Notepad++ on Windows using `windows_package`.

## Policyfile Migration Notes

* Dependency resolution is Policyfile-first. Do not reintroduce `Berksfile` or `berks install`.
* The integration suite uses `minitest-handler`; there are no InSpec profiles in this cookbook.
* `kitchen.exec.yml` intentionally uses the `dummy` verifier so the Windows exec run does not
  inherit an InSpec verifier with no profile.
* `windows` is resolved from the sous-chefs GitHub repository to avoid Supermarket dependency
  resolution during CI.

# aur-attune-bin
Arch Linux packaging metadata for Attune CLI releases

Release automation opens pull requests for `PKGBUILD` and `.SRCINFO` using the
target repository token. Merge only after **Package validation** succeeds.

Run `bash scripts/validate.sh` locally with Docker available. It checks shell
syntax and compares `.SRCINFO` with `makepkg --printsrcinfo` inside a pinned,
disposable Arch container. The package script executes without network access,
credentials, or write access to the checkout. It does not install the package or
download release binaries.

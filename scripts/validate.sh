#!/usr/bin/env bash
set -euo pipefail

bash -n PKGBUILD
# Evaluate PKGBUILD only in a disposable container, without network, credentials,
# or a writable checkout. Compare against makepkg's canonical metadata output.
tar -cf - PKGBUILD .SRCINFO | docker run --rm --interactive --network none \
  --entrypoint /bin/bash \
  archlinux:base-devel@sha256:fa2d4ce3310ddd90a4208e5168be8ad367da5129af1245f38fd2d803bcbe3239 \
  -euc '
    useradd --create-home validator
    mkdir /tmp/package
    tar -xf - -C /tmp/package
    chown -R validator:validator /tmp/package
    cd /tmp/package
    runuser -u validator -- makepkg --printsrcinfo > /tmp/actual-srcinfo
    diff -u .SRCINFO /tmp/actual-srcinfo
  '

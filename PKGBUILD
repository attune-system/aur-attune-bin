# Maintained by the release workflow. Do not publish this template to AUR.
pkgname=attune-bin
pkgver=0.7.3
pkgrel=1
pkgdesc='Attune command-line interface and MCP server'
arch=('x86_64' 'aarch64')
url='https://github.com/attune-system/attune'
license=('Apache-2.0')
provides=('attune')
conflicts=('attune')
source_x86_64=("attune_${pkgver}_linux_amd64.tar.gz::https://github.com/attune-system/attune/releases/download/v${pkgver}/attune_${pkgver}_linux_amd64.tar.gz")
sha256sums_x86_64=('7a8141a6f0ce1423ce1562316f05e55a2be1de9ac4250803635229ca7b223ee7')
source_aarch64=("attune_${pkgver}_linux_arm64.tar.gz::https://github.com/attune-system/attune/releases/download/v${pkgver}/attune_${pkgver}_linux_arm64.tar.gz")
sha256sums_aarch64=('c16201404a59a733796dcfdb5e1aae1ffd4c815731679c08107a8e9791d63f28')

package() {
  install -Dm755 "$srcdir/attune" "$pkgdir/usr/bin/attune"
  install -Dm755 "$srcdir/attune-mcp" "$pkgdir/usr/bin/attune-mcp"
  install -Dm644 "$srcdir/LICENSE" "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}

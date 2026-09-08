# Maintained by the release workflow. Do not publish this template to AUR.
pkgname=attune-bin
pkgver=0.5.3
pkgrel=1
pkgdesc='Attune command-line interface and MCP server'
arch=('x86_64' 'aarch64')
url='https://github.com/attune-system/attune'
license=('Apache-2.0')
provides=('attune')
conflicts=('attune')
source_x86_64=("attune_${pkgver}_linux_amd64.tar.gz::https://github.com/attune-system/attune/releases/download/v${pkgver}/attune_${pkgver}_linux_amd64.tar.gz")
sha256sums_x86_64=('c63ee06ef8a7d618f3b2eac02459b49161819934b61f8a114c495b51dc4d1ce8')
source_aarch64=("attune_${pkgver}_linux_arm64.tar.gz::https://github.com/attune-system/attune/releases/download/v${pkgver}/attune_${pkgver}_linux_arm64.tar.gz")
sha256sums_aarch64=('7e354066c2a2d9b0b4e95423947eba3e31041c04eaba1ea8c3f2124b78daefb7')

package() {
  install -Dm755 "$srcdir/attune" "$pkgdir/usr/bin/attune"
  install -Dm755 "$srcdir/attune-mcp" "$pkgdir/usr/bin/attune-mcp"
  install -Dm644 "$srcdir/LICENSE" "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}

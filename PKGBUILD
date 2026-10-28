# Maintained by the release workflow. Do not publish this template to AUR.
pkgname=attune-bin
pkgver=0.10.0
pkgrel=1
pkgdesc='Attune command-line interface and MCP server'
arch=('x86_64' 'aarch64')
url='https://github.com/attune-system/attune'
license=('Apache-2.0')
provides=('attune')
conflicts=('attune')
source_x86_64=("attune_${pkgver}_linux_amd64.tar.gz::https://github.com/attune-system/attune/releases/download/v${pkgver}/attune_${pkgver}_linux_amd64.tar.gz")
sha256sums_x86_64=('6b6a437edb367db8554cccc229ca9ad9a1bfb8580f371771c82bd0f982f89b2c')
source_aarch64=("attune_${pkgver}_linux_arm64.tar.gz::https://github.com/attune-system/attune/releases/download/v${pkgver}/attune_${pkgver}_linux_arm64.tar.gz")
sha256sums_aarch64=('8ffcb1b94de0ae3725d9e8e347c91a84c88b5ddefd9135552c6b19e173e99cc8')

package() {
  install -Dm755 "$srcdir/attune" "$pkgdir/usr/bin/attune"
  install -Dm755 "$srcdir/attune-mcp" "$pkgdir/usr/bin/attune-mcp"
  install -Dm644 "$srcdir/LICENSE" "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}

# Maintained by the release workflow. Do not publish this template to AUR.
pkgname=attune-bin
pkgver=0.8.0
pkgrel=1
pkgdesc='Attune command-line interface and MCP server'
arch=('x86_64' 'aarch64')
url='https://github.com/attune-system/attune'
license=('Apache-2.0')
provides=('attune')
conflicts=('attune')
source_x86_64=("attune_${pkgver}_linux_amd64.tar.gz::https://github.com/attune-system/attune/releases/download/v${pkgver}/attune_${pkgver}_linux_amd64.tar.gz")
sha256sums_x86_64=('7ae20581fb7b3c03548a52c7e8ccf7d9992616cba43d963e7981c2cc3e9dfea7')
source_aarch64=("attune_${pkgver}_linux_arm64.tar.gz::https://github.com/attune-system/attune/releases/download/v${pkgver}/attune_${pkgver}_linux_arm64.tar.gz")
sha256sums_aarch64=('cc0e90e6421d8d82a9b9e37c7e7b6ef0ef7056aa978aa44f42782ce23cf3b9d7')

package() {
  install -Dm755 "$srcdir/attune" "$pkgdir/usr/bin/attune"
  install -Dm755 "$srcdir/attune-mcp" "$pkgdir/usr/bin/attune-mcp"
  install -Dm644 "$srcdir/LICENSE" "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}

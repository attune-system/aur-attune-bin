# Maintained by the release workflow. Do not publish this template to AUR.
pkgname=attune-bin
pkgver=0.7.1
pkgrel=1
pkgdesc='Attune command-line interface and MCP server'
arch=('x86_64' 'aarch64')
url='https://github.com/attune-system/attune'
license=('Apache-2.0')
provides=('attune')
conflicts=('attune')
source_x86_64=("attune_${pkgver}_linux_amd64.tar.gz::https://github.com/attune-system/attune/releases/download/v${pkgver}/attune_${pkgver}_linux_amd64.tar.gz")
sha256sums_x86_64=('cf49ff60700991cbc5145bbd591a2130b8a4ccee7674575a84daca465616d74c')
source_aarch64=("attune_${pkgver}_linux_arm64.tar.gz::https://github.com/attune-system/attune/releases/download/v${pkgver}/attune_${pkgver}_linux_arm64.tar.gz")
sha256sums_aarch64=('8505c1e23474ad9c45df5450def9608dcb87bc361eae5fa764e5d42f7a40384f')

package() {
  install -Dm755 "$srcdir/attune" "$pkgdir/usr/bin/attune"
  install -Dm755 "$srcdir/attune-mcp" "$pkgdir/usr/bin/attune-mcp"
  install -Dm644 "$srcdir/LICENSE" "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}

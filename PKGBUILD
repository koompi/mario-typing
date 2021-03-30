# Maintainer: Pichponereay NGOR <isaacjacksonreay at gmail dot com>

pkgname=mario-typing
pkgver=1.1
pkgrel=2
pkgdesc="Mario Typing with wine"
arch=("any")
license=("MIT")
depends=("zstd" "tar" "wine" "dosbox")
source=(
  "${pkgname}.sh"
  "${pkgname}.desktop"
  "${pkgname}.png"
  "${pkgname}.tar.zst"
)
sha256sums=(
  "aba1b300f739f52db813c27e0814fbf65d3811b2d13ee431ff7fdc927ca93205"
  "0698f3ea7aaf126e6f2b40f9d188d29bd33fa7cf90d7f99d15f4274d433463d3"
  "8889b6f6968a3c0659043da8a854396ca6e90171b7a0bdea6151f631ac05ae58"
  "be70eefd439c3024414b348970deb790487c6b9ca4d026f0e750ff057b8883a0"
)

build(){
  cd "${srcdir}"
  tar --zstd -xf "${pkgname}.tar.zst" -C ./
}

package() {
  mkdir -p "${pkgdir}"/opt/Mario-Typing
  mkdir -p "${pkgdir}"/usr/bin/
  mkdir -p "${pkgdir}"/usr/share/applications
  mkdir -p "${pkgdir}"/usr/share/icons/Mario-Typing
  cp -r "${srcdir}"/mario-typing/* "${pkgdir}"/opt/Mario-Typing
  cp "${pkgname}".desktop "${pkgdir}"/usr/share/applications
  cp "${srcdir}"/"${pkgname}.png" "${pkgdir}"/usr/share/icons/Mario-Typing
  cp "${srcdir}"/${pkgname}.sh "${pkgdir}/usr/bin/"
  chmod +x "${pkgdir}"/usr/bin/${pkgname}.sh
}

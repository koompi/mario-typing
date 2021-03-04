# Maintainer: Pichponereay NGOR <isaacjacksonreay at gmail dot com>

pkgname=mario-typing
pkgver=1.0
pkgrel=1
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
  "241df2a7bb69f0544362aa4f61c46166b1965dcf7cd90d8df3ea87d2b5a45891"
  "0698f3ea7aaf126e6f2b40f9d188d29bd33fa7cf90d7f99d15f4274d433463d3"
  "8889b6f6968a3c0659043da8a854396ca6e90171b7a0bdea6151f631ac05ae58"
  "d5459725b9a74bd12deb75b4d83a9334603475f3e6063162c6a2265f355c371b"
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

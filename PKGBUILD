# Maintainer: Pichponereay NGOR <isaacjacksonreay at gmail dot com>

pkgname=mario-typing
pkgver=1.1
pkgrel=3
pkgdesc="Mario Typing with wine"
arch=("any")
license=("MIT")
depends=("wine" "dosbox")
source=(
    "${pkgname}"
    "${pkgname}.desktop"
    "${pkgname}.png"
    "${pkgname}.tar.gz"
)
sha256sums=(
    "c126c32df1e1326302e9e5d7be2bd8a7be7c4680addabc1551e94ba599031099"
    "4d1338c3dbbec16045742a999a98913b57b77a82b3bf6f9974ff31655ef36db9"
    "8889b6f6968a3c0659043da8a854396ca6e90171b7a0bdea6151f631ac05ae58"
    "28797e5b70d9cba43ede2351b84485fa8db929b22ae4bc2d00e63ad2472c5194"
)

build(){
    cd "${srcdir}"
    tar -xzvpf "${pkgname}.tar.gz" -C ./
}

package() {
    install -d "${pkgdir}"/opt/Mario-Typing
    cp -r "${srcdir}"/Mario-Typing/* "${pkgdir}"/opt/Mario-Typing
    install -D "${srcdir}"/"${pkgname}".desktop "${pkgdir}"/usr/share/applications/"${pkgname}".desktop
    install -D "${srcdir}"/"${pkgname}.png" "${pkgdir}"/usr/share/icons/Mario-Typing/"${pkgname}.png"
    install -D "${srcdir}"/"${pkgname}" "${pkgdir}/usr/bin/${pkgname}"
}

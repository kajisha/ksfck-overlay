EAPI=5
inherit font

DESCRIPTION="Source Han Code JP"
HOMEPAGE="https://github.com/adobe-fonts/source-han-code-jp/"
SRC_URI="https://github.com/adobe-fonts/${PN}/archive/${PV}R.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="alpha amd64 arm ~arm64 ia64 ppc ppc64 ~sh sparc x86 ~x86-fbsd ~x64-macos"

S=${WORKDIR}
FONT_SUFFIX="otf"
RESTRICT="binchecks strip"

src_install() {
	FONT_S="${S}/${PN}-${PV}R/OTF/SourceHanCodeJP/" font_src_install
}

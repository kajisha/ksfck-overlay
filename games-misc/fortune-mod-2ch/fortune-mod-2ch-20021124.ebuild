EAPI=5
DESCRIPTION="Fortune database of unix board of 2ch quotes"
HOMEPAGE="http://wids.net/lab/"
MY_PN="fortune-2ch"
MY_P="${MY_PN}-${PV}"
SRC_URI="http://wids.net/archive/test/fortune-2ch.p2.tgz"

LICENSE=""
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k ~mips ppc ppc64 s390 sh sparc x86 ~x86-fbsd"
IUSE=""

RDEPEND="games-misc/fortune-mod"
DEPEND="dev-lang/perl
		${RDEPEND}"

S="${WORKDIR}/fortune-2ch"

src_install() {
	dodoc About
	insinto /usr/share/fortune
	doins 2ch-fortune 2ch-fortune.dat
}

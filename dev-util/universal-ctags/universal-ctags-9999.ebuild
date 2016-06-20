EAPI=5
inherit git-r3

DESCRIPTION="A maintained ctags implementation https://ctags.io"
HOMEPAGE="https://ctags.io"
EGIT_REPO_URI="git://github.com/universal-ctags/ctags.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="app-eselect/eselect-ctags"

src_configure() {
	./autogen.sh
	econf \
		--enable-readlib \
		--enable-tmpdir=/tmp
}

src_install() {
	emake prefix="${D}"/usr mandir="${D}"/usr/share/man install
}

pkg_postinst() {
	eselect ctags update
	elog "You can set the version to be started by /usr/bin/ctags through"
	elog "the ctags eselect module. \"man ctags.eselect\" for details."
}

pkg_postrm() {
	eselect ctags update
}

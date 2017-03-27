EAPI=5

inherit eutils git-2

DESCRIPTION="Management suite for dotfiles"
HOMEPAGE="https://github.com/thoughtbot/rcm"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86 ~amd64"

EGIT_REPO_URI="https://github.com/thoughtbot/rcm.git"

DEPEND="dev-ruby/mustache"

src_prepare() {
    maint/autocontrib
    ./autogen.sh
}

src_configure() {
    econf
}

src_install() {
    emake DESTDIR="${D}" install
}

# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
PYTHON_COMPAT=( python3_{8..10} )

DESCRIPTION="Password tools for generating, checking and rating passwords"
HOMEPAGE="https://ari-web.xyz/gh/pwdtools"
SRC_URI="https://github.com/TruncatedDinosour/pwdtools/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="ArAr2"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
dev-python/password-strength
dev-python/pyfzf
dev-python/pyperclip
dev-python/pandas
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
    emake DESTDIR="${D}/" PREFIX="${EPREFIX}/usr" install || die 'Installing failed'
}


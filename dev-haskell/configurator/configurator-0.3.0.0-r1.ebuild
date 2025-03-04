# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.4.2.9999
#hackport: flags: -developer

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Configuration management"
HOMEPAGE="https://github.com/bos/configurator"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm64 ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.10.0.2:=[profile?]
	dev-haskell/hashable:=[profile?]
	>=dev-haskell/text-0.11.1.0:=[profile?]
	dev-haskell/unix-compat:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( dev-haskell/hunit
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-developer
}

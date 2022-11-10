Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4572C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 09:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=idxCOvOa7eYOxvqBjU4faBtw8QZfFbJ7yVB71xBszd8=; b=xzt
	6GhJIvlntNHBIYsvau8o00mz3xNg7lIrgbFiKahIB38588KU0CJBTG1LrWhzekoRHwAqCeO0Hl9Fh
	T3C7FTpv10auFgcU5a1jZnV9ziFgfLuwCyHvuDcj3JB23/0JNPGHkIATfE8cKuZ3PJaPZaR0+aGui
	b5bFrvurW2gvA9lOObC7DaEtdiS/xU4twAHeXsPw5Hwi27586EUxpuqaYF7y8tMBihJQuH7B6/rgz
	+56EFpNzq0XQNLC6AJBxWEtWcmhjYKyZAXzBX7UMJeYWjm1X0PeczYvK0LXYCd+n+BZo2tNFfyuUX
	9587USWvACtE8u6cg9UY3ASELci2k7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot412-004iT5-4o; Thu, 10 Nov 2022 09:38:32 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot40z-004iAa-8I
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 09:38:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A57BAB82130;
	Thu, 10 Nov 2022 09:38:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2AC4C433D6;
	Thu, 10 Nov 2022 09:38:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668073106;
	bh=AR7Fj20NXrySZvgxQlRDF3rgr/yG548iWXK7mwMhZLk=;
	h=Date:From:To:Cc:Subject:From;
	b=aZdut7A9c6bxixUQRbjs65WSnd64m4vMumtLFeLRYiMrikDv1G1ISiZ3QxzD8pFTu
	 aZfZdtnu1B457wwwXmR4eFiVkBt+cN1TplJF3fA+2NL/Dt6bCjv1JsOBEuZvXmEhkE
	 NFLeAzp1npgelhka3KqbpvsN7i0fV/MGZTej0dLrdJBZJbChWVI67hh3VotRjSvAxW
	 hFofm9DKWQk2GHliAiR/uosYVdjb3nM5sJ3L/PO0K5Ftz2ypxkeubJoPYmPT8IVeFa
	 4r6jELDmkJsujASoYs8tbC29WTbPOqtu44S8fLRo98rnncjl+TBR7PfJ003p1UA18a
	 2DKQW7+386OPQ==
Date: Thu, 10 Nov 2022 15:08:22 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Linux Phy <linux-phy@lists.infradead.org>
Subject: [GIT PULL]: Generic phy fixes for v6.1
Message-ID: <Y2zGjvUEs1402DEw@matsya>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_013829_608676_AAEB4B0C 
X-CRM114-Status: GOOD (  12.09  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6168348342742341669=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6168348342742341669==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mxTQoUQiUzCA1AIn"
Content-Disposition: inline


--mxTQoUQiUzCA1AIn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Linus,

Please pull to receive the Generic phy subsystem fixes for v6.1. This
contains bunch of odd driver fixes

The following changes since commit 9abf2313adc1ca1b6180c508c25f22f9395cc780:

  Linux 6.1-rc1 (2022-10-16 15:36:24 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-=
fixes-6.1

for you to fetch changes up to 819b885cd886c193782891c4f51bbcab3de119a4:

  phy: ralink: mt7621-pci: add sentinel to quirks table (2022-11-05 13:01:2=
5 +0530)

----------------------------------------------------------------
phy: fixes for 6.1

- Update Kishon's email
- Fixes in drivers:
  - stms32 error code fix in driver probe
  - tegra: fix for checking valid pointer
  - qcom_qmp: null deref fix
  - sunplus: error check fix
  - ralink: add missing sentinel to table

----------------------------------------------------------------
Dan Carpenter (1):
      phy: stm32: fix an error code in probe

Johan Hovold (1):
      phy: qcom-qmp-combo: fix NULL-deref on runtime resume

John Thomson (1):
      phy: ralink: mt7621-pci: add sentinel to quirks table

Jon Hunter (1):
      phy: tegra: xusb: Fix crash during pad power on/down

Kishon Vijay Abraham I (1):
      MAINTAINERS: Update Kishon's email address in GENERIC PHY FRAMEWORK

Peng Wu (1):
      phy: sunplus: Fix an IS_ERR() vs NULL bug in sp_usb_phy_probe

 MAINTAINERS                               |  2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c |  2 +-
 drivers/phy/ralink/phy-mt7621-pci.c       |  3 ++-
 drivers/phy/st/phy-stm32-usbphyc.c        |  2 ++
 drivers/phy/sunplus/phy-sunplus-usb2.c    |  4 ++--
 drivers/phy/tegra/xusb.c                  | 20 ++++++++++++++++----
 6 files changed, 24 insertions(+), 9 deletions(-)

Thanks
--=20
~Vinod

--mxTQoUQiUzCA1AIn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE+vs47OPLdNbVcHzyfBQHDyUjg0cFAmNsxo0ACgkQfBQHDyUj
g0dx6w/9HIS1MJ8BFiuKzcP7pRj6bEN0qXKBHGlDbFoa5BWOmUp33tkDMg11zey6
5Rn4ePX4Oj+zmzoDDiZ6GkiYAiNRsSGBN+igihxtrUZ/BeSCxEfSnXmAgYBCGnTY
beUlpBwkiOZjv+b94I7X8p70Zcs9QdUTQvbynn9a2KbCR9vcMF5H0y7E28uHqzip
wGeLSH1wcahi5YTBiorWa6HqbJI55UHwq3GBKBWrps2uzZp6zrc6aZC1qGiu7FlZ
IK2nTfrN8/hrBNlsAcga9wx4b4ug2kJSeAh6nzIZgaq0WxduwZY6waCtZt0+F4fJ
UlBGcz1CUMgaLKiYmPrEJNHcqZOtHmvQy8NZlkzB5FgKcrCUGhR//LXI8VlHaQKn
jZg6oaXR6dPQcMgYfQXm6izWoBNG8SSRrapXZmfRGBKNDQypGjEmeuNSLhyNMNyJ
IOJ/6zeqlZEGF4DBwKOmWwJpS8oHszZnBQGdUMy4FfejoKYj7IqF3ZR9Utltipuw
FpJw37i07RoMVZCZEkmhY95Uqk6SW7UFJJiXDtExoOpRx1RMbl03nHQUyUPoOltt
IaVSJ5vEaZaYLeL6JvfI0KxTYB09IiopVzdemHxfZpTJu7vid9wIBa/hUyw9PG+I
6eck/7N1nr8UpN9/o+NVWT2OaUaQ7Am715Hw4Fs+t8VCwvNo1Co=
=j+qG
-----END PGP SIGNATURE-----

--mxTQoUQiUzCA1AIn--


--===============6168348342742341669==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6168348342742341669==--


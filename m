Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96003C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 21 Apr 2022 12:40:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fvtJ39Zot65+d2l0mw8ozzMHgAzyC6NisCz99nAPca0=; b=x4S
	y6tEGlV/Lf7K309Xx5IV+kEo71Iwz2mGZrCQCbS3+MkNw7amuYzXuitz+4w+msqR//3ri2T011yzm
	wstdNWlNfVp8zbiqN612ihpT6JHGhQcW/NFrK9Sx+fIQ8+FsQg95EUyItZXQ+0NoBd48Mg+S7Q4Bw
	7Q26MrWGwzk1KD8DkdHrkyfr8rRCxh4BYCXpFQOwMez7ayDT6qbmRfm5Pzpl0oUCQPfCIT6hAxjyt
	IHecoBQ2h2uzLXWfyxdrcg9euf494ud7I14TaH7Xb3nnw8k0lcRuMQoNgHcQHhtvL31WbGSJlMtvp
	6r3IoqAwx1ylKQHgCZ9EGxNh7Mqx4Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhW6Z-00DQk0-17; Thu, 21 Apr 2022 12:40:15 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhW6V-00DQjG-0K
 for linux-phy@lists.infradead.org; Thu, 21 Apr 2022 12:40:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 0A74EB8245F;
 Thu, 21 Apr 2022 12:40:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43012C385A5;
 Thu, 21 Apr 2022 12:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650544807;
 bh=N+SIwZ0UuUxQQB5H6i3Z3OO3AfrOpLCRcQOSKUT+BbE=;
 h=Date:From:To:Cc:Subject:From;
 b=cNxS2F0N2AHCBsL9qB9upPfD+5Jb9RemaEfcfcCx/ACYP1voLXqhLblk1/eSmuEaj
 62ELB4N19iOzBRKDEnWAGYmiEpokYU8cvtyQ0iYTJ0j462ALu7Gu7kJqKMUwZBzeM7
 An46Br6/p3gZXfT/sIrwb3Sgf5cVoMrJSRJRYGDyWdCa8dlsBPbX8MfL0QYDNyxKqA
 EX0u/m4zhOw4dIW5CeQhtw0OGvDV3LXvUfKMD9BtG3SINV0pMtD8BZwLo/CW1s9nIe
 29/CxmvXnx5TuMgYJW9f1aRbCfg1m2QeLZ/yjjTKAGyxpUvuVHKewUgMIEERSZc5DQ
 YXxu2k5/8Wk8w==
Date: Thu, 21 Apr 2022 18:10:02 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Linux Phy <linux-phy@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
Subject: [GIT PULL]: Generic phy fixes for v5.18
Message-ID: <YmFQonkAlGNUx+OY@matsya>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_054011_376736_64B332A2 
X-CRM114-Status: GOOD (  11.70  )
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
Content-Type: multipart/mixed; boundary="===============8113406465737877151=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8113406465737877151==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="9QoCqM/YrPWkvT1q"
Content-Disposition: inline


--9QoCqM/YrPWkvT1q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Greg,

Please consider pull to receive the generic phy fixes for v5.18 which
contains bunch of driver fixes for error patch handling, missing
device/of_node_put etc.

The following changes since commit 3123109284176b1532874591f7c81f3837bbdc17:

  Linux 5.18-rc1 (2022-04-03 14:08:21 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-=
fixes-5.18

for you to fetch changes up to 2c8045d48dee703ad8eab2be7d6547765a89c069:

  phy: amlogic: fix error path in phy_g12a_usb3_pcie_probe() (2022-04-20 14=
:42:44 +0530)

----------------------------------------------------------------
phy: fixes for 5.18

Fixes for bunch of drivers:
 - TI fixes for runtime disable, missing of_node_put and error handling
 - Samsung fixes for device_put and of_node_put
 - Amlogic error path handling

----------------------------------------------------------------
Christophe JAILLET (1):
      phy: ti: tusb1210: Fix an error handling path in tusb1210_probe()

Hans de Goede (1):
      phy: ti: tusb1210: Make tusb1210_chg_det_states static

Heiner Kallweit (1):
      phy: amlogic: fix error path in phy_g12a_usb3_pcie_probe()

Krzysztof Kozlowski (1):
      phy: samsung: exynos5250-sata: fix missing device put in probe error =
paths

Lv Ruyi (1):
      phy: ti: Fix missing of_node_put in ti_pipe3_get_sysctrl()

Miaoqian Lin (4):
      phy: samsung: Fix missing of_node_put() in exynos_sata_phy_probe
      phy: ti: omap-usb2: Fix error handling in omap_usb2_enable_clocks
      phy: mapphone-mdm6600: Fix PM error handling in phy_mdm6600_probe
      phy: ti: Add missing pm_runtime_disable() in serdes_am654_probe

 drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c | 20 ++++++++++++--------
 drivers/phy/motorola/phy-mapphone-mdm6600.c    |  3 ++-
 drivers/phy/samsung/phy-exynos5250-sata.c      | 21 +++++++++++++++------
 drivers/phy/ti/phy-am654-serdes.c              |  2 +-
 drivers/phy/ti/phy-omap-usb2.c                 |  2 +-
 drivers/phy/ti/phy-ti-pipe3.c                  |  1 +
 drivers/phy/ti/phy-tusb1210.c                  | 12 +++++++++---
 7 files changed, 41 insertions(+), 20 deletions(-)

Thanks
--=20
~Vinod

--9QoCqM/YrPWkvT1q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE+vs47OPLdNbVcHzyfBQHDyUjg0cFAmJhUKIACgkQfBQHDyUj
g0e+XA/9F2ZRM/RV+EuYRG+dEh8DkVyrhbu3ICR5GArrQ7XH6DUWdi3lBSBssh4m
qUgxd14+rOeR0KYp64S7F400vSTWTca6awPbFiss7NN0LC5bCECiPkRNPw2/U7So
Jrfey2OWFRx6oSJnCujng1+owNePyd1Z+WqeUwdvLkfihELtEAq1OE93HM9lEtrT
udRAg3N/VVqdryZBm73c8JLjAL7CHfvzVRg6UPOkgv/ypbC2pwXbfnMEwnJj2JuO
W2UZcFOpUATZXJa9ghkvff4xSeI8m/YaOWTy2MfEGik1D7lv6SSQEVBQAASFVr0R
UnylTw2oVDOeAXadnkLUrsDslqfUJKd0Wy07SZ0Lp/3z55xv6+VE/+2798CTU3Hq
XvC80R1VuRCQ8SnoXfE+3+qA0sI2SdCHPYNa2A81W7nZYGJgghzvLrNZJdtIr0tV
Ek3oUkA0laNmXOfZYA8y73wN4UWGiAq5tywXm36azJDwcCPbVkJiVV1/Uq5fez4a
E7wBXOrkavxaFr+1bsS1GgH3pzMUid0YrVj0Tcc8xICIjv7W9s8LZBhpiVG58dMC
Xd/ULbwKFEhBk0NwbcaB6A2eYi1Jbor44nS4y+epj3EhIMLbO2tMWg3/jIj0htAw
+/ZoxVKiKnytSzF2I0DP0bsA8jf2I3L3tbQiftk209S+7WQXbmo=
=jmaS
-----END PGP SIGNATURE-----

--9QoCqM/YrPWkvT1q--


--===============8113406465737877151==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8113406465737877151==--


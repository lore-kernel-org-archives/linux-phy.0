Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F1E1ECAAD5
	for <linux-phy@archiver.kernel.org>; Sat,  3 Sep 2022 11:12:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fwkPil4OClsvMmzG+DvA4PJhgSvZ3zVEzwwlEySLY74=; b=4fW
	hRaTarkFStGi0m/NMw0aPAg/CNBVx5q8xxivfZ6yMrzFwHceCPizjpPH/LT9fIesV/7ffvAn9VpY8
	XeKTHmprNPmJcBGf1md8C1Eip7eiEn7QC1LGynhCue/LIF1cochsuvQZAHsSrn+xb37EmPbJzOzLa
	BWkbKyp5wLRC9Dk2e+AU4x8MIi/8B4Ox8hAsb4qrwGEsOC7MNOkJ8LeddzqKbTWG1glXaqw9D0XDg
	tFisVXLRLRkOYQQcn5coABhZAd8lNe+ObbAdV4S5FsJBb9gogRb/SEotYMqW3Of0z51N0qWeVCgoN
	zrcYHobYzmU6kHx9mizynKOoh5gWbbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUR4T-009S7u-SD; Sat, 03 Sep 2022 11:12:17 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUR4R-009S6I-Ps
	for linux-phy@lists.infradead.org; Sat, 03 Sep 2022 11:12:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 43483CE0919;
	Sat,  3 Sep 2022 11:12:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 805DAC433C1;
	Sat,  3 Sep 2022 11:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662203523;
	bh=+UvzqH1QDFPmQPVn1gryZ3anDIwLfLLPp25gCyAKngk=;
	h=Date:From:To:Cc:Subject:From;
	b=kwVco4vrevgzAcgyTdJZVjcSgZDEG+VtnkceWDBGB+Fqfp5LJOdwqRMw4pAfoRnNh
	 r1OZxqbk5JFonuURh9KERKlOC8jQzl+3SH+26WnmQl50O50dBPgnX9In/GUOAMA784
	 yVRzLeZ7bluqoEQLfff8bESAGTOY0sROP0AjTq9n8FhgLuUxi9vwCLHo8njyeNK5Vy
	 dykuDuKdbH+UJna9Bu+oxbcrQc0h0V7K4KK5lO+kjFCdJu7uK+kuoLEqJ/uer+xZ2H
	 Td9onCZ8fvThhsA3771mTZ4Gtg7mTPmZ/rQJbBRzCxI2hZd+ZJ7hLaFPSkMdOhAl8A
	 GfzFc53XpR2LQ==
Date: Sat, 3 Sep 2022 16:41:59 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
	Linux Phy <linux-phy@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: [GIT PULL]: Generic phy fixes for v6.0
Message-ID: <YxM2f3BCvYm0tvWt@matsya>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220903_041216_025739_DF119D88 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============6643735339985026023=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6643735339985026023==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Ug023SCU/+hnlU35"
Content-Disposition: inline


--Ug023SCU/+hnlU35
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Greg,

Please pull to receive a single fix to marvell a3700-comphy driver which
fixes broken reset  in the driver

The following changes since commit 568035b01cfb107af8d2e4bd2fb9aea22cf5b868:

  Linux 6.0-rc1 (2022-08-14 15:50:18 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-=
fixes-6.0

for you to fetch changes up to 0a6fc70d76bddf98278af2ac000379c82aec8f11:

  phy: marvell: phy-mvebu-a3700-comphy: Remove broken reset support (2022-0=
8-30 10:32:33 +0530)

----------------------------------------------------------------
phy: fixes for 6.0

Fix for broken reset in marvell a3700-comphy

----------------------------------------------------------------
Pali Roh=E1r (1):
      phy: marvell: phy-mvebu-a3700-comphy: Remove broken reset support

 drivers/phy/marvell/phy-mvebu-a3700-comphy.c | 87 ++++++------------------=
----
 1 file changed, 17 insertions(+), 70 deletions(-)

--=20
~Vinod

--Ug023SCU/+hnlU35
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE+vs47OPLdNbVcHzyfBQHDyUjg0cFAmMTNn4ACgkQfBQHDyUj
g0ccmhAAyi8YWvbZPRthVfdGq0nQ2DcvZAooBdNYZwpJoEPXFDUF8I8qL+GrshJV
VEOZERZpINOvijaPMQKznxvd0DSI5nlABwQLFCgwm0bN28Lf2lJzSL/Veq+Kb4Xk
pEiW1AVgnuUDnmdBECuYYLGyeue7/q11M04vEEXiJcFs5mxqLURSEM0Lr+hbcFHb
HrMRhlISBrEQZ6oKcwg3uwscpS0MhLQBaOAV/mDmBCsZj3WMavRnAo3NSBX51HfK
DFE2nSFbAWvPo3Ov/7WbEu25pMDYBhHh9/aV6SWSkrf58RthZUMfF12bdFALYnp6
1JsCLzmjY7ZAmfE8kFMv4pEXXqPYfElfsLv8w3pD4mo199whucOBLWz49Nur2Kx5
FlWWBlVF4GyO2f2Z/+/uHPS85qSO4jpA6z1Wg+uApbMKYhYD4HZC9M08g4MCd5J4
TrfvmXLMuE9qNyNeD/KC3AOW9xry3fW9uFzXXjJYyYNalRLFAuS7aCR8bLDaoGSi
zO1frvdTCaZC8jL+9WlmkfLVCR2Tczy27DSINiM80E9I2CFNah7D6thNUEPEm4yc
Mip6uZ+jnq+CPMuQLwGTG906+8A1zKMGXA5iHqcOPLJMMHFecA+2CHAs8hWklIvB
qMGe2G439PfV4A5DZhupWTqIiHCJZZ7d/yc6Kge8wFL1ZPhDx08=
=nCmi
-----END PGP SIGNATURE-----

--Ug023SCU/+hnlU35--


--===============6643735339985026023==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6643735339985026023==--


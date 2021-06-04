Return-Path: <SRS0=hNs7=K6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-19.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,INCLUDES_PULL_REQUEST,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1DAB0C07E94
	for <linux-phy@archiver.kernel.org>; Fri,  4 Jun 2021 09:04:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D9A86613EA
	for <linux-phy@archiver.kernel.org>; Fri,  4 Jun 2021 09:04:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D9A86613EA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zJdW8ffjWu7wxFgHDqCl/Rl9Rs/bBghps0p043T2auc=; b=YPy
	+ZaNVJ/RikA1gjgSNdmXkJbzwnTKzx8jn1P2MTvqi+fB9B9k1TWbf5bNx/VbFxqAwanhU9mZA6Ud7
	Xlcg3w2HyQ0sGEnDR3twARt4twUzhJwrqzfWvjpQtvZIzPbjJytU8z0WxKT8YMg7tBR4PBHMc93Sj
	f/Z+Go4HpDas/Q0rwNrd5U5Rv4Amy8vU2cEcIsdGG0CtXMndBA7EVxu+zS7SgKI/gcZw6Y4yO783/
	u9Ce6sig7I5Ez+NbEhEbLfyF7etvO+iiozfOk2kQGrPjmCdGoVnWyEe7xUS6jeAwEwFbRwKrj1jjB
	QNVmw/hEIxlaNA79Ge1gtbgG6/HpxtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lp5ks-00CTBi-0s; Fri, 04 Jun 2021 09:04:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lp5fo-00CQvN-Gz
 for linux-phy@lists.infradead.org; Fri, 04 Jun 2021 08:59:25 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id CAC72613BF;
 Fri,  4 Jun 2021 08:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622797163;
 bh=tY42r8cFPqMltVvhSyc5iCxm8Gxpn98wcJ0fI73qMas=;
 h=Date:From:To:Cc:Subject:From;
 b=Z+ZTwv2lIrnblVGbTE7JYpSpr1WySCDJtxw5bqpX83ZZngrphUjFZYaUjVoQbLBAp
 WOj0reFOONIvPaPWQcQgZHaEYCNPFaTBqZaY0A03H9cd2eTL4QmI8xkA0a/Xy9Tvk7
 LMEif3gDQO4cbdcbCMXqG6SlrVVLLGtYccjbkgXEkePBZ9RUy6FWXU1pTsRhreLFVS
 cLlJJmEyLxmtMmu55WtP0QGvZjVlb+9b4ftbXk0u+x3xekJ6+mM5GBUk4qsD2Kxbqe
 3YlZM70UXyQSIzLMN9O7KA/U1gMpzITKzK6zWWF1COmtV9MuvYLgesm3tsQiHVBNFs
 ynRgJq/2OrMxw==
Date: Fri, 4 Jun 2021 14:29:20 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
 Linux Phy <linux-phy@lists.infradead.org>
Subject: [GIT PULL]: Generic phy fixes for v5.13
Message-ID: <YLnraMuKUKPtktfZ@vkoul-mobl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210604_015924_645370_A6DD1443 
X-CRM114-Status: UNSURE (   9.72  )
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
Content-Type: multipart/mixed; boundary="===============2498230773316061120=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2498230773316061120==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gQR8tj6Dj9TjCklp"
Content-Disposition: inline


--gQR8tj6Dj9TjCklp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Greg,

Please pull to recive few fixes for phy subsystem.

The following changes since commit 6efb943b8616ec53a5e444193dccf1af9ad627b5:

  Linux 5.13-rc1 (2021-05-09 14:17:44 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-=
fixes-5.13

for you to fetch changes up to d1ce245fe409241ed6168c835a5b55ef52bdb6a9:

  phy: Sparx5 Eth SerDes: check return value after calling platform_get_res=
ource() (2021-06-03 11:18:19 +0530)

----------------------------------------------------------------
phy: fixes for 5.13

Phy driver fixes for few drivers: cadence, mtk-tphy, sparx5, wiz mostly
fixing error code and checking return codes etc

----------------------------------------------------------------
Chen Li (1):
      phy: usb: Fix misuse of IS_ENABLED

Sergio Paracuellos (1):
      phy: ralink: phy-mt7621-pci: drop 'of_match_ptr' to fix -Wunused-cons=
t-variable

Tiezhu Yang (1):
      phy: phy-mtk-tphy: Fix some resource leaks in mtk_phy_init()

Wang Wensheng (1):
      phy: cadence: Sierra: Fix error return code in cdns_sierra_phy_probe()

Yang Li (1):
      phy: ti: Fix an error code in wiz_probe()

Yang Yingliang (1):
      phy: Sparx5 Eth SerDes: check return value after calling platform_get=
_resource()

 drivers/phy/broadcom/phy-brcm-usb-init.h | 4 ++--
 drivers/phy/cadence/phy-cadence-sierra.c | 1 +
 drivers/phy/mediatek/phy-mtk-tphy.c      | 2 ++
 drivers/phy/microchip/sparx5_serdes.c    | 4 ++++
 drivers/phy/ralink/phy-mt7621-pci.c      | 2 +-
 drivers/phy/ti/phy-j721e-wiz.c           | 1 +
 6 files changed, 11 insertions(+), 3 deletions(-)

Thanks
--=20
~Vinod

--gQR8tj6Dj9TjCklp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE+vs47OPLdNbVcHzyfBQHDyUjg0cFAmC562cACgkQfBQHDyUj
g0ej0RAA0wfjAOCnj6YXMFIdTp3L134VgSbx7+1nIpfqXN3tyDRKLYCiesRuoWm1
iBgYaYwfaKbaYqGof5ORO+IygwuySprGr41pAbna2SpRAHbBznHMkTqrQPs/E7pC
EfbK4S4YAWVXyl9hSBsngtQu9n7K24vw+sZsvQJEH+5FOPmTQMgRqD1Lt4wYPpxY
Kv0BScYtEETMWHEZT3YX1WOUBJpi6q5wfxoHS/xb0QyP2fB5/wq6piUPKlq/L2fh
sbCWlYEjOuc/M66BTEm4SfNqc6DiMLwIRr8Z3kOl7OKb0ZCnfT6mWYI/r+RS+9Om
dUy1Jyhol7Ecn9lZ26aPwDdg/+pRwwz2h0/IeT4QvzVFXKS3mjJmnFon3m8BZNnb
SfzT6wpzTuYdYml9X6lUE4T+XhZWXnfymfAG74Z3779gb6QXHSMwimtSkHVRr9bp
Gyuqe5APNAVstITi6JqJixXibgK/SJ7PGWVPsiyqlz+Tc5xFKka8+sVKa5yJISPS
U5wgW0/KILRrwdDQ/Vuvbop+j6aT245TtTQaRQkGyJ5Hy4W0F5T+bEnMDiBLGTQm
0Ciyog2ciubOwwctCt4rhkjpUs5wq8k5gJuoArn151WT21snKbmPx7lv0RIlNFL/
TOqwwNRwu5VOercqAawixfKpDz6MNPJL0kngn3wRjHZlR0dyvzw=
=RtN2
-----END PGP SIGNATURE-----

--gQR8tj6Dj9TjCklp--


--===============2498230773316061120==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2498230773316061120==--


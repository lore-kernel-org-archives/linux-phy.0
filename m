Return-Path: <SRS0=GGdd=IA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EEE92C433E0
	for <linux-phy@archiver.kernel.org>; Tue,  2 Mar 2021 10:25:36 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 817AB64F0B
	for <linux-phy@archiver.kernel.org>; Tue,  2 Mar 2021 10:25:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 817AB64F0B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5pXlSatnWebiA+xt4rzj0dT3+dLbHLx7ENJKFZnoDTo=; b=l5NLvFI+QLfBjF+0bo0SXRlwW
	+xgY7S/GC0zDcy1aiOK7DsisvU0/MUEK+9wcEVcICb+oB3/fwPNPSXwS0i9ElZEOTQppfYNGcpBHq
	O1Kr85eDf09qA1Qkl3oZK8y7fd3uxdDc984jeFKWrnmCKS0ZB8yYT/nmyfvVdwPJhlW0nQz+QrOz8
	mGudNuZq+df++XJWmHZDFqJVGo9JebzjJ6DxonVubL50cfy9wLt7leBisFXBdGO+32rMwGQ0FJGGS
	N613f1elvj0BDBUyGSeuVfOKcMRNXwTZXrDzwpIoje12PJlgYo4E0TSwHWj2t2Rd4IbLmZUgjHOGa
	SRSsVOv1A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lH2Df-00037c-O0; Tue, 02 Mar 2021 10:25:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lH2Dd-000372-4h
 for linux-phy@lists.infradead.org; Tue, 02 Mar 2021 10:25:34 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C9A196146D;
 Tue,  2 Mar 2021 10:25:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1614680731;
 bh=cR6X9Cd0vMnwZ4g6Jmo3xLT7af9FGbl6INHhlNwt6dk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XkvLV407+ViojfzJLEntMc9A3UZEEcPyH4RqWluwsWYBas28hmSrMPWa8k4wvCY5u
 iTQTR/f4BaxrK7kKQ47G49zw2a0kOWuAuPcUXnyA/NvOYrvnc/nfFRoczza4jJLxDD
 fR6Ta5NthN9hqgLD4/5d5ou6SZzjPgE3GYdgc7KsiIMKpmlVRz2rf0o0XMNOD/+o5n
 XdGs+ZQrT8CwYX8lsDyXGjlkfMDgCwcGRkW1z2hlt19mBo5BrM2vP5JurM4AJhcITB
 i6iXisiqXb/rstGrTG1acf1Kz30pZsBexLiPBJ9ZpH5KDaHppYG62UHRTrXcl35Xk4
 I8JbFHQd/jcCQ==
Date: Tue, 2 Mar 2021 15:55:27 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: Commits for 5.11 stable
Message-ID: <YD4SlyXIVFZQYip5@vkoul-mobl>
References: <YD4LfQEXWawk2b4C@vkoul-mobl>
 <YD4NINW6u28SxedJ@kroah.com>
MIME-Version: 1.0
In-Reply-To: <YD4NINW6u28SxedJ@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210302_052533_259764_D80345E6 
X-CRM114-Status: GOOD (  12.61  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Cc: Linux Phy <linux-phy@lists.infradead.org>, stable@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>
Content-Type: multipart/mixed; boundary="===============3440387836973584637=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============3440387836973584637==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="k4PKXNVeIlpj/zIy"
Content-Disposition: inline


--k4PKXNVeIlpj/zIy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


HI Greg,

On 02-03-21, 11:02, Greg KH wrote:
> On Tue, Mar 02, 2021 at 03:25:09PM +0530, Vinod Koul wrote:
> > Hi Greg,
> >=20
> > Please include these commits for 5.11 stable series
> >=20
> > 9a8b9434c60f phy: mediatek: Add missing MODULE_DEVICE_TABLE()
> > 25e3ee590f62 phy: phy-brcm-sata: remove unneeded semicolon
> > 6b46e60a6943 phy: USB_LGM_PHY should depend on X86
> > 36acd5e24e30 phy: lantiq: rcu-usb2: wait after clock enable
> > c188365402f6 phy: rockchip: emmc, add vendor prefix to dts properties
> > 88d9f40c4b71 devicetree: phy: rockchip-emmc optional add vendor prefix
> > aaf316de3bba phy: cpcap-usb: remove unneeded conversion to bool
> > 39961bd6b70e phy: rockchip-emmc: emmc_phy_init() always return 0
>=20
> Why take these?
>=20
> What problems do they solve?

Sorry I should have provided the context. I had sent these as fixes for
5.11 but that was bit late so we merged it for 5.12 [1]

> How does 25e3ee590f62 meet the stable tree rules?
>=20
> > Please note that below commit is applicable for 5.7+
> > 36acd5e24e30 phy: lantiq: rcu-usb2: wait after clock enable
>=20
> So for 5.10 also?

yes, the patch has been tagged stable 5.7+

Thanks

[1]: https://lore.kernel.org/lkml/20210210091249.GC2774@vkoul-mobl.Dlink/

--=20
~Vinod

--k4PKXNVeIlpj/zIy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE+vs47OPLdNbVcHzyfBQHDyUjg0cFAmA+EpcACgkQfBQHDyUj
g0ciPA/9GpPqLhQY/ogvYp+A9aDSLvc5NwLvbHsx8+y8Hv4OHjbdB0TRLQVeusuN
N+nr0qxQyl4eEFR9mlUW5MAvF4yMA7Y8dBR4e/b1728BPzaCWP93myye9EJBOg5f
U3B9K+ifp3ZO1yrz9CXAX/Tl7ML7a0xzVq1nyfN5EV9DO7b0znwJr13G4rK60G5P
OLJfxvU6xys0PBSNaVTr9lSrAcQ52nIzYmq2rswEgvQtL9MrqQ4ixDzYp7N9UFTp
/UgpPZh5o9LJBeJCeFCjkZaPhwJHsTfmjGsKu1BAhn8Vpel4ELD6UD5F7UJe2Hfb
wp9g8u4V+jyNRfttqk0zS7kcv2Kk6hCHBPcYUhCRAvpKNdi8glpLPGwFAdPUx/BI
v9pBdxiVE4hPO02dvROUqWhuLYrDG7/SGpP0aoJ18X68wO+jfM1I0kyzz21qVIkY
4aAgicoF7fDLas0wJFPRPOW59CHFljj9UWhFNK4n87A8iddVs73nhHkoq5zF5lyp
XgDLaESpRJ5fU1s8wixVov1Id8dtFAFiYXbDFKf8wfDktwOk9ndvWzUTPkDNnYq5
MDvLNhEQTSXvYQT3CR6iiL71NKUgcnEEbkYb/U42QW5DvTbS+0ZiiOjvBT5s205t
BUxSMK0vNb213AZg5kQJ37dpJBcDQWImJlJywuP2Kv7+JF1t4jE=
=e4B/
-----END PGP SIGNATURE-----

--k4PKXNVeIlpj/zIy--


--===============3440387836973584637==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3440387836973584637==--


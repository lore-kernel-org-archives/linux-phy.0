Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5531EC4332F
	for <linux-phy@archiver.kernel.org>; Mon, 19 Dec 2022 11:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j3cNBBVWueGabQMN1KYLRs4uvUMgsTzDovS09FriiEk=; b=Z4TfBLI2IHY0ChVcfs8iXNDlhv
	B5ThNr/l+B91k4k4F7nmk/pupLuHZCra1A5Fxe0fw5p2HUbkn10q4zTetVW3y77o4hadpQVTd7TYB
	b89RqP1WazI/uqPunQWoStIk4csCSeS7y86SVtDVWUjkwK+UfbKFpouQ7Hk1DT45US44MIOWm32IQ
	Au8B8FwX0x2XhuhlP4OWtHVDV+kXBsKTSV6Qo2FwrLK5X1gdqrbBf/jRQoXfoepbew1S8r4uIMmJA
	BklU1lTg31cSsETWF4A/RgNYqU4r0pS0SXdqnuZeCNh5n6RcRJZ9bVOIpaa97lI0RNRO/MPqP9FK1
	ciiywS5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7ELe-00CchC-Ll; Mon, 19 Dec 2022 11:30:22 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7ELb-00Ccc3-8d
	for linux-phy@lists.infradead.org; Mon, 19 Dec 2022 11:30:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0111E60EFD;
	Mon, 19 Dec 2022 11:30:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4031DC433D2;
	Mon, 19 Dec 2022 11:30:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671449413;
	bh=3PNzKHxhEzGjYNdXcEyYpXrFjmsxPTwPqQiENaoHqNY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LCFE7EtAdIbdrVO7xiQ3DbOR4q9l9odX9Yev7gYX4SMMug07owufuZiNb37FPzvod
	 2VyzK5rke57dHijljbS7uYy0K6Z9fBKrpjh2K/qFfVqVWmnwFtIZY2aupUbcg/zhSw
	 qGBPw7H+d3N+m0QirO9R2Z8lhUgWInpjNAdCHAcTiVLpHhhBvyUDgOwYzIuUTeFZzc
	 lcaFVpVYnKkEekzQ/Sfnwltb11EH7it1/qspwzxe0oZ4yJd2+sBth8zc7PyLPSZIzF
	 5dspAeF+M0Jbh8XJ756njttZnXcinzbBEeK6VgHB0gGlGoT4DFZCJUFuw3pZrvSWeh
	 CYT0RP5UJAJqA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1p7EMB-0003tH-Bs; Mon, 19 Dec 2022 12:30:55 +0100
Date: Mon, 19 Dec 2022 12:30:55 +0100
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	Linux Phy <linux-phy@lists.infradead.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [GIT PULL]: Generic phy updates for 6.2
Message-ID: <Y6BLb8rKoivrRC4M@hovoldconsulting.com>
References: <Y58jOP0HrtMxuP3y@matsya>
MIME-Version: 1.0
In-Reply-To: <Y58jOP0HrtMxuP3y@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_033019_480518_A16AF6A2 
X-CRM114-Status: GOOD (  16.80  )
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
Content-Type: multipart/mixed; boundary="===============4183206816067947184=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============4183206816067947184==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Oz/j3kEjT8Hxv6aE"
Content-Disposition: inline


--Oz/j3kEjT8Hxv6aE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Vinod,

On Sun, Dec 18, 2022 at 07:57:04PM +0530, Vinod Koul wrote:

> ----------------------------------------------------------------
> phy-for-6.2
>=20
>   - New support:
>         - Allwinner H616 USB PHY and A100 DPHY support
>         - TI J721s2, J784s4 and J721e support
> 	- Freescale i.MX8MP PCIe PHY support
> 	- New driver for Renesas Ethernet SERDES supporting R-Car S4-8
> 	- Qualcomm SM8450 PCIe1 PHY support in EP mode

You could also have mentioned

	- Qualcomm SC8280XP PCIe PHY support (including x4 mode)
	- Fixed Qualcomm SC8280XP USB4-USB3-DP PHY DT bindings

which were the primary reasons for reworking the QMP drivers and DT
bindings, something which also lead to a number of bugs in these drivers
being found and fixed.

>   - Updates:
>         - again a big pile of updates on qcom-qmp-* drivers following the
>           driver split and reorganization merged earlier
> 	- Phy order of API calls documentation update
>=20
> ----------------------------------------------------------------

> Johan Hovold (131):
>       phy: qcom-qmp: fix obsolete lane comments
>       phy: qcom-qmp-combo: drop unused UFS reset
>       phy: qcom-qmp-pcie: drop unused common-block registers
>       phy: qcom-qmp-pcie: clean up power-down handling
>       phy: qcom-qmp-pcie: move power-down update
>       phy: qcom-qmp-pcie-msm8996: clean up power-down handling
>       phy: qcom-qmp-combo: clean up power-down handling
>       phy: qcom-qmp-ufs: clean up power-down handling
>       phy: qcom-qmp-usb: clean up power-down handling
>       phy: qcom-qmp-pcie: clean up clock lists
>       phy: qcom-qmp-pcie: drop bogus register update
>       phy: qcom-qmp: drop regulator error message
>       phy: qcom-qmp: drop superfluous comments
>       phy: qcom-qmp-combo: drop unused in-layout configuration
>       phy: qcom-qmp-pcie: drop redundant ipq8074 power on
>       phy: qcom-qmp-pcie-msm8996: drop unused in-layout configuration
>       phy: qcom-qmp-ufs: drop unused in-layout configuration
>       phy: qcom-qmp-usb: drop unused in-layout configuration
>       phy: qcom-qmp-pcie: drop power-down delay config
>       phy: qcom-qmp-pcie: replace power-down delay
>       phy: qcom-qmp-pcie-msm8996: drop power-down delay config
>       phy: qcom-qmp-combo: drop sc8280xp power-down delay
>       phy: qcom-qmp-combo: drop power-down delay config
>       phy: qcom-qmp-usb: drop sc8280xp power-down delay
>       phy: qcom-qmp-usb: drop power-down delay config
>       phy: qcom-qmp-pcie: fix sc8180x initialisation
>       phy: qcom-qmp-pcie: fix ipq8074-gen3 initialisation
>       phy: qcom-qmp-pcie: fix ipq6018 initialisation
>       phy: qcom-qmp-pcie: clean up status polling
>       phy: qcom-qmp-pcie: increase status polling period
>       phy: qcom-qmp-pcie-msm8996: clean up ready and status polling
>       phy: qcom-qmp-pcie-msm8996: increase status polling period
>       phy: qcom-qmp-combo: clean up status polling
>       phy: qcom-qmp-combo: increase status polling period
>       phy: qcom-qmp-ufs: drop unused phy-status config
>       phy: qcom-qmp-ufs: clean up ready polling
>       phy: qcom-qmp-ufs: increase ready polling period
>       phy: qcom-qmp-usb: clean up status polling
>       phy: qcom-qmp-usb: increase status polling period
>       phy: qcom-qmp-combo: drop start and pwrdn-ctrl abstraction
>       phy: qcom-qmp-pcie: drop start-ctrl abstraction
>       phy: qcom-qmp-pcie: add config sanity checks
>       phy: qcom-qmp-pcie-msm8996: drop start and pwrdn-ctrl abstraction
>       phy: qcom-qmp-ufs: drop start and pwrdn-ctrl abstraction
>       phy: qcom-qmp-usb: drop start and pwrdn-ctrl abstraction
>       phy: qcom-qmp-combo: fix NULL-deref on runtime resume
>       phy: qcom-qmp-ufs: move device-id table
>       phy: qcom-qmp-ufs: merge driver data
>       phy: qcom-qmp-ufs: clean up device-tree parsing
>       phy: qcom-qmp-ufs: clean up probe initialisation
>       phy: qcom-qmp-ufs: rename PHY ops structure
>       phy: qcom-qmp-ufs: clean up PHY init
>       dt-bindings: phy: qcom,qmp-ufs: rename current bindings
>       dt-bindings: phy: qcom,qmp-ufs: fix sc8280xp binding
>       phy: qcom-qmp-ufs: restructure PHY creation
>       phy: qcom-qmp-ufs: add support for updated sc8280xp binding
>       phy: qcom-qmp-usb: fix sc8280xp PCS_USB offset
>       phy: qcom-qmp-usb: sort device-id table
>       phy: qcom-qmp-usb: move device-id table
>       phy: qcom-qmp-usb: move pm ops
>       phy: qcom-qmp-usb: merge driver data
>       phy: qcom-qmp-usb: clean up device-tree parsing
>       phy: qcom-qmp-usb: clean up probe initialisation
>       phy: qcom-qmp-usb: rename PHY ops structure
>       phy: qcom-qmp-usb: clean up PHY init
>       dt-bindings: phy: qcom,qmp-usb: rename current bindings
>       dt-bindings: phy: qcom,qmp-usb: fix sc8280xp binding
>       phy: qcom-qmp-usb: restructure PHY creation
>       phy: qcom-qmp-usb: add support for updated sc8280xp binding
>       phy: qcom-qmp-pcie: sort device-id table
>       phy: qcom-qmp-pcie: move device-id table
>       phy: qcom-qmp-pcie: merge driver data
>       phy: qcom-qmp-pcie: clean up device-tree parsing
>       phy: qcom-qmp-pcie: clean up probe initialisation
>       phy: qcom-qmp-pcie: rename PHY ops structure
>       phy: qcom-qmp-pcie: clean up PHY lane init
>       phy: qcom-qmp-pcie: use shorter tables identifiers
>       phy: qcom-qmp-pcie: add register init helper
>       dt-bindings: phy: qcom,qmp-pcie: rename current bindings
>       dt-bindings: phy: qcom,qmp-pcie: add sc8280xp bindings
>       phy: qcom-qmp-pcie: restructure PHY creation
>       phy: qcom-qmp-pcie: fix initialisation reset
>       phy: qcom-qmp-pcie: add support for pipediv2 clock
>       phy: qcom-qmp-pcie: add support for sc8280xp
>       phy: qcom-qmp-pcie: add support for sc8280xp 4-lane PHYs
>       phy: qcom-qmp-combo: fix out-of-bounds clock access
>       phy: qcom-qmp-combo: fix sdm845 reset
>       phy: qcom-qmp-combo: fix sc8180x reset
>       phy: qcom-qmp-combo: fix broken power on
>       phy: qcom-qmp-combo: fix runtime suspend
>       phy: qcom-qmp-combo: clean up common initialisation
>       phy: qcom-qmp-combo: sort device-id table
>       phy: qcom-qmp-combo: move device-id table
>       phy: qcom-qmp-combo: move pm ops
>       phy: qcom-qmp-combo: rename PHY ops structures
>       phy: qcom-qmp-combo: drop unused DP PHY mode op
>       phy: qcom-qmp-combo: rename USB PHY ops
>       phy: qcom-qmp-combo: drop unnecessary debug message
>       phy: qcom-qmp-combo: separate USB and DP init ops
>       phy: qcom-qmp-combo: rename DP PHY ops
>       phy: qcom-qmp-combo: separate USB and DP power-on ops
>       phy: qcom-qmp-combo: clean up serdes initialisation
>       phy: qcom-qmp-combo: separate USB and DP devicetree parsing
>       phy: qcom-qmp-combo: add dedicated DP iomem pointers
>       phy: qcom-qmp-combo: clean up DP configurations
>       phy: qcom-qmp-combo: rename sc8280xp config
>       phy: qcom-qmp-combo: add DP configuration tables
>       phy: qcom-qmp-combo: drop lanes config parameter
>       phy: qcom-qmp-combo: merge USB and DP configurations
>       phy: qcom-qmp-combo: merge driver data
>       phy: qcom-qmp-combo: clean up device-tree parsing
>       phy: qcom-qmp-combo: clean up probe initialisation
>       phy: qcom-qmp-combo: clean up DP callback names
>       dt-bindings: phy: qcom,qmp-usb3-dp: rename current bindings
>       dt-bindings: phy: qcom,qmp-usb3-dp: fix sc8280xp binding
>       phy: qcom-qmp-combo: drop v4 reference-clock source
>       phy: qcom-qmp-combo: restructure PHY creation
>       phy: qcom-qmp-combo: generate pipe clock name
>       phy: qcom-qmp-combo: drop redundant clock structure
>       phy: qcom-qmp-combo: drop redundant clock allocation
>       phy: qcom-qmp-combo: add clock registration helper
>       phy: qcom-qmp-combo: separate clock and provider registration
>       phy: qcom-qmp-combo: clean up DP clock callbacks
>       phy: qcom-qmp-combo: rename common-register pointers
>       phy: qcom-qmp-combo: rename DP_PHY register pointer
>       phy: qcom-qmp-combo: add support for updated sc8280xp binding
>       dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: drop reference-clock =
source
>       phy: qcom-qmp-usb: drop sc8280xp reference-clock source
>       phy: qcom-qmp: drop unused type header
>       phy: qcom-qmp-usb: drop redundant clock allocation
>       phy: qcom-qmp-pcie: drop redundant clock allocation

Johan

--Oz/j3kEjT8Hxv6aE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQHbPq+cpGvN/peuzMLxc3C7H1lCAUCY6BLaQAKCRALxc3C7H1l
CFpcAP4qJYV9fuWNzeSOkZz2Ev+VCr8l4eRn0e7NCMqQOuxpUwEAkD5ClW7DJsuq
HoWyBClGvmUlFSNrv1gUgOpsGZ5knAM=
=uejG
-----END PGP SIGNATURE-----

--Oz/j3kEjT8Hxv6aE--


--===============4183206816067947184==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4183206816067947184==--


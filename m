Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C35AFC4332F
	for <linux-phy@archiver.kernel.org>; Mon, 19 Dec 2022 13:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q2IUJGD583IJ0Gtdt55mdaOAa2dtknnCy0cpFBF+dHg=; b=rR6vagUOFxqmHtZ3vSL71kfhUc
	p2tdWSeWfiYzbUwn2QqI9Muw0FLnMbFFaopjHSoncjUhsqPhPZ8Dlcq9XM+vRBhfmwXttkWQgWudK
	4TwJMYEzosWkXMMUxrBRj6PmIoxxnQuJnSJIkUrywiEoaDNSwDQ8u0YMrJzbjeUCy+KNSaNEQXPDt
	ZJmuIPn4E5P6KlF+rzJhkCbFU9Pnaa3zFZ2L3ydIarHoxuBy+Fr6VIU+iTG5FYNnkBotA4QKQW6zS
	GTN3gLpLfbZsJinbEJTlvhgGz4uhaERAOu5D3HX5B42jZJF815LCyUY8Z3NiDD1Vy4vtHVD57sUM7
	Q8sj7Agg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7GZ9-00ELNU-0t; Mon, 19 Dec 2022 13:52:27 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7GZ3-00ELJG-Qj
	for linux-phy@lists.infradead.org; Mon, 19 Dec 2022 13:52:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 023A0B80E29;
	Mon, 19 Dec 2022 13:52:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 187B1C433EF;
	Mon, 19 Dec 2022 13:52:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671457936;
	bh=hAJpTw+ToPpfXrW0tt4whfnnEhHjflG8rDxaq7RSmTA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ntB9pUIj2JnndxAyvS82/C7txzZxdl2jmZ/pATLi+qi7t7hHs2dFiV8CPCpX8nnhR
	 Es6vY01MVtqpbcQt5mojsZcfUAP60uKYdFqwfs8XT+mGuLP/eQK8NFMMajDItPmx/x
	 OvIchT1az/BfoaTnhLxDABffnpoS1SSXOS6gdZ2jQ6YjW1XhApVraSJd4bBzJjuOK8
	 Rcong2PFPyXYFDO6UNat+nJW2jWWPpTI/AotCrwegAGVtXxh8eg1LBO6Xhx3NKPoDU
	 D7bsG2leSI3/1GOFjp00FnqYu9VMTjxX34GuUVRNajSxjgIGZwWHUrQ6MZYNYYCnMj
	 9OBKvispyLEDg==
Date: Mon, 19 Dec 2022 19:22:12 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	Linux Phy <linux-phy@lists.infradead.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Subject: Re: [GIT PULL]: Generic phy updates for 6.2
Message-ID: <Y6BsjPNdR1HDPNSo@matsya>
References: <Y58jOP0HrtMxuP3y@matsya>
 <Y6BLb8rKoivrRC4M@hovoldconsulting.com>
MIME-Version: 1.0
In-Reply-To: <Y6BLb8rKoivrRC4M@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_055222_223654_1ABFFA37 
X-CRM114-Status: GOOD (  20.62  )
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
Content-Type: multipart/mixed; boundary="===============3986219117848064054=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============3986219117848064054==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mWbNYkOVzOXphOmc"
Content-Disposition: inline


--mWbNYkOVzOXphOmc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Fixed Kishon email,

On 19-12-22, 12:30, Johan Hovold wrote:
> Hi Vinod,
>=20
> On Sun, Dec 18, 2022 at 07:57:04PM +0530, Vinod Koul wrote:
>=20
> > ----------------------------------------------------------------
> > phy-for-6.2
> >=20
> >   - New support:
> >         - Allwinner H616 USB PHY and A100 DPHY support
> >         - TI J721s2, J784s4 and J721e support
> > 	- Freescale i.MX8MP PCIe PHY support
> > 	- New driver for Renesas Ethernet SERDES supporting R-Car S4-8
> > 	- Qualcomm SM8450 PCIe1 PHY support in EP mode
>=20
> You could also have mentioned
>=20
> 	- Qualcomm SC8280XP PCIe PHY support (including x4 mode)
> 	- Fixed Qualcomm SC8280XP USB4-USB3-DP PHY DT bindings

Yes sorry to have missed that... I guess Linus might add this when
merging the PR..


>=20
> which were the primary reasons for reworking the QMP drivers and DT
> bindings, something which also lead to a number of bugs in these drivers
> being found and fixed.
>=20
> >   - Updates:
> >         - again a big pile of updates on qcom-qmp-* drivers following t=
he
> >           driver split and reorganization merged earlier
> > 	- Phy order of API calls documentation update
> >=20
> > ----------------------------------------------------------------
>=20
> > Johan Hovold (131):
> >       phy: qcom-qmp: fix obsolete lane comments
> >       phy: qcom-qmp-combo: drop unused UFS reset
> >       phy: qcom-qmp-pcie: drop unused common-block registers
> >       phy: qcom-qmp-pcie: clean up power-down handling
> >       phy: qcom-qmp-pcie: move power-down update
> >       phy: qcom-qmp-pcie-msm8996: clean up power-down handling
> >       phy: qcom-qmp-combo: clean up power-down handling
> >       phy: qcom-qmp-ufs: clean up power-down handling
> >       phy: qcom-qmp-usb: clean up power-down handling
> >       phy: qcom-qmp-pcie: clean up clock lists
> >       phy: qcom-qmp-pcie: drop bogus register update
> >       phy: qcom-qmp: drop regulator error message
> >       phy: qcom-qmp: drop superfluous comments
> >       phy: qcom-qmp-combo: drop unused in-layout configuration
> >       phy: qcom-qmp-pcie: drop redundant ipq8074 power on
> >       phy: qcom-qmp-pcie-msm8996: drop unused in-layout configuration
> >       phy: qcom-qmp-ufs: drop unused in-layout configuration
> >       phy: qcom-qmp-usb: drop unused in-layout configuration
> >       phy: qcom-qmp-pcie: drop power-down delay config
> >       phy: qcom-qmp-pcie: replace power-down delay
> >       phy: qcom-qmp-pcie-msm8996: drop power-down delay config
> >       phy: qcom-qmp-combo: drop sc8280xp power-down delay
> >       phy: qcom-qmp-combo: drop power-down delay config
> >       phy: qcom-qmp-usb: drop sc8280xp power-down delay
> >       phy: qcom-qmp-usb: drop power-down delay config
> >       phy: qcom-qmp-pcie: fix sc8180x initialisation
> >       phy: qcom-qmp-pcie: fix ipq8074-gen3 initialisation
> >       phy: qcom-qmp-pcie: fix ipq6018 initialisation
> >       phy: qcom-qmp-pcie: clean up status polling
> >       phy: qcom-qmp-pcie: increase status polling period
> >       phy: qcom-qmp-pcie-msm8996: clean up ready and status polling
> >       phy: qcom-qmp-pcie-msm8996: increase status polling period
> >       phy: qcom-qmp-combo: clean up status polling
> >       phy: qcom-qmp-combo: increase status polling period
> >       phy: qcom-qmp-ufs: drop unused phy-status config
> >       phy: qcom-qmp-ufs: clean up ready polling
> >       phy: qcom-qmp-ufs: increase ready polling period
> >       phy: qcom-qmp-usb: clean up status polling
> >       phy: qcom-qmp-usb: increase status polling period
> >       phy: qcom-qmp-combo: drop start and pwrdn-ctrl abstraction
> >       phy: qcom-qmp-pcie: drop start-ctrl abstraction
> >       phy: qcom-qmp-pcie: add config sanity checks
> >       phy: qcom-qmp-pcie-msm8996: drop start and pwrdn-ctrl abstraction
> >       phy: qcom-qmp-ufs: drop start and pwrdn-ctrl abstraction
> >       phy: qcom-qmp-usb: drop start and pwrdn-ctrl abstraction
> >       phy: qcom-qmp-combo: fix NULL-deref on runtime resume
> >       phy: qcom-qmp-ufs: move device-id table
> >       phy: qcom-qmp-ufs: merge driver data
> >       phy: qcom-qmp-ufs: clean up device-tree parsing
> >       phy: qcom-qmp-ufs: clean up probe initialisation
> >       phy: qcom-qmp-ufs: rename PHY ops structure
> >       phy: qcom-qmp-ufs: clean up PHY init
> >       dt-bindings: phy: qcom,qmp-ufs: rename current bindings
> >       dt-bindings: phy: qcom,qmp-ufs: fix sc8280xp binding
> >       phy: qcom-qmp-ufs: restructure PHY creation
> >       phy: qcom-qmp-ufs: add support for updated sc8280xp binding
> >       phy: qcom-qmp-usb: fix sc8280xp PCS_USB offset
> >       phy: qcom-qmp-usb: sort device-id table
> >       phy: qcom-qmp-usb: move device-id table
> >       phy: qcom-qmp-usb: move pm ops
> >       phy: qcom-qmp-usb: merge driver data
> >       phy: qcom-qmp-usb: clean up device-tree parsing
> >       phy: qcom-qmp-usb: clean up probe initialisation
> >       phy: qcom-qmp-usb: rename PHY ops structure
> >       phy: qcom-qmp-usb: clean up PHY init
> >       dt-bindings: phy: qcom,qmp-usb: rename current bindings
> >       dt-bindings: phy: qcom,qmp-usb: fix sc8280xp binding
> >       phy: qcom-qmp-usb: restructure PHY creation
> >       phy: qcom-qmp-usb: add support for updated sc8280xp binding
> >       phy: qcom-qmp-pcie: sort device-id table
> >       phy: qcom-qmp-pcie: move device-id table
> >       phy: qcom-qmp-pcie: merge driver data
> >       phy: qcom-qmp-pcie: clean up device-tree parsing
> >       phy: qcom-qmp-pcie: clean up probe initialisation
> >       phy: qcom-qmp-pcie: rename PHY ops structure
> >       phy: qcom-qmp-pcie: clean up PHY lane init
> >       phy: qcom-qmp-pcie: use shorter tables identifiers
> >       phy: qcom-qmp-pcie: add register init helper
> >       dt-bindings: phy: qcom,qmp-pcie: rename current bindings
> >       dt-bindings: phy: qcom,qmp-pcie: add sc8280xp bindings
> >       phy: qcom-qmp-pcie: restructure PHY creation
> >       phy: qcom-qmp-pcie: fix initialisation reset
> >       phy: qcom-qmp-pcie: add support for pipediv2 clock
> >       phy: qcom-qmp-pcie: add support for sc8280xp
> >       phy: qcom-qmp-pcie: add support for sc8280xp 4-lane PHYs
> >       phy: qcom-qmp-combo: fix out-of-bounds clock access
> >       phy: qcom-qmp-combo: fix sdm845 reset
> >       phy: qcom-qmp-combo: fix sc8180x reset
> >       phy: qcom-qmp-combo: fix broken power on
> >       phy: qcom-qmp-combo: fix runtime suspend
> >       phy: qcom-qmp-combo: clean up common initialisation
> >       phy: qcom-qmp-combo: sort device-id table
> >       phy: qcom-qmp-combo: move device-id table
> >       phy: qcom-qmp-combo: move pm ops
> >       phy: qcom-qmp-combo: rename PHY ops structures
> >       phy: qcom-qmp-combo: drop unused DP PHY mode op
> >       phy: qcom-qmp-combo: rename USB PHY ops
> >       phy: qcom-qmp-combo: drop unnecessary debug message
> >       phy: qcom-qmp-combo: separate USB and DP init ops
> >       phy: qcom-qmp-combo: rename DP PHY ops
> >       phy: qcom-qmp-combo: separate USB and DP power-on ops
> >       phy: qcom-qmp-combo: clean up serdes initialisation
> >       phy: qcom-qmp-combo: separate USB and DP devicetree parsing
> >       phy: qcom-qmp-combo: add dedicated DP iomem pointers
> >       phy: qcom-qmp-combo: clean up DP configurations
> >       phy: qcom-qmp-combo: rename sc8280xp config
> >       phy: qcom-qmp-combo: add DP configuration tables
> >       phy: qcom-qmp-combo: drop lanes config parameter
> >       phy: qcom-qmp-combo: merge USB and DP configurations
> >       phy: qcom-qmp-combo: merge driver data
> >       phy: qcom-qmp-combo: clean up device-tree parsing
> >       phy: qcom-qmp-combo: clean up probe initialisation
> >       phy: qcom-qmp-combo: clean up DP callback names
> >       dt-bindings: phy: qcom,qmp-usb3-dp: rename current bindings
> >       dt-bindings: phy: qcom,qmp-usb3-dp: fix sc8280xp binding
> >       phy: qcom-qmp-combo: drop v4 reference-clock source
> >       phy: qcom-qmp-combo: restructure PHY creation
> >       phy: qcom-qmp-combo: generate pipe clock name
> >       phy: qcom-qmp-combo: drop redundant clock structure
> >       phy: qcom-qmp-combo: drop redundant clock allocation
> >       phy: qcom-qmp-combo: add clock registration helper
> >       phy: qcom-qmp-combo: separate clock and provider registration
> >       phy: qcom-qmp-combo: clean up DP clock callbacks
> >       phy: qcom-qmp-combo: rename common-register pointers
> >       phy: qcom-qmp-combo: rename DP_PHY register pointer
> >       phy: qcom-qmp-combo: add support for updated sc8280xp binding
> >       dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: drop reference-cloc=
k source
> >       phy: qcom-qmp-usb: drop sc8280xp reference-clock source
> >       phy: qcom-qmp: drop unused type header
> >       phy: qcom-qmp-usb: drop redundant clock allocation
> >       phy: qcom-qmp-pcie: drop redundant clock allocation
>=20
> Johan



--=20
~Vinod

--mWbNYkOVzOXphOmc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE+vs47OPLdNbVcHzyfBQHDyUjg0cFAmOgbIsACgkQfBQHDyUj
g0dYZBAA1NOfj++Xyi+uBH5kUQCVAsr1wSLQlpdDQZq+iVkVBv3C3Txgs3l1reOz
1kt64Oypr1o3FVbXFIiaOCSBoVDFzGXz19TZXNR+E7wa44I0NPa0/s5MVtyEd6Yo
vnfSnkfqsW3LJbXUspe5avNej2icustg8hwhdiZtXSLxBTiFL/qUnWrheL0Yni44
d6QmmArKG8+FIdSOVvyX8RS7/hToBtCr1GVR6LK+4esnx4X1Z/OJE7kNtikNuWpb
0xzjGNJ0gpfLo1ALpObI/oc8TLb2RKxJjpS3zTDNGdDUMvUq9WcPpwloQVoAFQTs
a4jWrAyRwySZyow5UbfbeftbfMKuPjOESWkoe2MM7Ec6SsLDH4kf0Sn2SLSFgpLC
JnZEafNtzJ17xtM5CXtbAvAxpdILAXvi32ZqLoLsqVuHKrtWtNaGNKsEv0zK4i6P
xgyKIAMhB4uAH6ZEhjPAdUEpoFsM+e9YZhGOgkFwpuiW+7IJyIV0rNd2hSegeGfK
YNMnSg2fDpESDbya0VrPiHx13fLRmVpUHqaH5IQeNcIkPxsF5bQEMGCCtjSNNaxr
B/chZ/mUw96SDQRYW4IPXmfYZQfTKSwKEPp0isjEyQayir/CW6bbIEySDT6Beg6j
HwsHWhIG8sApKy86xBAPeAfd2yGA8WtwkpmiqElFrJCgIVNY6eY=
=UPFG
-----END PGP SIGNATURE-----

--mWbNYkOVzOXphOmc--


--===============3986219117848064054==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3986219117848064054==--


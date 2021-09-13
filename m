Return-Path: <SRS0=BhbR=OD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1BD0C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 13 Sep 2021 08:33:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B3EA360FBF
	for <linux-phy@archiver.kernel.org>; Mon, 13 Sep 2021 08:33:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B3EA360FBF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=cerno.tech
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=czJV7sMH/jSaf8uRltZaOGsUapoJeDPNE8OX9bv2U34=; b=vWcJ4Ovt95WWN+JbBApr+2bMA9
	TojEUvBUq5JO9qwSqcco1h3l44UnksiCsVrjAPX5OG+gM4gf7rhjL4zzQvAf1WstD8NOvepi2K+CQ
	xNHOd60IcGOshF7AklOMBqCKlSQuRzlcEN4JzbpuFdu4sZVOA6BnoNvN00eylLKHtLH8LEZ8/Goe2
	GdDN+334At8SIFzLdNiEji/JLGs30mJ5had3PQEW1UCOBBVYYJZ1GYwY6Sm59gFdVhBCF4/dg9K+9
	U+T7dptgtxnjW+f0F1IN/pO3BVQcm3zRthhNinjoFb3thxcc1oBqcweJ+JKBBMkQDpI7MyNHu28GD
	K4GPFndQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPhPH-000n2t-RE; Mon, 13 Sep 2021 08:33:39 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPhOY-000miB-1z; Mon, 13 Sep 2021 08:32:55 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id F34C6580B05;
 Mon, 13 Sep 2021 04:32:52 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 13 Sep 2021 04:32:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=75DIi7N4mlFsZ7koSe8DWsv99XW
 KUQRl2cLcYOj+eRw=; b=AnOlF00X96M/zW0xSLaelxCdp+K18+ZvmQsW1G5Jmc1
 oElqXlG6JCdmczd/vKPwL3qL4BDsX6dkA2fN6QRoJ8grHu2Thc25WjizjZg9Avzc
 RaYn7G8tooHV1u49uwMxyOxP30LxlMkM6+rtPQOjoVzsYMx9PyXe3O4Hnv/egiTw
 NyZet3CUtGVfyhSbCqE/wgND+4cU/EVakaCS6mEzJvl0dptFN5cXvZc4+UylhV8/
 aL8qVF/Ul/4o34hylws0sak95LsbZcJkg/JVlqgWvdOBfXQNDvZrK8rb30ljmMNm
 pHD53eqmmRrzSQbAhzT6rPX5eSzlc5E4LO/IrfEHvjQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=75DIi7
 N4mlFsZ7koSe8DWsv99XWKUQRl2cLcYOj+eRw=; b=SN9b9to4Bd4dhSPZrvD5Ip
 v6TQojxM8KFWFJbSgojmFZqVxzmpkrCCS7Bi0ctSCWNTpLP0C+Ltb2smFmZ9t5dN
 8H0cWcfdxawGXxZmZOxKv5iZZrdrRSh5ENXelBLtB+8O1cjQ4VNJBWzGOfDPgiYO
 0E8/MSmhw0cFXxAdjKqDebZ3qX1Y0mmgcxORhkBvByyHCQoQ23m1iSdgFSaKQdZF
 xDmDbMMKcZGxSF8R8V2NXQoLNCIL1jvVHqG/fH+Pkc2CGK/lTI8JGEfY3DWKHnBm
 OnmJUZLUdv+BwoWPMWiK4Ikr+HL7emzRoNrMO/poMgcCqISHnFes1IhfajTEwufg
 ==
X-ME-Sender: <xms:sgw_Yfk08ku3w2tB6OIiCaJwz8ukU_9LVm3ZGzSO97YdIBckz0UBLA>
 <xme:sgw_YS1gOv0XzLLVJbrUaxYBsjUNwJI9PihhLnmg_dVfbVOiZUBygwn5GUvF_Tta6
 hII1FJLLYK-K3P7mSo>
X-ME-Received: <xmr:sgw_YVq5H-v5FtgSUXDYNNPdwaK9kYeNunnKZCsNhzqgSXAblDCehDWjp07BpkGR9pSmzpNNV9T8erwdcgxJAi36B-YuUAXDmg5p>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudegjedgtdegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmh
 grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:sgw_YXkz5MzWwU4gJPWMz_8NWHOQ1DmnM4gv77MB2pfmpU60E_48jA>
 <xmx:sgw_Yd1kOOHLiDkMeW5kMsQlIqOfrSjHWCBtbQPI8FakjpnQQJaSug>
 <xmx:sgw_YWscRLJY93a522dC4jHw87H5KupnycUSN4X6eSrAGMMUpRqakQ>
 <xmx:tAw_Ya7jfDwgw7gUctNpUkbWkmcXDngX9I6l8AXMn46WIWNRv7f-Qg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 13 Sep 2021 04:32:50 -0400 (EDT)
Date: Mon, 13 Sep 2021 10:32:48 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: Samuel Holland <samuel@sholland.org>, Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH 19/22] soc: sunxi: mbus: Add A31 ISP compatibles to the
 list
Message-ID: <20210913083248.h3m775cbmwsvhg6g@gilmour>
References: <20210910184147.336618-1-paul.kocialkowski@bootlin.com>
 <20210910184147.336618-20-paul.kocialkowski@bootlin.com>
 <208239ba-01b1-451e-6030-894bd25770c3@sholland.org>
 <YT8BkjAZUGGYTR9l@aptenodytes>
MIME-Version: 1.0
In-Reply-To: <YT8BkjAZUGGYTR9l@aptenodytes>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_013254_212344_54A432D4 
X-CRM114-Status: GOOD (  20.29  )
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
Content-Type: multipart/mixed; boundary="===============6739936044144670664=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6739936044144670664==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="f2zlbewwwotbr242"
Content-Disposition: inline


--f2zlbewwwotbr242
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 13, 2021 at 09:45:22AM +0200, Paul Kocialkowski wrote:
> Hi Samuel,
>=20
> On Fri 10 Sep 21, 21:36, Samuel Holland wrote:
> > On 9/10/21 1:41 PM, Paul Kocialkowski wrote:
> > > The A31 ISP sits on the mbus and requires the usual bus address
> > > adaptation. Add its compatibles to the list.
> >=20
> > My understanding is that this driver only exists to work around old DT
> > bindings where the interconnects/interconnect-names =3D "dma-mem"
> > properties are not required (and so they are historically missing from
> > the device trees).
> >=20
> > For new bindings, it would be better to use those properties and not add
> > to this list.
>=20
> Oh okay, I didn't really look into it and just did the same thing that was
> done for the CSI controller. Thanks for the heads up!

This code was done to maintain backward compatibility. New DT should
indeed use the interconnects property.

Maxime

--f2zlbewwwotbr242
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYT8MsAAKCRDj7w1vZxhR
xZy/AP9rOXpdGd4BspcymmvG0qIIWP3Pq7kC/1bc4wAklO4KHgD9Ha2JWbrzpEPh
UGlrPhGtVhtUgMRZHOwB90O+gdiFLgI=
=Gzk+
-----END PGP SIGNATURE-----

--f2zlbewwwotbr242--


--===============6739936044144670664==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6739936044144670664==--


Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDB98C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  9 Feb 2022 09:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WdnxrEdquH50tceqjea9i0S1r9IhK/NQBSObbD/7NIA=; b=XYKn0em+aM298OKo8ccd4+Tbmz
	n4kRcBarsMMcmFtZK651hZzEafBUIDrBUDNo5xTBeMCdxQrmh+EgqXiQhBy1VOQfmP+pORG+xe1Jy
	LURukIQXMTYLRsdKP6rcLK+PxiEf7dyBdI4VZfPnbJisoUiMm3oA0KnDKDY9P8GQj6VXGBgn455sh
	qyBiGZcrP8H/r3s7eHI4OhcmABvXpc2gZdCPgi/msOXzNqC02pG3iYEBxLr8s9xW399YabjkWkxUg
	Gq0kvDKJwuTxPzX/4YeKWtXu1xR0bf7uJGkHMiX7G1FNeSr94eYHPwKJ87SLea9s5GdtYppxLpDxR
	0aQtJrmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHjDp-00Gtbo-4L; Wed, 09 Feb 2022 09:25:09 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHjD5-00GtOD-W3; Wed, 09 Feb 2022 09:24:26 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailnew.west.internal (Postfix) with ESMTP id A5BBD2B00092;
 Wed,  9 Feb 2022 04:24:21 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Wed, 09 Feb 2022 04:24:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
 :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to; s=fm2; bh=r+WHi0R36h9MJU2BZA08FzSXL4WE61GwNPzCwG
 RlIiU=; b=jdkynVt8Z4dVXBoxPsF91bObzh15W0I1gL/kqrI9rX/sI/hFfRX8Dk
 cptu+4xbmlSddxAb4emtuRR4o2OGeWxGp9PEs80HoyZ8rTeaQ0h3BoLnLi9R5tHY
 NyXXR3ecJhZtJP7uLot1t/xqbJ7XwaMwicVAoWboUo2rf9mDbpHNab2y680+0+mb
 DSb9SvneSMV1yWrXSzqbh3Y2O5goPBX22jv+4LjUNtCZs1Z3Dp5CQ98PBIQHgcn3
 KHYHBq8tTztMpcsJwRf8mGuhpn4f12wIfgb6i71Jx1q6+MoKjeUuPM5Po/VoK9x/
 piN+8tdZ2RjDhl/oYN2le6QQzqUHQQsQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=r+WHi0R36h9MJU2BZ
 A08FzSXL4WE61GwNPzCwGRlIiU=; b=TQaGFXa5pQ0MGpWqmy3qzElf5g8TvOFJY
 mSdmJA6zMrvgCd63lm9lj3kwQdR3ldPl/in309SqXs/y5yGkVKUoQheJ4t5WfUwf
 /WVWaYjvTgyQvE6a18n43tVikbDHPE2Vd0K0Sy1MT2D4A7mmxlaO8gHRNVVRGV99
 Th5gROo4Nl7igPdbqWQ8mhBDGqTHvQu1Kv5nvdBWF2d7dIu3o8XYB/e9uA7sNjKi
 YxTO8mf3oZ9XwfuTxrh8L0GEjdxYqTqBeoYWMRY/tqK9ADE+QqttnZUSFrBKHtyj
 oijNJRa3YVpZmQvO2PSfe59ooq4QMKH8VmXepBSO1SiNFojPXheEA==
X-ME-Sender: <xms:RIgDYiH8OaEGKA048FXosMiSvf0HFOA6rDhfUxcewWCFao5e5TDArQ>
 <xme:RIgDYjUcmBJNVH_kVtYhKUphQhrFjjKAUlzSrmJGVIKcXm9vqtzXQTavBIIrugKAZ
 9bbAlPtjy0SfJCBX2Q>
X-ME-Received: <xmr:RIgDYsL4V4IeE7bcxpEyK6D-OrTSA6RCFEESSSWOORhCAnEyG4Z8IP5OLFYJUW-vJ2zg1PqBEw3y6BVfdDT_votGP4MKx8V0NzdzuUQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrheelgddtvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
 udenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
 igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:RYgDYsGirlyUeHCQINzAZh1zb5RV3T9En_BRcFH3w-ymcZYU5xaVtA>
 <xmx:RYgDYoV2xAD6VVKYIv-i-3_DDg7xbhND6c_T1M230gqtGDrIWctKIg>
 <xmx:RYgDYvOQpO_DW-kkwMefZRIAQyZ3iW6NsIKdYFtlV6iHL7o7b_W2AA>
 <xmx:RYgDYvP0C5oZwFBS5GbgomnuUxHv3IES5_J7f4_WSoHXAUVp1vLrwZiTKb8>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 9 Feb 2022 04:24:20 -0500 (EST)
Date: Wed, 9 Feb 2022 10:24:19 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev,
 Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 30/66] media: sun6i-csi: Add bridge v4l2 subdev with
 port management
Message-ID: <20220209092419.i3kver4f2am7mnow@houat>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-31-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20220205185429.2278860-31-paul.kocialkowski@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_012424_116859_E1CF702B 
X-CRM114-Status: GOOD (  12.39  )
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
Content-Type: multipart/mixed; boundary="===============5624337256316897313=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5624337256316897313==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="g7zgo7b3vyccwkg3"
Content-Disposition: inline


--g7zgo7b3vyccwkg3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 05, 2022 at 07:53:53PM +0100, Paul Kocialkowski wrote:
> Introduce a bridge v4l2 subdev to prepare for separation between the
> processing part (bridge) and the dma engine, which is required to
> properly support ths isp workflow later on.
>=20
> Currently the bridge just manages fwnode mapping to media pads,
> using an async notifier (which was previously in the main code).
> The s_stream video op just forwards to the connected v4l2 subdev
> (sensor or MIPI CSI-2 bridge).
>=20
> The video capture device is now registered after the bridge and
> attaches to it with a media link.
>=20
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

There's a bunch of checkpatch --strict warnings that need to be fixed

Maxime

--g7zgo7b3vyccwkg3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYgOIQwAKCRDj7w1vZxhR
xUGrAP9MfsAjtas6E+7vA9TK2tBtzcbdwELvIFIyyBZWy0dc4QD+IswKSRQieQXt
DCSL3vcIVMqHg/e27Rl4TkrPKnfZmQc=
=Lx4Q
-----END PGP SIGNATURE-----

--g7zgo7b3vyccwkg3--


--===============5624337256316897313==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5624337256316897313==--


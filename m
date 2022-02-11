Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07804C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 11 Feb 2022 16:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9WajhpUNzUczWp0o60DUUPU66E6f7A7fvPxW28nHzsY=; b=3uJUERh7MVabaogTPc8+Qw3kmV
	yLjx3Pfn7oKlNQ+H16f/9Ls+a8efyMGfRLIYA1UKtVDN+rDqRBVOPu3i+Vq21GQxj6+kX67xUMssf
	rsjVVuoMOGbuOtIL9tlUgmbifOnuDzjVVJ+JYf/sQTUrSLYWbFpVwPqj1mLSoAEZVem2N5ywps7jo
	6H2h9Tsz+CE+AnMXgsmupo3HBrq5yo/HS7CsFj8CVHiLWMUHhNRdRbPyOHPPfCtKcffI3DIX780zn
	QsMjX0fNzmWP4vEmDofKwI3jP3Lf/6LdiFCoMTVPOj5yRDaCf6xrvxWe538+wrd+dKD9sN99jbDVa
	Efg38J0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIZ36-0085Sc-FO; Fri, 11 Feb 2022 16:45:32 +0000
Received: from wnew1-smtp.messagingengine.com ([64.147.123.26])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIZ2j-0085GD-M2; Fri, 11 Feb 2022 16:45:11 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailnew.west.internal (Postfix) with ESMTP id C10372B0011D;
 Fri, 11 Feb 2022 11:45:06 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Fri, 11 Feb 2022 11:45:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
 :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to; s=fm2; bh=eo8aiB2mus8/xVU+tXfVcKNpkakKTM0CPZmwuT
 Q+Md4=; b=OkQHq4iQXuj5DGw/FQexPgUXogxYrjqPUWML2VbmzfPJ2eUYtQ8nvv
 EiRgy+QJN8pY3m40VbWgF0mpZ+L3kYqv9KRpARy0/TTHMAFemv7NxIel+pEX/FeM
 R09c/a9ZDqnp6Jh9qDixD6HAkVRx5r2gKizzrmjuj+krKC0AmXIW6360yO4iVLUp
 s544StMYzUxFRdHc0a2aeeMm5cBQauEGlCwDS8U9yp5AEMG0jtZgkgwBT9JruTJY
 KR7L62BZVHn7S3BJZRrceuHyzUVJpaGyWPVUx75ThhM7+XEuNPSd12uGmBAQx3oM
 Hvqghp9GBrid+uo0u5Zy+W3Qqmt9yxsA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=eo8aiB2mus8/xVU+t
 XfVcKNpkakKTM0CPZmwuTQ+Md4=; b=Z4lYehPf3DNwVu/GkcgzeRBiF3+syGBKM
 PfUYC5CLUsb7TvDfymYt/3o4PGmYUVVW/PO9S0yidZqjac3a0eW7HBvnPuCcXg/b
 SFT2kEmzwIkMBH9yF8rqtckESs7lxXX07LskjmzPQXZHxrfI1/bhGm+26gGzpRm2
 qrLNoqE+I9rfr1cvhKuXPxeegYB1VnLJjzY99tuO2iw3cV1uF8Aa1++VyNuUIDU2
 GwX4SYKyduD1t1qdVm2S9+Zalga4ueQ5AvzG56xeiNbTJoHit6/OsFK5j8HYCMij
 FTQ8IswHgj3/6B3h4d5NzRVAf9HE81WSN+6DOk1ExhRvIGsU0v5rg==
X-ME-Sender: <xms:kZIGYpR7yqMcw6nGGSW-_VtkatBlAxVE49bTMRFlGDaVcTijmugTgQ>
 <xme:kZIGYiyyozTfomQUxetA33-kqeMdJ6N8ZLHLOl6Y5l0pf_8IIkwsxf2JoNbGIzo0F
 EDnAy6UWxLs4GNQ7F8>
X-ME-Received: <xmr:kZIGYu28ttvvFUbBN69JusevKwMFMqLWssQZSRMxKoiDOO_58Kn1k17K4MRzdS1_GUQHZchBUgNNI7R5qLCCbONFzeALzDRrEjnrPII>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrieefgdeltdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
 udenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
 igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:kZIGYhDL6q-gg81aukUianHJm_n8E-AK0WCmh_2GGHyeIIyCZRQZ0g>
 <xmx:kZIGYiiabCj5_MOaGMzxe4tPDVKlo9dXfQuFoaNOPpUrOInwb0DWaw>
 <xmx:kZIGYlovhBY75W3cYoziUJpOHxVfQX5MtrA-CPjio4BxxGpozLvTrw>
 <xmx:kZIGYrYQ5YCgy4P0RGMCa3JlN2ipbfJHa2v2E-Dod0mIUqJdYJsuzg9Xn7Q>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 11 Feb 2022 11:45:04 -0500 (EST)
Date: Fri, 11 Feb 2022 17:45:03 +0100
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
Subject: Re: [PATCH v2 32/66] media: sun6i-csi: Add capture state using vsync
 for page flip
Message-ID: <20220211164503.5hftzazx56cwvk66@houat>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-33-paul.kocialkowski@bootlin.com>
 <20220209092642.hhppmrrekj7zrorj@houat>
 <YgaDhxYLciLUm5ks@aptenodytes>
MIME-Version: 1.0
In-Reply-To: <YgaDhxYLciLUm5ks@aptenodytes>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_084509_818378_8ADCE7D0 
X-CRM114-Status: GOOD (  26.42  )
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
Content-Type: multipart/mixed; boundary="===============5708293167415893331=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5708293167415893331==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="k3t4wpl7ilwsk77w"
Content-Disposition: inline


--k3t4wpl7ilwsk77w
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 11, 2022 at 04:40:55PM +0100, Paul Kocialkowski wrote:
> Hi,
>=20
> On Wed 09 Feb 22, 10:26, Maxime Ripard wrote:
> > On Sat, Feb 05, 2022 at 07:53:55PM +0100, Paul Kocialkowski wrote:
> > > This introduces a new state structure and associated helpers for
> > > capture, which handles the buffer queue and state for each submitted
> > > buffer.
> > >=20
> > > Besides from the code refactoring, this changes the page flip point
> > > to vsync instead of frame done, which allows working with only
> > > two buffers without losing frames. This is apparently a more
> > > appropriate thing to do with this controller.
> >=20
> > Why? What issues were you seeing before, how does using a separate
> > interrupt addresses it, and what makes you think it's more appropriate?
>=20
> I'll try to update the commit log to address this, thanks.
>=20
> One of the main issues that the rework is trying to address is the way
> that double buffering is handled, which currently requires up to 3 buffers
> to work, due to how buffer configuration is implemented. In particular,
> it's synchronizing to the frame done interrupt which seems to hit after
> scanout of the next frame begins, so page flips are always delayed by one
> frame.
>=20
> This is currently solved by setting two buffers when starting the stream:
> the first one is set before vcap is enabled and seems to be sampled when =
the
> first frame scan begins and the second one is set after and stays until t=
he
> second vsync hits, at which point it becomes the current active buffer.
> This way no frame is lost but 3 frames are needed to start.
>=20
> This proposal changes the sync point to vsync which allows page flipping =
to
> happen for the next frame, thus only 2 buffers are required.

This should be in your commit log

Maxime

--k3t4wpl7ilwsk77w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYgaSjwAKCRDj7w1vZxhR
xbTMAP0ZxnXJgdsVzBNK31eF7ZlX4Snoq2+j1MQhKokvYb7MgAD/WKJ1C/ETfaBn
jWqoaBEKuLs4T72QKJN7yiyARbVePAI=
=qBtU
-----END PGP SIGNATURE-----

--k3t4wpl7ilwsk77w--


--===============5708293167415893331==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5708293167415893331==--


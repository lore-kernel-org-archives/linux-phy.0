Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94B59C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  9 Feb 2022 09:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y5KFAHh7VusqLgjyQEc2uTDwB6UkEtJ0lvJyyLbXJqI=; b=1HrPpzkzNuGkQ9tX1wfDqxRYuL
	86YD7GBxxoFabukg+yHBZ6RHUJPOpHrpzudQownn557OpImQ6F3/BGhOIvFFP6684YynCyShsK/IJ
	kwebQ9rzZgIm3oV9i2gMicXG7H+1gbj/hE1d/q8Ntk552moJAkU5SmBJirKKnV9of/Pq+yp+wcDLd
	Rl5D8TVHBBL0YPrSYjZkKkqNoPkkXHnHrvWR7gAA38DGBT66blJs2WmhVy2gHfOItigh+sfENW1KN
	cOzGkqVWneSbmempwugZ7CXEMKNOXprEO6FM/GkYNvxavZXh5Ri4BXfbnHLhSH2bOtqywqlD6SSNC
	3JP9djBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHjSH-00Gy37-31; Wed, 09 Feb 2022 09:40:05 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHjS3-00Gxxv-Al; Wed, 09 Feb 2022 09:39:53 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 115792B0024D;
 Wed,  9 Feb 2022 04:39:48 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Wed, 09 Feb 2022 04:39:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
 :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to; s=fm2; bh=zZDTW0FB5xKeIff0Mgbh1Hl+LyU717M3Sxe8pk
 IOuHc=; b=KlmaBgGevb6slB6ovY6OBGrpRLV8tshmia32SHGxOGlrtr6r9ZSNpZ
 Jb9Ov9d6JaZ35Nn7KWKTfA3hAYfX0jjz5bAgcsOe/mkD4+yMLbvPM0bdavTZNZRD
 MfTQFtsvJTp7m+ES+uT49HUNf8PT94qOit8mFniJrAndZEKJEyoDquEtypBtNq6D
 4OOoQyHgRwFY+qigKYrfM64ctNZlTn1nxu3Go/lGlyT1XYvNkW0lpPxslyLXhQTV
 Qy9Hw0pvkVbTnE7HcDmmeX/bjgm4q88G9k74n7t0kI56n0ZxBLhepChTU9JW/t75
 9+lWl8GpcFlNEeafSQsICQrXLatRueLA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=zZDTW0FB5xKeIff0M
 gbh1Hl+LyU717M3Sxe8pkIOuHc=; b=FURyB28ibG4wKLzvnt1IiJgZcL3W0Y5u+
 XQdEwRtaBvxDjjnpyBGUrfMIBRjgr334IouWW5IeIv5j2modJRRj4QkXC+xy5A9U
 ppRch0eWsuE8XU00D0SEBdF1hW6IsWse9eSCLywMkQFhomRCYDJNvXEnv+yAbrsz
 Awhb+5OyQKDK/7dQBUUHhEdducnVb7EPYUweyzbBfsPC05yKmRvjR4J+CH97Iggo
 UzJdu6pUCkVtjETJqMmN2pW1cNa8KEzGjj58Ab/MoFrKMqRfKVu5UHnuMTVXxKKe
 nflyBCFF5TlmYZyX3kQTulwqf5nOXYrWi/ECbS8SPlm5OGpcUCLhA==
X-ME-Sender: <xms:44sDYjSxlulXbXOJqCM8WdVKQGqZt13IBP2bSh2AF4mf_T2aZDr7DA>
 <xme:44sDYkxHRJSC2rvpTW35Jc5VZnXAAEyya_edLFYC5GF5grGz_-pkYyky_7mWtArdq
 A_TR9_MOpQ1olgXsPw>
X-ME-Received: <xmr:44sDYo37kBJDFUI0HfXtyJ-MMzuKgq_p1SQjGm7_qOZsvqyql4-VV6oSVj2umtI5i7hUsBgzCPA6dDbJvbxXAIKEhQLuTI1Z11jw5mY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrheelgddthecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeevveefffduveeitdegtefhhfetueffteefffdvheevvdehteethedvleffgfej
 vdenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
 enucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:44sDYjA1m5oRlsmPJVwlSRYEXcPh3mzF2RoLWejLVWrr80SAVR5S2Q>
 <xmx:44sDYsiJYipLR3S9fJRo7q4pokp8cjkfqjwsk4D68iy52hLwQ40XfA>
 <xmx:44sDYnr2BIm6RArU5B456VZSpZCgS9DWObNEBchbLtQyp3KroLcaxA>
 <xmx:5IsDYlZ8pSIB5aLnEULMyXJ-SpVxye41G7b7NbC7R0erH2yzJkQLSRkh33A>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 9 Feb 2022 04:39:46 -0500 (EST)
Date: Wed, 9 Feb 2022 10:39:45 +0100
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
Subject: Re: [PATCH v2 33/66] media: sun6i-csi: Rework register definitions,
 invert misleading fields
Message-ID: <20220209093945.uertj7wut72tximz@houat>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-34-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20220205185429.2278860-34-paul.kocialkowski@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_013951_613003_2E2FBD64 
X-CRM114-Status: GOOD (  11.16  )
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
Content-Type: multipart/mixed; boundary="===============0523359950385363019=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0523359950385363019==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y5bsrtm5k7kfdw3r"
Content-Disposition: inline


--y5bsrtm5k7kfdw3r
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 05, 2022 at 07:53:56PM +0100, Paul Kocialkowski wrote:
> This cleans up the register definitions a bit, adds a prefix, remove mask=
s.
> Registers are now fully defined, some additional fields were added when
> needed. New format definitions are added for future use.
>=20
> Some fields are wrongly defined (inverted) in Allwinner litterature
> (e.g. field vs frame prefixes), which is quite misleading. They are
> now corrected to reflect their actual behavior.

How was it tested?

In particular, see
https://lore.kernel.org/all/20180305093535.11801-7-maxime.ripard@bootlin.co=
m/

Maxime

--y5bsrtm5k7kfdw3r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYgOL4QAKCRDj7w1vZxhR
xVXMAP4tUZl6Zly0E31lIvZlN0DimuVQB8+cy8faHTKuekbwPQEA4bndLWw2iOVW
ikY5YFrnuK1/de7lSQUW2bhUHCbSPQ4=
=Pxbv
-----END PGP SIGNATURE-----

--y5bsrtm5k7kfdw3r--


--===============0523359950385363019==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0523359950385363019==--


Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5698C433EF
	for <linux-phy@archiver.kernel.org>; Mon,  7 Feb 2022 09:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ppFnyOguCUcJ6+OBnhsd17Zt0T3+ryWMSJ1+IEJc1p4=; b=omRRftkIVVtPV0f1tqF5SEkVpA
	SMm7yHS1+NEINcMQ9PiQo9ukdA2uSU5nZ9Juox3c3A8zIgQkcNd7dk3HUHo3wvVLzOrc1Q2kZNlE+
	rfjIC2sFdM8wwFkP0J7ir4fMfvSDdneL9wQx8dNgYEEegEacIPFtMDjh7k+h4+1hKdhYKxg4PJ4CF
	0Lg0kstUzgF+gKUYoyD3pAlepl2d0GecsNRmBcd5ydBUNNacaCR/eSHJeYt89ORYxCUcTxWdBbMyx
	VuZc93v2R7oKrNHwQUo16EQf+8fcM859RJs3ImDuRVCyzSSxIApqDFp+BAOKc25uWAT+9hT+4lsR4
	PYrMNBrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nH0nT-009i5L-7f; Mon, 07 Feb 2022 09:58:59 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nH0n4-009ht4-2B; Mon, 07 Feb 2022 09:58:35 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 506A35801B4;
 Mon,  7 Feb 2022 04:58:33 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 07 Feb 2022 04:58:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
 :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to; s=fm2; bh=LaJ0v2ms79kLOJkjg/3kGK9hXazOFFTsZfGFTE
 rsluE=; b=tDAyrh7fO5UWuYXdeQ8lpAnakCa358D+0NBqMt8zV9dw/WZZw9KVgK
 OyXcMpHI/M02B5dP8dTcDiAY+UJdf1YsIszh253r9pZ3YChph+jryADVaZ/gncST
 Kc6T7ejEvXC0lbRjn9XfJcLTfwPH/9RsT7XniJecdYkD7q/uzeYVcloL8JAUPyHl
 F+u3OTeGgmNk6bSmLeCToJg8pKqW5ZSxwPqL0IPO/C+rW+Y2jhnmtpePQ0zaBKg4
 pK218bBspGaXBHza8dHGMu8a60Giparnupw/vwQZA5HhlvFji1ludGbcfJmvZ40F
 ZaEaKEpBvgoykZvhFfyCzew1XXspvVyA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=LaJ0v2ms79kLOJkjg
 /3kGK9hXazOFFTsZfGFTErsluE=; b=RI3EdBlZEh02qsohqW0pK8fQFNFB3vt5s
 CrYP/JrBbmikFUEfDULCliKhZbnHWAuNqXXz84jkx8pOo1IL34LROcYShY6/3o+l
 ZE2jONyqeMND2SY4SQztG7ANrm2lcP5FXX0PjZwa+LUa5XoPIIKHeag55D0xxLWg
 IUne7wWMVBBlMBZSK4nbrH7ZqgaK5leMiWRBTgrdIKy7r1ma5JObwso1ec65K95T
 qhXhV7i9ZKrFmPFL+KpQKN/Qy+L6CQEEfW2W/zHBYNtKOUC1Y+RzcspOSDws4qRF
 9nUAOZWgFpZmAdiDnea1g0EighrnWwnd9QOeB9YwbFFiNXUm7eniQ==
X-ME-Sender: <xms:SO0AYqSu09xfPBE5UZ65DLtaNJ_e7DULAa93cXP8xp6VuVbA455mRA>
 <xme:SO0AYvzPLrSbrPrbTGuxb-ka5qO3Fs1dGnmzVs5SuLorUS6vt6y1huPZC_639ICFw
 hbbPWAboHIrEsXLQqk>
X-ME-Received: <xmr:SO0AYn1OewLxK-rj4K5kUbmjDwGynPvPWaD1fZ8XRTLvEghzOuDqBsaOtjeHvqbpKWtYIT0nAT_Vgyhox8BpNywBiGjS3MfuyNoyN8U>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrheehgddtkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
 udenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
 igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:SO0AYmAlJN0QGaxTfRAH7BpgWzAW6uWFnVl-I0lABJcGSAibiW5Uqw>
 <xmx:SO0AYjjuu5KlaBudBxxIpLiCHJKCE1xYTaC-UhOPr5AFF3-8KJF9ug>
 <xmx:SO0AYipakf4e-36UGuC3bY2QKjHLp-P6SRxr-t7gopU91T3LyNiVTQ>
 <xmx:Se0AYsZ6Yr9X0QT_gTp6A7pBGPTtKEaInvNlUZo2XIPRYk_OYwfTRw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 7 Feb 2022 04:58:31 -0500 (EST)
Date: Mon, 7 Feb 2022 10:58:30 +0100
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
Subject: Re: [PATCH v2 25/66] media: sun6i-csi: Pass and store csi device
 directly in video code
Message-ID: <20220207095830.k2k2nmkr3kqb5rdt@houat>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-26-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20220205185429.2278860-26-paul.kocialkowski@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_015834_222203_060129E3 
X-CRM114-Status: UNSURE (   9.44  )
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
Content-Type: multipart/mixed; boundary="===============4170321518042139909=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============4170321518042139909==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p6vzlvrvhk5bygbl"
Content-Disposition: inline


--p6vzlvrvhk5bygbl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 05, 2022 at 07:53:48PM +0100, Paul Kocialkowski wrote:
> The video structure is part of the main csi device structure, so pass
> pointers to that top-level structure directly. This makes it easier to
> navigate and access other elements. No functional change intended.
>=20
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Reviewed-by: Maxime Ripard <maxime@cerno.tech>

Maxime

--p6vzlvrvhk5bygbl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYgDtRgAKCRDj7w1vZxhR
xQsoAQCTQuGPJjgwQxNDB56tWYcoUfQGHYrEnOAcVpx3F+5OvwEAoyMDIH8m1x/K
QBNwdA2MghhwXgi8r2tujv77nhejlwk=
=nT9H
-----END PGP SIGNATURE-----

--p6vzlvrvhk5bygbl--


--===============4170321518042139909==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4170321518042139909==--


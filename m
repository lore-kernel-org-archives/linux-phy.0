Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F073AC433F5
	for <linux-phy@archiver.kernel.org>; Mon, 11 Apr 2022 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XNibhrZ2yGra6P7xUaqN9XGvvZXc2zCtSC6jVLQze60=; b=dL0G0WO3ugyoQMK+v+fdcdrpLe
	xgPWGU2sVzQ7gc/ke3CMlnQ7KXrNCbC0YpWQuB16tc09YbeYjFpZjl9EoS8Y0jGHUIvqGbTZtjZhQ
	32sdzJKv0KYdEDzlukagXSG6MnNx6VsfQvZDeFEQsA+VpeoL8A9P05KVzIRAHsvK3znpmqO49rlDi
	BzUACElasHEYmyO8iIaTtUHD6DWJTN6PqaIBOW74EuINc8/PT1wbpk9WuQaK0mxvuK5aYNKiwT113
	G3eLz5WB5qj6YyF7CV4ZibuFyLF9N0Dn/MWoJ+cMJTEdAVY4D3immLniilJk+rSDTbuHHNEwqo7vA
	+xgkPx5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndsi1-008ote-CA; Mon, 11 Apr 2022 11:59:53 +0000
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndshi-008okn-Ds; Mon, 11 Apr 2022 11:59:36 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.west.internal (Postfix) with ESMTP id BD91C320208F;
 Mon, 11 Apr 2022 07:59:25 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Mon, 11 Apr 2022 07:59:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
 :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to; s=fm3; t=1649678365; x=1649764765; bh=0qJaiZk6qA
 srEaDmTUAGx++TIqfK79p9zce7kcZU8lk=; b=c8ZfBNdbOZ7JWXONVaRAFIwRJ0
 IAZwVz9BvCu5buQAisI+tOp73hcSH7CKMB7qZq7C29xg0Y/+Ixntr3r3bnW4EF6Z
 WO2X2LT+E4FCGlTIPeuPeXoWn09HGxwg6u1b/XTrCw7EAx9bFcgqqFElwceF9rsE
 PjvF5mcc9oJcf/UQZFtNABpDDrZIfK4kaRjnwUE5Q0/DDDPY4eIkbM+r3t1JawSH
 L1d9fR9arrIuXyS41V1nVXbkB3NZQRBBciH6gmoFTVyfs52uydzBDurSr2CZhoCL
 Xih8FPntb7R9D1b39zkD73x3JSOnnKeIUm61dU3BBGrum9YAdU2woNgJygjg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1649678365; x=
 1649764765; bh=0qJaiZk6qAsrEaDmTUAGx++TIqfK79p9zce7kcZU8lk=; b=H
 DBAb8A1uIs4YtS4QeBTFI2ppSHZrxmkXoCN6Fs4DnlnoR2AxBxm4Jg+tg78QxZz2
 ldhwdMWmWluO0Y6uMoOVaBRmabj3ppmYBiursfWE2XMvIfxXZjtotMALISiFqe2w
 +PLGSUbxNJZSlNqBIQeJRXAapqqLB4/sAVJqC4BzMGIf7y7aepZxuqKM36VBpMc1
 DDGtsoz3fZ0cvl83sKaANHGgg9XSbKe0jX8QjVMmLljvLCobsXMcEmeqXiALXpSQ
 zaXzS0LiYfayuycfj4wgj2A6fL+fMCp8YqIVBU9/iDkhLJg2+ebC8IUgrjiPfnF5
 gsAu/2OQYDqyPDGF6husw==
X-ME-Sender: <xms:HBhUYmkb5ANZ6yHcNeOX1kwyCC6UUbin4mDazgnMfltpGPfEAo2D4A>
 <xme:HBhUYt0dgjM5n4khqg6Tffblp5ri6MtBL9ekD0LbmTaJYfFS7t_vrH3h7lJ1UVfAP
 -NqYtoZbId_Cb4ynqI>
X-ME-Received: <xmr:HBhUYkqdV_obaPjFDVMikHKt0Y2vqGOhwyj6r0MlD-lP3PuGKx0017AcvqT1Cte6X6Nvjgog1YETQ9XTWEYRbRSqa5z6fFczttfaFJQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudekiedggeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepveevfeffudeviedtgeethffhteeuffetfeffvdehvedvheetteehvdelfffg
 jedvnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:HBhUYqngub_TQhzydet8XiOKo2NKBCT3zfx397NWrAq0QHsKR3un8Q>
 <xmx:HBhUYk1CDIja_720Rpx2yIfjIwqRoOFkZFFVrq4BZlkRs97Rsd6j4w>
 <xmx:HBhUYhsFrFZLgzStGLiSxFCLEQj_5OgSZskYIinzaXYOnAvLmS6B9A>
 <xmx:HRhUYtFOhZ3bAf29gHLX7MJzbWbnrPNScgnXl1IwU4Fln3aFXN_iEg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 11 Apr 2022 07:59:24 -0400 (EDT)
Date: Mon, 11 Apr 2022 13:59:22 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Robert Foss <robert.foss@linaro.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 patchwork-lst@pengutronix.de
Subject: Re: [PATCH v0 07/10] phy: freescale: add Samsung HDMI PHY
Message-ID: <20220411115922.luv2gyutdecvsxa3@houat>
References: <20220406160123.1272911-1-l.stach@pengutronix.de>
 <20220406160123.1272911-8-l.stach@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20220406160123.1272911-8-l.stach@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220411_045934_517844_93A192C1 
X-CRM114-Status: GOOD (  11.64  )
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
Content-Type: multipart/mixed; boundary="===============7704864325131369352=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7704864325131369352==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gze2mcn7iv4mzkgz"
Content-Disposition: inline


--gze2mcn7iv4mzkgz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Lucas,

On Wed, Apr 06, 2022 at 06:01:20PM +0200, Lucas Stach wrote:
> +static unsigned long phy_clk_recalc_rate(struct clk_hw *hw,
> +					 unsigned long parent_rate)
> +{
> +	struct fsl_samsung_hdmi_phy *phy = to_fsl_samsung_hdmi_phy(hw);
> +
> +	if (!phy->cur_cfg)
> +		return 0;
> +
> +	return phy->cur_cfg->clk_rate;
> +}

This means that the clock will return 0 at initialization, which will
throw the rate accounting in the CCF off.

Returning 0 here isn't valid. Surely that phy has a default
configuration at boot that you could use to initialize a rate?

See https://lore.kernel.org/linux-clk/20220408091037.2041955-1-maxime@cerno.tech/

Maxime

--gze2mcn7iv4mzkgz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYlQYGgAKCRDj7w1vZxhR
xeBpAQCJcFWh2PVcJIOtynWxA1viOlH3w9X5no7GMk6bkiTkvgD7BJp9gmbCUMvt
mGBDtMSqVlbzzUn4KoAnBisVHCZ4awI=
=jPTb
-----END PGP SIGNATURE-----

--gze2mcn7iv4mzkgz--


--===============7704864325131369352==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7704864325131369352==--


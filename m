Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46F2CFD3762
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 14:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GmsfbZ4CwbozzbMSQOl6iPCebnKcvwIWhHROeEnB7rk=; b=KvhDCnKnRVJw2L
	pHQ/uxZ83kGQ2QbfB/VTxv2JtWLvdTmduo/dHtsDzwm+lGFpN2JCKs4XUkVKqSo4aioGhdcBe0uee
	IjU46oM82KBVC5fMWrkxULbssPJ/q/NfGuO7e4db5IeDXQLqd7/PEAus4bNWfM6e3sj+lb31XFewK
	EAMPkYRZchqQbUiEsrz1OqyHHTv3hfDbepZ0GO/IFsO8zoTGugmZRcoFzHw5O0O6kUf0E1Nbpeotx
	xlgYOkE7qwsBF5ccFzl6odWMGqS0lauFA+ABhmItwpQ/1A4ir+uj4E/jFQNdf+/RtSsHNy+/fnrDN
	Eq1vQ3urgGvkeBjMxW0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvFc1-00000004Abs-3whP;
	Wed, 25 Feb 2026 14:11:37 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvFbw-00000004Aaa-3w4Q
	for linux-phy@lists.infradead.org;
	Wed, 25 Feb 2026 14:11:34 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-65a1eb5dcb7so791665a12.1
        for <linux-phy@lists.infradead.org>; Wed, 25 Feb 2026 06:11:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772028691; x=1772633491; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/X7TGnbDY8JHbzvNZLr4KocFzXXLBLgEWZOADNbBVWE=;
        b=h8/ms5lYFzE59yrJCpdlUuW8Osa3IQxIUB1nShsVMFQ6on8OcnQkzQqr0nXuzBXGZv
         AVVcIpwdNa2chI0PWxmDQ/KgtGLn8VlelL6UrIDWnEVpkIQjxyyxk/1gVynLJYH8rVqN
         Vx5AgI9ao5iFjELuDymyHQ3wQGIdjaoFXiF7B0gaqhNaey4/gJV9+Id4LtKZKh+aMsd1
         1+q9fSE41ZkA87Iyovsso4EiHrUFST3SvEemFtfyz3Qq+NxPqmbuVMEqM+yx03uXi8/t
         Em5bdervh+27FrgQ4DcQAD1+RfoLBpDxMUTdDVbe45FDlvW+VMWlGHIV/n4SE7E03NBc
         bDnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772028691; x=1772633491;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/X7TGnbDY8JHbzvNZLr4KocFzXXLBLgEWZOADNbBVWE=;
        b=BqJk8me0iPJpyMjhf9clvqF/s20FXCyqhKeFhmyGmFbriT9ydspo1skzlfP7Sqo4XO
         SawzNLWie1xKkSDKdCoIJWcx97qlsPbyVRQwyVNdIeot0Dl1ZXm+mMWF0JJpwQe5Nk/v
         aLoQoKUltC4frZ1EZkxDGx5jYGDwNF902T1V3FhxLocIlAyOeVkln1tSBio0AwQlX2ip
         YZNM7Yp2eccrOvuEuDNbNGwbzXX6EkN/Pp9bQNkGIfoRXdMuFHixQG6INF8M7CN9ztQn
         3dWAmDGW7rSN1H0eAf9vGyWYpl23bsSg56PhaQKpNyqHPM6Dr8uoZ3sdPmDwFpVRRs6J
         VrdQ==
X-Forwarded-Encrypted: i=1; AJvYcCXioVMT6cAP0x90T8sTZN3ou+PQBi6/GPdZbBQkE5YQMZnBAIYIoxl9lWqqbu4AlUJvBSjNKMve2g8=@lists.infradead.org
X-Gm-Message-State: AOJu0YyBQzdr0exrXWjLJBT972SRXROazCGOFPbhcX1MJPHIehIQsW0x
	W2+OirmNX3KR1H7IcbkZymeg7OZbVZa8sBbfOJEKjmeIyodYDlqHYxT5
X-Gm-Gg: ATEYQzyPPoi4HEsgxZaIRmZ+zZ82L0xikxzAxdUd9t/Kv9N+5LMn9Y6YF2wdk4Cq8t0
	zSz5JN9bTnvAo2b/Fxg38pPdhlNB8GzsqXz7rtqFgGuEbUKRsmtvUr/59FIvlue0PkWpZ51fzfg
	TeCk24y4rKAqyCpPQtJy3Vf0qPOh4zW+iJhd9/aQBKQBiKrgTeNiDykdAml1JR2oi/JBG7wCU0q
	FOZ5qc0XZbrk6VBybmrlgrYIdr0UbWtcQLLDsC6q6GE91xYWJ0CnTjkscnuFVCzbqRZi24AP9mI
	gbTi1y8sic1gZFYt5WDXBQCTd0KvSD7uePF8Fg8osu1uhe/6j3xsj+GxQJGcdpO0TgGwjZlMape
	vuhi9tMbl5zXVg2e4oPwizwwSnb9xRHz9wqZbzWCCD+c2t0TMyxuiu8XO1D6IWQCHubGgQFEFeB
	RwXijIEfmO7jDJKg==
X-Received: by 2002:a05:600c:6218:b0:483:702f:4639 with SMTP id 5b1f17b1804b1-483a95eabd7mr166023945e9.2.1772022593550;
        Wed, 25 Feb 2026 04:29:53 -0800 (PST)
Received: from skbuf ([2a02:2f04:d608:3a00:6e08:ea2c:b2bc:dea])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970bf9feasm33655969f8f.6.2026.02.25.04.29.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 04:29:52 -0800 (PST)
Date: Wed, 25 Feb 2026 14:29:49 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: =?utf-8?B?VGjDqW8=?= Lebrun <theo.lebrun@bootlin.com>
Cc: Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>,
	=?utf-8?Q?Gr=C3=A9gory?= Clement <gregory.clement@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-mips@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-clk@vger.kernel.org,
	=?utf-8?Q?Beno=C3=AEt?= Monin <benoit.monin@bootlin.com>,
	Tawfik Bayouk <tawfik.bayouk@mobileye.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v6 3/8] phy: Add driver for EyeQ5 Ethernet PHY wrapper
Message-ID: <20260225122949.pt55t3eefr5nawmu@skbuf>
References: <20260127-macb-phy-v6-0-cdd840588188@bootlin.com>
 <20260127-macb-phy-v6-3-cdd840588188@bootlin.com>
 <20260210193516.temrg46yozxma7xb@skbuf>
 <DGND4VXM9X0N.2CP1VBD8E128M@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DGND4VXM9X0N.2CP1VBD8E128M@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_061133_027210_91B01BA2 
X-CRM114-Status: GOOD (  38.38  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue, Feb 24, 2026 at 06:20:21PM +0100, Th=E9o Lebrun wrote:
> > Could you please add a macro or comment hinting at the origin of the
> > magic number 5 here? You could also place these 3 lines in a common
> > helper, also called from eq5_phy_exit(), to avoid minor code
> > duplication.
> =

> ACK, something named `eq5_phy_reinit()`.
> =

> I don't have precise explanation for the 5=B5s value; I only know it is
> time to let the PHY settle before further register config writes.
> Is this enough?
> =

>    udelay(5); /* settling time */

If there's a single occurrence and there's a comment, it's fine.

> >> +	      EQ5_GP_SYS_SWRST_DIS | EQ5_GP_SYS_M_CLKE |
> >> +	      FIELD_PREP(EQ5_GP_RGMII_DRV, 0x9);
> >
> > Quick sanity check on your proposal to use #phy-cells =3D <1>. This is =
not
> > a request to change anything.
> >
> > What if you need to customize the RGMII drive strength (or some other
> > setting, maybe SGMII polarity if that is available) per lane, for a
> > particular board? How would you do that if each PHY does not have its
> > own OF node?
> =

> I have no knowledge of what that 0x9 stands for, I didn't see the point
> exposing it to devicetree. We could plan for the future and add a cell
> or create subnodes, but here I kept it simple stupid. Is it OK?

If you don't know that you need to customize anything, it's fine the way
it is.

> >> +	writel(reg, inst->gp);
> >> +
> >> +	return 0;
> >> +}
> >> +
> >> +static int eq5_phy_exit(struct phy *phy)
> >> +{
> >> +	struct eq5_phy_inst *inst =3D phy_get_drvdata(phy);
> >> +	struct eq5_phy_private *priv =3D inst->priv;
> >> +	struct device *dev =3D priv->dev;
> >> +
> >> +	dev_dbg(dev, "phy_exit(inst=3D%td)\n", inst - priv->phys);
> >> +
> >> +	writel(0, inst->gp);
> >> +	writel(0, inst->sgmii);
> >> +	udelay(5);
> >> +
> >> +	return 0;
> >> +}
> >> +
> >> +static int eq5_phy_set_mode(struct phy *phy, enum phy_mode mode, int =
submode)
> >> +{
> >> +	struct eq5_phy_inst *inst =3D phy_get_drvdata(phy);
> >> +	struct eq5_phy_private *priv =3D inst->priv;
> >> +	struct device *dev =3D priv->dev;
> >> +
> >> +	dev_dbg(dev, "phy_set_mode(inst=3D%td, mode=3D%d, submode=3D%d)\n",
> >> +		inst - priv->phys, mode, submode);
> >> +
> >> +	if (mode !=3D PHY_MODE_ETHERNET)
> >> +		return -EOPNOTSUPP;
> >> +
> >> +	if (!phy_interface_mode_is_rgmii(submode) &&
> >> +	    submode !=3D PHY_INTERFACE_MODE_SGMII)
> >> +		return -EOPNOTSUPP;
> >
> > Both PHYs are equal in capabilities, and support both RGMII and SGMII,
> > correct? I see the driver is implemented as if they were, but it doesn't
> > hurt to ask.
> =

> Datasheet indicates 0 can do SGMII/RGMII and 1 can do only RGMII.
> Did you imply that the driver code should reject SGMII on PHY 1
> if it ever gets asked for?

I didn't imply anything, as I didn't know the facts. But now that I do,
yes, I'm explicitly requesting you to reject the submodes that PHY 1
doesn't support.

I also notice that you haven't implemented support for phy_validate().
Please do so, even if your PHY consumer does not call it (it should, to
detect which modes and submodes are supported).

> >> +
> >> +	inst->phy_interface =3D submode;
> >
> > Short story: don't rely on the phy_set_mode_ext() -> phy_power_on() ord=
er.
> > Implement the driver so that it works the other way around too.
> >
> > Long story:
> > https://lore.kernel.org/netdev/aXzFH09AeIRawCwU@shell.armlinux.org.uk/
> =

> I wouldn't mind, but what should phy_power_on() do if no submode has
> been provided through phy_set_mode_ext() yet? Guess one? Fail?

Assume a default initial submode, and power on using the rules of that
submode. In your case you don't even have to assume, you can read
EQ5_GP_SGMII_MODE to figure out what the submode is at probe time.

> Also our PHY will need to be reset to change its mode if we do
> power_on() followed by set_mode(), which in practice is never something
> we want. Maybe there is a flag to indicate that we require a submode to
> power on?

Such flag doesn't exist, nor do I think it is desirable. It would
unnecessarily complicate consumer drivers, which would have to support
two code paths if they were to follow the "generic" PHY API model.

Feel free to reset the PHY if requested to change the submode while it
is powered on. For example, lynx_28g_set_mode() does that.

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

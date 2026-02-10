Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7F96EB2705
	for <linux-phy@archiver.kernel.org>; Tue, 10 Feb 2026 19:35:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KqviFr8WyhXbq/NhQ18fm7ieLPR2rxov6Nkb2JCYrE0=; b=138P7203JhUGRc
	ZvVAZpYXvFmkaB8BP4Uqb8xRmAkRuKYI6kxyMlZf+k2p8r/RZw5nsPwhMBtaX2uJZf94XAv+j8mOe
	a2TOE3Ua+/jkGw+pZGOGl6g5QzniIBV79u2TUhIU8mI127/Zqcx4rzx5Bs38DiLDTp6uPfWRoI2RN
	5GfN+BNbo+TIfIPlgTTTm9rYLEbK/v/VEu3V7NT/lLxEwt5eJScGvtKtqmxrrPNVWo/QUyZLibaKJ
	Ipt/q/3AvyBWa0nwyKOhWeAXE0kwGQzN6BTaTTvFNX3vvAYjKchKu4O/pB3KzhpZI1yffqsZUtdRm
	65bwCFSMfiVyAUgIlx4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vptWA-0000000HRaI-1YjZ;
	Tue, 10 Feb 2026 19:35:26 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vptW6-0000000HRZw-3pmD
	for linux-phy@lists.infradead.org;
	Tue, 10 Feb 2026 19:35:24 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-437816eae24so25878f8f.3
        for <linux-phy@lists.infradead.org>; Tue, 10 Feb 2026 11:35:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770752121; x=1771356921; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1FTvcKjle8v/I3+gNDN7izL+kp2hM1kytmKhqKq02/4=;
        b=E52tB5kSR3RBHFLlvMPrvBGC4dj4oVZiiiAkd6E6hCNCBzArSznABiqLLiKHMdnOvS
         mVCFzEbNfUscj/q3xF+UC2WyoEP5CmN5G9RkW9QZuFLaQmeaADn0Ugbm2jBS5PDo9GDh
         /GGB0Ayq38AyldMC0hdlMi2PC2vIqfDILp/Ce5MlonC7pFpB5diMQl3xYSXhnvWHvXnV
         sHzvPCy9ZmAZE7UVXh1/s4MLlw4+m6FGK/OaCY/pkdmbPZAgCZTrtiL034wIWjbJUldw
         Rh0fz7ATEGVmg6aY2JfKfaJqCD7E5CLx+qeoJ4fa/AALvBCURYmyKwUff4w8AtXdFLHv
         wMPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770752121; x=1771356921;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1FTvcKjle8v/I3+gNDN7izL+kp2hM1kytmKhqKq02/4=;
        b=DxdQ4da8/7wwkUIlzoBXoSaAZlJiY5hqLQbsSIhlSmuayEZnoCaUsIt4SzH+GkqagJ
         tshEN//ia+sa2+LYNG+VUU/qDqvKTZbkOQqa5OAfNxTVpPvMaLaqwMBJlA2LdTCRc2aF
         GT7JEOaybye2NH3jbrXgFJ/ihWNKty74Wnj24sE/gEA7MtHJnIIbx9N/HV6w9AtvYfTQ
         sopugh91WsoqxIo8DZGbEatbgZ6GxkwPIOWCXbea1+sukRtfGBLIMxp3S5ZSL60NkPOZ
         LSP7zULzsJ0j50tEUI3Z2kml/NaEgjHxDoQ25aqEb/2sOk+QgqVxxFKQvLa7VoCXrbv6
         1BIw==
X-Forwarded-Encrypted: i=1; AJvYcCUvtF0lqszIussONddHzvF3S8uIIyjQL6AZoM+WLizgDv9TwLVDc125AaaHBqqOwEhkao4pJVl/2mo=@lists.infradead.org
X-Gm-Message-State: AOJu0YyR4J2G1pJp1KyFurnRfPThpcdiYJHD1xK6uk1hjtQ/UJuMrczo
	+fJp951a186P6qEFo20oGzMdq6Z/WzNtH1s63kl5loZ5yDSFwsBqzx9Q
X-Gm-Gg: AZuq6aKFMMjL+5JtvDRCurEoSzIxn+ZHT+zZPshJKQ0ySOlvk3o27xKxZxjG847ZdQC
	1hxrcQjdQqqqVEK/jpB4Jn/4siggZ7lofkZU88nLuJ5KMDSK71xVP2k/bWzMZsSb2QBDlcAR2Bh
	RmYPs9V3QlgKYkCTg2YuEYlp19kIkZgD1dAZG5rr7diSmO19XWYf6Uu7FFP9MEkTv0bAUjjTo30
	WWYPt3PVmr3qNs6YMTivYcrTv+TxnwrfQsgylV4KP/ugvwKLtK7+Iurz2BwIp2e3t5JyPJLZrsB
	BzuhsOeu4sKeZUXRqf/EhmyAXCYdCDW/3fX8/D4XUxoFz8iO7hJ1Pp6tA9zfpznQvStgtTZOpYc
	cXBuFcfqQg2ENTCzuLskr9NtQD5cPjNuxW2HsahQGXyrT0OVRqTOIwHrlqLljE6fWq9mVPZUAyb
	K9t8B2y7lOUZakqvk=
X-Received: by 2002:a5d:588d:0:b0:437:6e9b:805a with SMTP id ffacd0b85a97d-4377ad1e2cfmr2935958f8f.4.1770752120295;
        Tue, 10 Feb 2026 11:35:20 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:d8ac:c964:9b43:1b13])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4362972fc26sm34036922f8f.22.2026.02.10.11.35.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 11:35:19 -0800 (PST)
Date: Tue, 10 Feb 2026 21:35:16 +0200
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
Message-ID: <20260210193516.temrg46yozxma7xb@skbuf>
References: <20260127-macb-phy-v6-0-cdd840588188@bootlin.com>
 <20260127-macb-phy-v6-3-cdd840588188@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260127-macb-phy-v6-3-cdd840588188@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_113522_982464_C29296FE 
X-CRM114-Status: GOOD (  21.20  )
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

Hi Theo,

On Tue, Jan 27, 2026 at 06:09:31PM +0100, Th=E9o Lebrun wrote:
> +static int eq5_phy_init(struct phy *phy)
> +{
> +	struct eq5_phy_inst *inst =3D phy_get_drvdata(phy);
> +	struct eq5_phy_private *priv =3D inst->priv;
> +	struct device *dev =3D priv->dev;
> +	u32 reg;
> +
> +	dev_dbg(dev, "phy_init(inst=3D%td)\n", inst - priv->phys);

Nitpick: can you please remove the debugging prints and maybe add some
trace points to the PHY core if you feel strongly about having some
introspection?

> +
> +	writel(0, inst->gp);
> +	writel(0, inst->sgmii);
> +
> +	udelay(5);

Could you please add a macro or comment hinting at the origin of the
magic number 5 here? You could also place these 3 lines in a common
helper, also called from eq5_phy_exit(), to avoid minor code
duplication.

> +
> +	reg =3D readl(inst->gp) | EQ5_GP_TX_SWRST_DIS | EQ5_GP_TX_M_CLKE |

When you write 0 to inst->gp and then read it back, do you expect to
(a) get back 0 or
(b) are some fields non-resetting?

I see both as inconsistent, since if (a), you can remove the
readl(inst->gp) and expect the same result. And if (b), it also
shouldn't matter if you write zeroes a second time, if it was fine the
first time?

Shortly said, is readl(inst->gp) really needed?

> +	      EQ5_GP_SYS_SWRST_DIS | EQ5_GP_SYS_M_CLKE |
> +	      FIELD_PREP(EQ5_GP_RGMII_DRV, 0x9);

Quick sanity check on your proposal to use #phy-cells =3D <1>. This is not
a request to change anything.

What if you need to customize the RGMII drive strength (or some other
setting, maybe SGMII polarity if that is available) per lane, for a
particular board? How would you do that if each PHY does not have its
own OF node?

> +	writel(reg, inst->gp);
> +
> +	return 0;
> +}
> +
> +static int eq5_phy_exit(struct phy *phy)
> +{
> +	struct eq5_phy_inst *inst =3D phy_get_drvdata(phy);
> +	struct eq5_phy_private *priv =3D inst->priv;
> +	struct device *dev =3D priv->dev;
> +
> +	dev_dbg(dev, "phy_exit(inst=3D%td)\n", inst - priv->phys);
> +
> +	writel(0, inst->gp);
> +	writel(0, inst->sgmii);
> +	udelay(5);
> +
> +	return 0;
> +}
> +
> +static int eq5_phy_set_mode(struct phy *phy, enum phy_mode mode, int sub=
mode)
> +{
> +	struct eq5_phy_inst *inst =3D phy_get_drvdata(phy);
> +	struct eq5_phy_private *priv =3D inst->priv;
> +	struct device *dev =3D priv->dev;
> +
> +	dev_dbg(dev, "phy_set_mode(inst=3D%td, mode=3D%d, submode=3D%d)\n",
> +		inst - priv->phys, mode, submode);
> +
> +	if (mode !=3D PHY_MODE_ETHERNET)
> +		return -EOPNOTSUPP;
> +
> +	if (!phy_interface_mode_is_rgmii(submode) &&
> +	    submode !=3D PHY_INTERFACE_MODE_SGMII)
> +		return -EOPNOTSUPP;

Both PHYs are equal in capabilities, and support both RGMII and SGMII,
correct? I see the driver is implemented as if they were, but it doesn't
hurt to ask.

> +
> +	inst->phy_interface =3D submode;

Short story: don't rely on the phy_set_mode_ext() -> phy_power_on() order.
Implement the driver so that it works the other way around too.

Long story:
https://lore.kernel.org/netdev/aXzFH09AeIRawCwU@shell.armlinux.org.uk/

> +	return 0;
> +}

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

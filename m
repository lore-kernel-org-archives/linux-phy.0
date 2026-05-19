Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7B63CD343F
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 00:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PH+9A2dUxAZ8d+bELKDhNbUBgWeQl7jXpkCKQBDotOw=; b=OHupO7vb2fRnIj
	G+jDTXzFMMVGrE0+rfPX9DWPQ9hs5PbIoZMwIkRMUHNadsPzKmfVdnaOdLw2jAwsOybvG6n2JiBjF
	7FX99o+oqy8uDmaUUkq5JgGrzGAbjbMN9Qu9h0mz/Ch89fDs+5pzvB4yGJzQzkuyBwpXriWDGiV7Z
	xugFy8EWk7ka9X2BhNRrA7yqr3X59SBMCgwwzRgzqRslX4u/KV7CizkGoT9TLbPv5/4uy5toHacnj
	DIjoLUhLfqBH0ZYd7T60O7vzEPrDUQ3mzY0y/VwJK2UAEYX1n4/6hp8flIlP4UtvPLbB4Nn6/QaPh
	O3PM1MLtQts9V9c9xAfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP82a-0000000HF5z-0xxh;
	Tue, 19 May 2026 00:10:32 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP82W-0000000HF57-3tVa
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 00:10:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8D0DA40288;
	Tue, 19 May 2026 00:10:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 341B4C2BCB7;
	Tue, 19 May 2026 00:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779149427;
	bh=Mo8/CGWGkJilXODGTqxfB+W+dru73o1aZU1xef0d8hQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=gwIuIXcb74AJ5fI/6XVQK6aDNHTNxTEvY6mpoQutBCADafg2/AE91KazXEQZbUG27
	 1oVmtPmfhitUcwJ7cyjQ9b4rRwB6a9Rmu9wZvBiVrdRNQR3v6BIBUap0jDSDBlBKfS
	 BTpdeTkKeD9JCxMblNxqbkWhAP3XgkjYksK1JFNvHMSuVKFpO0U7SgmRaokk9pM/g8
	 apKx2bp0j/8jGJcQKFHjnw8wMEVdXWiHZdKxxZBG66644EG3nCs/brWyCiP9tZ2eIy
	 Qh96egYE16JSqQ3gcc7NFEtEdewS4RgBNZG0bdaR646W1Ji4mIGa6rJ6w8W4BT59xO
	 8dQo23Yx25tXg==
Date: Mon, 18 May 2026 17:10:26 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Petr Wozniak <petr.wozniak@gmail.com>
Cc: netdev@vger.kernel.org, bjorn@mork.no, andrew@lunn.ch,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v3] net: phy: sfp: probe for RollBall I2C-to-MDIO bridge
 in mdio-i2c
Message-ID: <20260518171026.4f2f0c20@kernel.org>
In-Reply-To: <20260515174044.26036-1-petr.wozniak@gmail.com>
References: <20260515174044.26036-1-petr.wozniak@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_171029_017145_A21D6C9E 
X-CRM114-Status: GOOD (  30.07  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Fri, 15 May 2026 19:40:44 +0200 Petr Wozniak wrote:
> The "OEM"/"SFP-10G-T" quirk entry in sfp_fixup_rollball_cc()
> unconditionally forces MDIO_I2C_ROLLBALL for all modules matching that
> vendor/part-number combination.  This works for modules that genuinely
> implement a RollBall I2C-to-MDIO bridge, but silently breaks modules
> that share the same EEPROM strings without having such a bridge.
> 
> The Realtek RTL8261BE-CG is one such module: a pure copper 10G SFP+
> media converter with no I2C-to-MDIO bridge.  Its EEPROM reports
> vendor="OEM", part="SFP-10G-T-I", and -- critically -- Vendor OUI
> 00:00:00, making OUI-based differentiation impossible.  With
> MDIO_I2C_ROLLBALL the kernel stalls waiting for a PHY that never
> appears:
> 
>   sfp sfp2: probing phy device through the [MDIO_I2C_ROLLBALL] protocol
> 
> Move the probe into i2c_mii_init_rollball() in mdio-i2c.c, where the
> RollBall protocol constants are already defined.  After sending the
> unlock password, issue a CMD_READ and wait ~70 ms for CMD_DONE.  A
> genuine RollBall bridge asserts CMD_DONE within that window; modules
> without a bridge never do, so i2c_mii_init_rollball() returns -ENODEV.
> sfp_i2c_mdiobus_create() treats -ENODEV as no PHY and falls back to
> MDIO_I2C_NONE without creating an MDIO bus.
> 
> Add "OEM"/"SFP-10G-T-I" to the quirk table so RTL8261BE modules enter
> the probe path; genuine RollBall modules continue to work as before.
> 
> Signed-off-by: Petr Wozniak <petr.wozniak@gmail.com>
> Tested-by: Petr Wozniak <petr.wozniak@gmail.com>

Tested-by tag is for when the person testing is different than the
author of the patch. Please drop.

> Targeting: net-next

This usually means --subject-prefix="PATCH net-next vN"

But more importantly, this patch does not apply to netdev/net-next

> Changes since v2:
>   - Compile-tested and hardware-tested on BPI-R4 (MT7988A, 6.12.87)
>   - RTL8261BE (OEM/SFP-10G-T-I): probes MDIO_I2C_NONE, link Up 10Gbps
>   - Genuine RollBall (OEM/SFP-10G-T): bridge detected, link Up 10Gbps
> 
>  drivers/net/mdio/mdio-i2c.c | 59 +++++++++++++++++++++++++++++++++----
>  drivers/net/phy/sfp.c       |  8 ++++-
>  2 files changed, 60 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/mdio/mdio-i2c.c b/drivers/net/mdio/mdio-i2c.c
> index da2001e..1973fda 100644
> --- a/drivers/net/mdio/mdio-i2c.c
> +++ b/drivers/net/mdio/mdio-i2c.c
> @@ -352,6 +352,52 @@ static int i2c_mii_write_rollball(struct mii_bus *bus, int phy_id, int devad,
>  	return 0;
>  }
>  
> +/*
> + * Probe for a RollBall I2C-to-MDIO bridge by issuing CMD_READ and waiting
> + * ~70 ms for CMD_DONE.  Genuine RollBall bridges respond within that window.
> + * Modules that share the same EEPROM vendor/part strings but have no bridge
> + * (e.g. RTL8261BE pure copper media converter) never assert CMD_DONE, so
> + * -ENODEV is returned for them.
> + */
> +static int i2c_mii_probe_rollball(struct i2c_adapter *i2c)
> +{
> +	u8 data_buf[] = { ROLLBALL_DATA_ADDR, 0x01, 0x00, 0x00 };
> +	u8 cmd_buf[]  = { ROLLBALL_CMD_ADDR, ROLLBALL_CMD_READ };
> +	u8 cmd_addr   = ROLLBALL_CMD_ADDR, result;

Is this code doing some magic or you're assigning to values to one
integer?

> +	struct i2c_msg msgs[2];
> +	int ret;
> +
> +	msgs[0].addr  = ROLLBALL_PHY_I2C_ADDR;
> +	msgs[0].flags = 0;
> +	msgs[0].len   = sizeof(data_buf);
> +	msgs[0].buf   = data_buf;
> +	msgs[1].addr  = ROLLBALL_PHY_I2C_ADDR;
> +	msgs[1].flags = 0;
> +	msgs[1].len   = sizeof(cmd_buf);
> +	msgs[1].buf   = cmd_buf;
> +
> +	ret = i2c_transfer_rollball(i2c, msgs, ARRAY_SIZE(msgs));
> +	if (ret)
> +		return ret;
> +
> +	msleep(70);
> +
> +	msgs[0].addr  = ROLLBALL_PHY_I2C_ADDR;
> +	msgs[0].flags = 0;
> +	msgs[0].len   = 1;
> +	msgs[0].buf   = &cmd_addr;
> +	msgs[1].addr  = ROLLBALL_PHY_I2C_ADDR;
> +	msgs[1].flags = I2C_M_RD;
> +	msgs[1].len   = 1;
> +	msgs[1].buf   = &result;
> +
> +	ret = i2c_transfer_rollball(i2c, msgs, ARRAY_SIZE(msgs));
> +	if (ret)
> +		return ret;
> +
> +	return result == ROLLBALL_CMD_DONE ? 0 : -ENODEV;
> +}
> +
>  static int i2c_mii_init_rollball(struct i2c_adapter *i2c)
>  {
>  	struct i2c_msg msg;
> @@ -372,10 +418,10 @@ static int i2c_mii_init_rollball(struct i2c_adapter *i2c)
>  	ret = i2c_transfer(i2c, &msg, 1);
>  	if (ret < 0)
>  		return ret;
> -	else if (ret != 1)
> +	if (ret != 1)
>  		return -EIO;
> -	else
> -		return 0;
> +
> +	return i2c_mii_probe_rollball(i2c);
>  }
>  
>  struct mii_bus *mdio_i2c_alloc(struct device *parent, struct i2c_adapter *i2c,
> @@ -399,9 +445,10 @@ struct mii_bus *mdio_i2c_alloc(struct device *parent, struct i2c_adapter *i2c,
>  	case MDIO_I2C_ROLLBALL:
>  		ret = i2c_mii_init_rollball(i2c);
>  		if (ret < 0) {
> -			dev_err(parent,
> -				"Cannot initialize RollBall MDIO I2C protocol: %d\n",
> -				ret);
> +			if (ret != -ENODEV)
> +				dev_err(parent,
> +					"Cannot initialize RollBall MDIO I2C protocol: %d\n",
> +					ret);
>  			mdiobus_free(mii);
>  			return ERR_PTR(ret);
>  		}
> diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
> index 218c775..ce745b6 100644
> --- a/drivers/net/phy/sfp.c
> +++ b/drivers/net/phy/sfp.c
> @@ -599,7 +599,8 @@ static const struct sfp_quirk sfp_quirks[] = {
>  	SFP_QUIRK_S("TP-LINK", "TL-SM410U", sfp_quirk_oem_2_5g),
>  
>  	SFP_QUIRK_F("ETU", "ESP-T5-R", sfp_fixup_rollball_cc),
> -	SFP_QUIRK_F("OEM", "SFP-10G-T", sfp_fixup_rollball_cc),
> +	SFP_QUIRK_F("OEM", "SFP-10G-T-I", sfp_fixup_rollball),
> +	SFP_QUIRK_F("OEM", "SFP-10G-T",   sfp_fixup_rollball_cc),
>  	SFP_QUIRK_S("OEM", "SFP-2.5G-T", sfp_quirk_oem_2_5g),
>  	SFP_QUIRK_S("OEM", "SFP-2.5G-BX10-D", sfp_quirk_2500basex),
>  	SFP_QUIRK_S("OEM", "SFP-2.5G-BX10-U", sfp_quirk_2500basex),
> @@ -802,6 +803,11 @@ static int sfp_i2c_mdiobus_create(struct sfp *sfp)
>  	int ret;
>  
>  	i2c_mii = mdio_i2c_alloc(sfp->dev, sfp->i2c, sfp->mdio_protocol);
> +	if (PTR_ERR_OR_ZERO(i2c_mii) == -ENODEV) {
> +		/* RollBall probe found no bridge: no PHY on this module */
> +		sfp->mdio_protocol = MDIO_I2C_NONE;

Uh, oh. Hope someone with SFP expertise will review v4.

> +		return 0;
> +	}
>  	if (IS_ERR(i2c_mii))
>  		return PTR_ERR(i2c_mii);
>  
-- 
pw-bot: cr

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

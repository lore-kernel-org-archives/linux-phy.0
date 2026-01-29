Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB9C7D61013
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jan 2026 13:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ezKUlTlAJnSc2hqpzSKiED6+mg89tX0oEB3Hz30Djek=; b=xVf+YL0uXPpcMd
	AJ/F2oRmeYP6eLhf/RkBrkyGd1Cm6q3abHzgnkYGNkYYStC21cwRmIyG6eFX9v3HTDFmPyu2+BUji
	rvDfZB/Dxm+qEMgvBemI47y9V9cBEkxcPn0XOmQJcWuFyEINn7G7qJysKzCFW4AYjYsiWC5l4OYll
	5O+WCzB/shFAXfy24NB2IZ9GBunIsRkBphUBz1cU5oP8FPUVqWc1vZ7IpWbDknzzRQZf2xPGzq1CY
	M/wZMC8jw0+8fY2/9CpMuIKGNy4TC0CXnpKFK7AROrhFdkVqhOvKseyRqeyinSgdgk7qeOXekMBKK
	aE1AIsgIviTMj92qccHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlSLh-00000000Aeb-2Q04;
	Thu, 29 Jan 2026 13:46:17 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlSLd-00000000Adp-0Vp2
	for linux-phy@lists.infradead.org;
	Thu, 29 Jan 2026 13:46:15 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-658078d6655so2096669a12.3
        for <linux-phy@lists.infradead.org>; Thu, 29 Jan 2026 05:46:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769694371; cv=none;
        d=google.com; s=arc-20240605;
        b=DId3v+9NQFfWnaVV5dd4rUnIcKz3eSH8JXjkzICi+EFkjjJ683HehiYtWtFWxKc7mr
         ekBGghfUg3aEMCoDUuVd5xrJ8O1amx2PGWpc966DOwKKdoinTG3SGPDxC2o7/lupgIHc
         eBT9YDcwY11h6wu2XveD76iLmiI81hU/GyXVlAMpxtx9YyOy/CsRMZl8PdWOY3vcxGyD
         WUiISespdjqx5szA3SKsjycQbFZ4Sukb6NHGoVnFMZ/H/hOWsJ+j37SrptiqbPSwKFOJ
         kLyvnIWTfEWSq79skC96hsR8RSAsLuAB/AuQKwaH6oHTJ4SObWQDVOyVQaCPKVH6/wXy
         3dxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ok1T5yGKDmAmT0BHb7DhO7NcpXgpsjNNJLpNZQI3pio=;
        fh=b9fpNJQqiM5qPOWVI7ncK3AnRpZ4YZKPJrVleCx+/2g=;
        b=b8rzafUTzDUoRNsj65qVfZ5EWWv0/H8T8gdzlhC3ooLO8zR8bEqPT27s+5g1L+98fY
         caoLEix0wP0i0/QFodMkbgwodloyqyQXvfB/R2I51GIepU+cJidUH86WfeJrz5L8DO1p
         Mt43chZpbtb/IT7r720rwhKjPH5T5SBV1xeJInc0uDo7yPnTYOkyr9+C6l1wRXnANzG4
         i9oaJZ17P/Fe65LTTrQk4kG11S9B7T7ow3bVm4b7qniPHYgEfLmusPPFSwpHUz6fHxoK
         9FF2UriAY95CkN2xy0iJLgc6wOIQHE0aThbFU3APN+s2lntGPe3MjhSNrQdf4n+hDfPU
         r9lw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769694371; x=1770299171; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ok1T5yGKDmAmT0BHb7DhO7NcpXgpsjNNJLpNZQI3pio=;
        b=qn38JwaN1MvxykkcDR9cTTGrEMjDP5PJngAQZM7Sn7qZD3zLD5Em/HyWtY/vgTKmno
         AYYWh+GSq5qdjyGhIh0vDabYH/HkLUIOrCW3MH/it8h9t2fXFC1VNLDQQWlliGZr//Vw
         NxgqU9YWhBa8TFfhAJKsvPi8MFAzWe0muRgfEmqlbaRPakjBHimLCC5NYtTxx1Jixw5x
         ZL6ZftrdqiPx2REK4hHLArEYv3ZnVBxWIEFjjAg1lZbgc6V+9OCUng2xcCR9cBPdzRLu
         jdReRY6h/k5/sob7xaktWanl2IppS9hYnxL3Gp1452AdIt0t+ZAqgTnlK+ROiifm7Ua3
         ohgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769694371; x=1770299171;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ok1T5yGKDmAmT0BHb7DhO7NcpXgpsjNNJLpNZQI3pio=;
        b=rbD8myq46YMmHLU+KaaSdF4tEW8B+0m8xbZMByHNz6ujnDrXKvJHVHFxt0rXKkBHiI
         /ZRDg7GYjRvCQpXTMtZcvOL7Z/9rGhkOOKoDRtZYUWyH/f/m0UlaJnpH2LiauiB2ySOE
         FdGCGrlLQFBNBKRZikZvtolt7OXIEYp4Z0Qp0PIdeN1T/ryi2sKs1Iz466PqPUv0YI7w
         YypH4vx2XOeBm7WKC3EuwQK8j4GaiGqvqASRlACUnq31C+n+w+BfvZTW22+WEHJbBcx4
         91DHi44s7I8R8P4x0myrEgiBCn1tnrrgkrahfjHvGGIKW6XMFa6TgWavjOK1wNawc9Oa
         5kiQ==
X-Forwarded-Encrypted: i=1; AJvYcCWTxE4k74txGRB2zodY5APQElmNXN+683QjNJS2lWdZqFlCnxfEIqlU66ZjBBrLBR0qw7pdgg+zhX0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyqhQ1PltLtYmZNHYIYJ0xL0Nfl7SAE8//Q6GaC1N5BXEuye1lP
	I8TAbeY3S+mKMriB0obFnjKC7ZwHRbOASiawmTNw9iJKeakzb95zU4nWXbpqu7uI1TSB12kynlj
	ppA2GoitNK1xM9VMN2cEWuXfvBRxP2x8w1KUBubmYnw==
X-Gm-Gg: AZuq6aJ7SVra/O4Flq1dMeWTWH+fYeW41ifgZ8Ljiqbmnd2XKeiitQ7FMCwW9oV8FCe
	Ep8XynwNYqvagFFTDFc9kDRxWAv7OIcC9Ez3jUaHC/lV4e+oLUSzIVwjEP7VTmz1mwOgy0w7ZH0
	D3/qsWjbcVxitLwbe6rFKBAEj3/68QjolFcR7OgB8YLT79uucDXGcL3H5ze4CK5IfHD8eLZXJ/f
	huOFAy/MyEXbM/I+AT7zfAE6pKyArw2Mi5Q7+p7cMQAqNhLUQucHaWyuj8aYsHhmX/AirlHMt24
	yJjV6cKWbpNfBHSxCG9bqt1l
X-Received: by 2002:a05:6402:26d4:b0:658:c043:6a5b with SMTP id
 4fb4d7f45d1cf-658c0436b9cmr2360410a12.32.1769694370785; Thu, 29 Jan 2026
 05:46:10 -0800 (PST)
MIME-Version: 1.0
References: <20260126092159.815968-1-vincent.guittot@linaro.org>
 <20260126092159.815968-4-vincent.guittot@linaro.org> <aXtS-Yan4HkXZlDD@shell.armlinux.org.uk>
In-Reply-To: <aXtS-Yan4HkXZlDD@shell.armlinux.org.uk>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 29 Jan 2026 14:45:59 +0100
X-Gm-Features: AZwV_QiabLNjn8YnhRXNiAMfl90Rxlw1Vjj6PXig98KuvyBH9m5MNPhf3K_NWig
Message-ID: <CAKfTPtDdpfGK2JE57kwLMEzpi2MuLOBe0FaeOaqgjqPPV-9pLA@mail.gmail.com>
Subject: Re: [PATCH 3/4] phy: s32g: Add serdes xpcs subsystem
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, ciprianmarian.costea@oss.nxp.com, s32@nxp.com, 
	p.zabel@pengutronix.de, ghennadi.procopciuc@nxp.com, 
	bogdan-gabriel.roman@nxp.com, Ionut.Vicovan@nxp.com, 
	alexandru-catalin.ionita@nxp.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org, 
	Frank.li@nxp.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_054614_131784_661A7486 
X-CRM114-Status: GOOD (  36.18  )
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

On Thu, 29 Jan 2026 at 13:30, Russell King (Oracle)
<linux@armlinux.org.uk> wrote:
>
> On Mon, Jan 26, 2026 at 10:21:58AM +0100, Vincent Guittot wrote:
> > s32g SoC family includes 2 serdes subsystems which are made of one PCIe
> > controller, 2 XPCS and one Phy. The Phy got 2 lanes that can be configure
> > to output PCIe lanes and/or SGMII.
> >
> > Add XPCS and SGMII support.
> >
> > Co-developed-by: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> > Signed-off-by: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> > Co-developed-by: Alexandru-Catalin Ionita <alexandru-catalin.ionita@nxp.com>
> > Signed-off-by: Alexandru-Catalin Ionita <alexandru-catalin.ionita@nxp.com>
> > Co-developed-by: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
> > Signed-off-by: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
> > Co-developed-by: Ionut Vicovan <Ionut.Vicovan@nxp.com>
> > Signed-off-by: Ionut Vicovan <Ionut.Vicovan@nxp.com>
> > Co-developed-by: Bogdan Roman <bogdan-gabriel.roman@nxp.com>
> > Signed-off-by: Bogdan Roman <bogdan-gabriel.roman@nxp.com>
> > Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
>
> I'm not doing a full review for this patch yet.
>
> > +/*
> > + * Note: This function should be compatible with phylink.
> > + * That means it should only modify link, duplex, speed
> > + * an_complete, pause.
> > + */
> > +static int s32g_xpcs_get_state(struct s32g_xpcs *xpcs,
> > +                            struct phylink_link_state *state)
> > +{
> > +     struct device *dev = xpcs->dev;
> > +     unsigned int mii_ctrl, val, ss;
> > +     bool ss6, ss13, an_enabled, intr_en;
> > +
> > +     mii_ctrl = s32g_xpcs_read(xpcs, SR_MII_CTRL);
> > +     an_enabled = !!(mii_ctrl & AN_ENABLE);
> > +     intr_en = !!(s32g_xpcs_read(xpcs, VR_MII_AN_CTRL) & MII_AN_INTR_EN);
> > +
> > +     /* Check this important condition */
> > +     if (an_enabled && !intr_en) {
> > +             dev_err(dev, "Invalid SGMII AN config interrupt is disabled\n");
> > +             return -EINVAL;
> > +     }
>
> This isn't an interrupt handler. Phylink calls it from the state
> resolver, which _may_ be triggered by an interrupt handler, but will
> also be called at other times.
>
> > +
> > +     if (an_enabled) {
> > +             /* MLO_AN_INBAND */
> > +             state->speed = SPEED_UNKNOWN;
> > +             state->link = 0;
> > +             state->duplex =  DUPLEX_UNKNOWN;
> > +             state->an_complete = 0;
> > +             state->pause = MLO_PAUSE_NONE;
>
> Have you looked at the initial state that phylink sets up before
> calling the .pcs_get_state() method? See phylink_mac_pcs_get_state().

okay, I'm going to have a look

>
> speed/duplex/pause/an_complete are already setup like that for you if
> autoneg is enabled. link is the only member you'd need to touch.

Okay

>
> > +             val = s32g_xpcs_read(xpcs, VR_MII_AN_INTR_STS);
> > +
> > +             /* Interrupt is raised with each SGMII AN that is in cases
> > +              * Link down - Every SGMII link timer expire
> > +              * Link up - Once before link goes up
> > +              * So either linkup or raised interrupt mean AN was completed
> > +              */
> > +             if ((val & CL37_ANCMPLT_INTR) || (val & CL37_ANSGM_STS_LINK)) {
> > +                     state->an_complete = 1;
> > +                     if (val & CL37_ANSGM_STS_LINK)
> > +                             state->link = 1;
> > +                     else
> > +                             return 0;
> > +                     if (val & CL37_ANSGM_STS_DUPLEX)
> > +                             state->duplex = DUPLEX_FULL;
> > +                     else
> > +                             state->duplex = DUPLEX_HALF;
> > +                     ss = FIELD_GET(CL37_ANSGM_STS_SPEED_MASK, val);
> > +             } else {
> > +                     return 0;
> > +             }
> > +
> > +     } else {
> > +             /* MLO_AN_FIXED, MLO_AN_PHY */
>
> This function won't be called in those modes, so this is a misleading
> comment. It can be called in MLO_AN_INBAND but when autoneg is disabled.

Okay

>
> > +             val = s32g_xpcs_read(xpcs, SR_MII_STS);
> > +             state->link = !!(val & LINK_STS);
> > +             state->an_complete = 0;
> > +             state->pause = MLO_PAUSE_NONE;
> > +
> > +             if (mii_ctrl & DUPLEX_MODE)
> > +                     state->duplex = DUPLEX_FULL;
> > +             else
> > +                     state->duplex = DUPLEX_HALF;
> > +
> > +             /*
> > +              * Build similar value as CL37_ANSGM_STS_SPEED with
> > +              * SS6 and SS13 of SR_MII_CTRL:
> > +              *   - 0 for 10 Mbps
> > +              *   - 1 for 100 Mbps
> > +              *   - 2 for 1000 Mbps
> > +              */
> > +             ss6 = !!(mii_ctrl & SS6);
> > +             ss13 = !!(mii_ctrl & SS13);
> > +             ss = ss6 << 1 | ss13;
> > +     }
> > +
> > +     switch (ss) {
> > +     case CL37_ANSGM_10MBPS:
> > +             state->speed = SPEED_10;
> > +             break;
> > +     case CL37_ANSGM_100MBPS:
> > +             state->speed = SPEED_100;
> > +             break;
> > +     case CL37_ANSGM_1000MBPS:
> > +             state->speed = SPEED_1000;
> > +             break;
> > +     default:
> > +             dev_err(dev, "Failed to interpret the value of SR_MII_CTRL\n");
> > +             break;
> > +     }
> > +
> > +     val = s32g_xpcs_read(xpcs, VR_MII_DIG_CTRL1);
> > +     if ((val & EN_2_5G_MODE) && state->speed == SPEED_1000)
> > +             state->speed = SPEED_2500;
> > +
> > +     /* Cover SGMII AN inability to distigunish between 1G and 2.5G */
> > +     if ((val & EN_2_5G_MODE) &&
> > +         state->speed != SPEED_2500 && an_enabled) {
> > +             dev_err(dev, "Speed not supported in SGMII AN mode\n");
> > +             return -EINVAL;
> > +     }
> > +
> > +     return 0;
> > +}
> > +
> > +static int s32g_xpcs_config_an(struct s32g_xpcs *xpcs,
> > +                            const struct phylink_link_state state)
> > +{
> > +     bool an_enabled = false;
> > +
> > +     an_enabled = linkmode_test_bit(ETHTOOL_LINK_MODE_Autoneg_BIT,
> > +                                    state.advertising);
> > +     if (!an_enabled)
> > +             return 0;
>
> Don't check the autoneg bit. This is the media-side autoneg, not
> the PCS autoneg.

Okay

>
> > +
> > +     s32g_xpcs_write_bits(xpcs, VR_MII_DIG_CTRL1,
> > +                          CL37_TMR_OVRRIDE, CL37_TMR_OVRRIDE);
> > +
> > +     s32g_xpcs_write_bits(xpcs, VR_MII_AN_CTRL,
> > +                          PCS_MODE_MASK | MII_AN_INTR_EN,
> > +                          FIELD_PREP(PCS_MODE_MASK, PCS_MODE_SGMII) | MII_AN_INTR_EN);
> > +     /* Enable SGMII AN */
> > +     s32g_xpcs_write_bits(xpcs, SR_MII_CTRL, AN_ENABLE, AN_ENABLE);
> > +     /* Enable SGMII AUTO SW */
> > +     s32g_xpcs_write_bits(xpcs, VR_MII_DIG_CTRL1,
> > +                          MAC_AUTO_SW, MAC_AUTO_SW);
> > +
> > +     return 0;
> > +}
> > +
> > +static int s32g_xpcs_config(struct s32g_xpcs *xpcs,
> > +                         const struct phylink_link_state state)
> > +{
> > +     struct device *dev = xpcs->dev;
> > +     unsigned int val = 0, duplex = 0;
> > +     int ret = 0;
> > +     int speed = state.speed;
> > +     bool an_enabled;
> > +
> > +     /* Configure adaptive MII width */
> > +     s32g_xpcs_write_bits(xpcs, VR_MII_AN_CTRL, MII_CTRL, 0);
> > +
> > +     an_enabled = !!(s32g_xpcs_read(xpcs, SR_MII_CTRL) & AN_ENABLE);
> > +
> > +     dev_dbg(dev, "xpcs_%d: speed=%u duplex=%d an=%d\n", xpcs->id,
> > +             speed, state.duplex, an_enabled);
> > +
> > +     if (an_enabled) {
> > +             switch (speed) {
> > +             case SPEED_10:
> > +             case SPEED_100:
> > +             case SPEED_1000:
> > +                     s32g_xpcs_write(xpcs, VR_MII_LINK_TIMER_CTRL, 0x2faf);
> > +                     break;
> > +             case SPEED_2500:
> > +                     s32g_xpcs_write(xpcs, VR_MII_LINK_TIMER_CTRL, 0x7a1);
> > +                     s32g_xpcs_write_bits(xpcs, VR_MII_DIG_CTRL1, MAC_AUTO_SW, 0);
>
> Configuring the link timer _after_ the link has already come up looks
> completely wrong to me... this should be done when .pcs_config() detects
> that the PHY interface mode has changed.

Okay

>
> > +                     break;
> > +             default:
> > +                     dev_err(dev, "Speed not recognized. Can't setup xpcs\n");
> > +                     return -EINVAL;
> > +             }
> > +
> > +             s32g_xpcs_write_bits(xpcs, SR_MII_CTRL, RESTART_AN, RESTART_AN);
>
> As this is called from the .pcs_link_up() method, expect the link to
> go bouncey bouncy bouncy if you restart AN _after_ the link has
> come up.
>
> > +
> > +             ret = s32g_xpcs_wait_an_done(xpcs);
> > +             if (ret)
> > +                     dev_warn(dev, "AN did not finish for XPCS%d", xpcs->id);
> > +
> > +             /* Clear the AN CMPL intr */
> > +             s32g_xpcs_write_bits(xpcs, VR_MII_AN_INTR_STS, CL37_ANCMPLT_INTR, 0);
> > +     } else {
> > +             s32g_xpcs_write_bits(xpcs, SR_MII_CTRL, AN_ENABLE, 0);
> > +             s32g_xpcs_write_bits(xpcs, VR_MII_AN_CTRL, MII_AN_INTR_EN, 0);
> > +
> > +             switch (speed) {
> > +             case SPEED_10:
> > +                     break;
> > +             case SPEED_100:
> > +                     val = SS13;
> > +                     break;
> > +             case SPEED_1000:
> > +                     val = SS6;
> > +                     break;
> > +             case SPEED_2500:
> > +                     val = SS6;
> > +                     break;
> > +             default:
> > +                     dev_err(dev, "Speed not supported\n");
> > +                     break;
> > +             }
> > +
> > +             if (state.duplex == DUPLEX_FULL)
> > +                     duplex = DUPLEX_MODE;
> > +
> > +             s32g_xpcs_write_bits(xpcs, SR_MII_CTRL, DUPLEX_MODE, duplex);
> > +
> > +             if (speed == SPEED_2500) {
> > +                     ret = s32g_serdes_bifurcation_pll_transit(xpcs, XPCS_PLLB);
> > +                     if (ret)
> > +                             dev_err(dev, "Switch to PLLB failed\n");
> > +             } else {
> > +                     ret = s32g_serdes_bifurcation_pll_transit(xpcs, XPCS_PLLA);
> > +                     if (ret)
> > +                             dev_err(dev, "Switch to PLLA failed\n");
> > +             }
> > +
> > +             s32g_xpcs_write_bits(xpcs, SR_MII_CTRL, SS6 | SS13, val);
> > +     }
> > +
> > +     return 0;
> > +}
> > +
> > +/*
> > + * phylink_pcs_ops fops
>
> They are not "fops" which commonly refers to struct file_operations
>
> > + */
> > +
> > +static void s32cc_phylink_pcs_get_state(struct phylink_pcs *pcs, unsigned int neg_mode,
> > +                                     struct phylink_link_state *state)
> > +{
> > +     struct s32g_xpcs *xpcs = phylink_pcs_to_s32g_xpcs(pcs);
> > +
> > +     s32g_xpcs_get_state(xpcs, state);
> > +}
>
> Seems to me a pointless wrapper.

okay

>
> > +
> > +static int s32cc_phylink_pcs_config(struct phylink_pcs *pcs,
> > +                                 unsigned int neg_mode,
> > +                                 phy_interface_t interface,
> > +                                 const unsigned long *advertising,
> > +                                 bool permit_pause_to_mac)
> > +{
> > +     struct s32g_xpcs *xpcs = phylink_pcs_to_s32g_xpcs(pcs);
> > +     struct phylink_link_state state  = { 0 };
> > +
> > +     if (!(neg_mode == PHYLINK_PCS_NEG_INBAND_ENABLED))
> > +             return 0;
> > +
> > +     linkmode_copy(state.advertising, advertising);
> > +
> > +     return s32g_xpcs_config_an(xpcs, state);
>
> Given this is the only callsite for this function, and the only thing
> you pass is the advertising mask, why pass a struct phylink_link_state
> rather than the advertising mask?

fair enough

>
> > +}
> > +
> > +static void s32cc_phylink_pcs_restart_an(struct phylink_pcs *pcs)
> > +{
> > +     /* Not yet */
> > +}
> > +
> > +static void s32cc_phylink_pcs_link_up(struct phylink_pcs *pcs,
> > +                                   unsigned int neg_mode,
> > +                                   phy_interface_t interface, int speed,
> > +                                   int duplex)
> > +{
> > +     struct s32g_xpcs *xpcs = phylink_pcs_to_s32g_xpcs(pcs);
> > +     struct phylink_link_state state = { 0 };
> > +
> > +     state.speed = speed;
> > +     state.duplex = duplex;
> > +     state.an_complete = false;
>
> an_complete is never an "input" to drivers. It's a state from PCS
> drivers back to phylink. Also, s32g_xpcs_config never looks at this.
>
> > +
> > +     s32g_xpcs_config(xpcs, state);
>
> Again, the only things that this function uses are the speed and
> duplex, so why wrap them up into a struct?

will clean this

>
> > +}
> > +
> > +static const struct phylink_pcs_ops s32cc_phylink_pcs_ops = {
> > +     .pcs_get_state = s32cc_phylink_pcs_get_state,
> > +     .pcs_config = s32cc_phylink_pcs_config,
> > +     .pcs_an_restart = s32cc_phylink_pcs_restart_an,
> > +     .pcs_link_up = s32cc_phylink_pcs_link_up,
> > +};
>
> Please implement .pcs_inband_caps. As you don't support disabling
> inband for SGMII, that means you can't support MLO_AN_PHY mode
> reliably.

okay

>
> Also note that there are PHYs out there that do _not_ provide SGMII
> inband, which means if you have it enabled, and you're relying on it
> to complete, you won't be able to interface with those PHYs. There's
> such a PHY on a SFP module.
>
> If this driver is purely for a network PCS, then please locate it in
> drivers/net/pcs.

That was an one open point for me because the content of this file is
only called by
drivers/phy/freescale/phy-nxp-s32g-xpcs.c
So locating both in the same place looked reasonable but I can but
files in different dir

>
> I'm pretty sure there's other stuff I've missed as far as the phylink
> API goes, so please expect further review once you've addressed the
> comments above.

Thanks

>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

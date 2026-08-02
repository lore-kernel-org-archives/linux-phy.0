Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAA28C55171
	for <linux-phy@archiver.kernel.org>; Sun,  2 Aug 2026 03:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MBVU4bp/QOcdGYmbl95CFKWqPlMOXKGXfqAIT9DjM2Y=; b=vPSwOrX3z+jSVO
	jdBuSA8+zwDEpTWHBhIy+63jE5yTXDdKsUPO3JgdKon0nGWPC+0FBo13UkH5JSNLcrSKBQpgIC0Yn
	bwPmdaOh8gSr/EI7zMJaOkCN7IVBLIOwWSiOZf/XHoFeWzTHlTAahN7ViLlnWx4U8HwItdAi2GT+R
	lg4t+p/393YJS+S3AOOGSoiH1QoN9J8yt4kGNoixAaVbQa+iQKGNBLhgt8Dh/MWvy+PUqfeonim0W
	iLaouPSdSYH8Vlv1hOj0fNuahvxhTD9Vtx4G5Iaf0V+72Dz3mzHSO2YLSaohMd9kW6hc0brMvUIiT
	2OD8sU9VV/SqiDNKCoGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqMkf-0000000FIsq-3Yzd;
	Sun, 02 Aug 2026 03:20:37 +0000
Received: from mail-ej2-x03.google.com ([2a00:1450:4864:34::3])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqMkd-0000000FIrq-3B0Y
	for linux-phy@lists.infradead.org;
	Sun, 02 Aug 2026 03:20:36 +0000
Received: by mail-ej2-x03.google.com with SMTP id a640c23a62f3a-c160e831693so83982266b.1
        for <linux-phy@lists.infradead.org>; Sat, 01 Aug 2026 20:20:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785640834; cv=none;
        d=google.com; s=arc-20260327;
        b=nZtW1VXuwzOwQkFLw5VH0M4yVsKbobGN1FCyDwYcrE5i5i4msYu4plgdb93iI5Ak3r
         1IWeihJ0nDcCchP83afpgfvn6YUxqsntvfPvCZIMOvI6QkWeyhCYI+VHH1kDJVIOtuKw
         4r4Mdo9LzbS4FWLWY+1TAUB5OEWT+TqDjDueC1+ZsWGlf3L4Fz66zHHCt+E9zwZYTnXp
         tM43sXMpB6wDO4afIHU5QRSRXFz/0x73T/644xguy283S4sCnsehbkv2tqejaxaGBAli
         hFFn6XbocQzqdDkuN42n1PczXA50R+58incT+4Jg/X9y8pfmmHqXhtZ0YRoauoYrHiHq
         ojQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dokjfNwvvyjCQVfo5U9weDVNiEMz1GgnQwdVbTp72Qk=;
        fh=P9AGYz1+V8nVT3caALmaR7+O4c2R83kX6ETnkXaCUqc=;
        b=kWDlrwoPa5bWOlAxp9RPcHRd/FxDReWqglcpPW+pyuZbbr+U/WVNHf2TDBqm7rxZss
         V0eA9zlV1Sw7dvU4eUxkMLjlx9IOVdYiGxs8V51DyKC2YloF4b4hYdcmZbCUiC5T+nTX
         NgtG5ztFoxN040GP0rWoxF2WKvbmTgrkuSDVTKeSIxQ8NKHjFkFq4eF9kygtf5Q9fDg+
         TyIFQdEVi7/UFhVLy8xR0jhL/TOsu8GqH7sonNHI0idILO5uztvAbuQWy8qxSV1uGJFy
         E/yFY7euoB2Qq0imiDLYI1MBBXW0ouGCZzapt+5h9yAUbzEGee5ClQYt75TePRPqOYME
         h0KA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785640834; x=1786245634; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=dokjfNwvvyjCQVfo5U9weDVNiEMz1GgnQwdVbTp72Qk=;
        b=jR9byIyeVY1K/gowtIfYe5PDH244hcj//1Es9ISNhIEBjtNuQamjjIXig1exdaR5CB
         8hoNpnJHUecPgb6AWaEk62MAti6Rd3wXZHYCFoPLwZVM8qxmUy39NHzOJFP74VUXge5Q
         mkGlIo3YKGbkbDkw49ex5hmN0d4IxTwK405xV/YJaA82dmbjMnLUAhNPcJDZkia7VGtu
         u1r9+/c823eS4xdIS4PgDzu++Q084s2ubFCqdt/MFv2sI9UgVoPRGiiDp/w1E6KAfaAt
         9IQbSIrH0nfmJtq91xb7o6itGfkMA1cen8bi+/gnyYJhtMDoOWt91gysCY+8RoGm04qX
         vVDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785640834; x=1786245634;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=dokjfNwvvyjCQVfo5U9weDVNiEMz1GgnQwdVbTp72Qk=;
        b=WuI0XtDCN/ROJoihJfb9q+/YDrY5rx06Dy+0CDPWbAnwDboPK7wbn9pKiMlQryqUwR
         b/fCJ4SWqsLDEdtrpexQYkFIBrA/K+p3ClEHAgH7KpskArXypsD36ECOA13fe54NP0LV
         8kzbn8qfJnw//U9YiEy8UYeQoFSaec6bqiFRyzJgdQd2tTddn5Eau+NYNPtyWAlje5ZB
         FmjmdonyBq/3Z3ZuLzaBgSAisY8RXjKi1RIlt0LdiBiATv1VpXvCZqIL44zfWWyouQ4y
         jNhVNKPwN/8CiVccQV/C5HD7kJ+EvHdjrFTM3jPH3nYEAOXRxL1tj5VkNetPx3SYpSsl
         F7jw==
X-Forwarded-Encrypted: i=1; AHgh+RpI1k43Ny/Amyt16igyX/SXc+n7YRmVQYVm4wgflK+KfGDAAy6iqBXDLJToLx8Xj8DAg7GPF5w6jzU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0znooD47LLfusbda/PT2tAApJOGj5TjLleuk4ClzODtjVHjuh
	KbgtLignt1CaK8BxNxLD2S6hQw1RMJF0Kun3bIAlozuziT0AteMph3rYNgVqFWc5zyf7F28WJ5R
	bLzRlYHBzWT+D7yrWBsToqwfCJ/TDyT8=
X-Gm-Gg: AR+sD13U2B2tWk9A9D3ruAr7LYsUu4OOliRz1sedpp3bNpu3GZxsqW/F6V1i+TshHhW
	WiCn7QLrO+vNfJXLQo4N4fLRZ8ZU9IeA2GZe9SvexuX5xQy2ySvR/IzabNOfN+9slwBCXzs8RjA
	OH7A/fthnmbfQm+zp33osYKVxTqBoyzyw/mWGzmPMtp9U059RrIQDHnlhJYyYJ9enQQWjt7ygDj
	RqJu9WrGX4cOWoxner9nU0bUgY1eI2bBti2Om8Qp7rX8cJ/+lw2oVIfae+orFU5J/kYLUfBiYet
	F0TC5EAdAn94ujs/OhEgyWfI1Gi0F/AIRw0Qfu5d+dyG4ZY7yJKJkCl4vZ8YzIX6kjTpJQ==
X-Received: by 2002:a17:906:d8c3:b0:c12:b227:614b with SMTP id
 a640c23a62f3a-c1fe80d4099mr321593066b.27.1785640833516; Sat, 01 Aug 2026
 20:20:33 -0700 (PDT)
MIME-Version: 1.0
References: <20260801142244.679437-2-coiaprant@gmail.com> <20260801142244.679437-9-coiaprant@gmail.com>
 <23d8e994-8552-466f-98e6-c47d5783525b@lunn.ch>
In-Reply-To: <23d8e994-8552-466f-98e6-c47d5783525b@lunn.ch>
From: Coia Prant <coiaprant@gmail.com>
Date: Sun, 2 Aug 2026 11:20:27 +0800
X-Gm-Features: AUfX_mxFPztNas3fSYA9l7Pdws6J-Z60lqG9o0kXKtJ3uRladP8seNb6Ax7e_y4
Message-ID: <CALj3r0i5yVcJY8V75y0Hm5xjtZSBpH0DXSAWKsAUqguChVcxYA@mail.gmail.com>
Subject: Re: [PATCH v2 07/10] net: pcs: xpcs: add Rockchip RK3568 platform
 glue driver
To: Andrew Lunn <andrew@lunn.ch>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Romain Gantois <romain.gantois@bootlin.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Russell King <linux@armlinux.org.uk>, 
	Shawn Lin <shawn.lin@rock-chips.com>, David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260801_202035_877616_0BCDD06E 
X-CRM114-Status: GOOD (  20.90  )
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

> On Sat, Aug 01, 2026 at 10:22:31PM +0800, Coia Prant wrote:
> > The XPCS block contains four MII ports (0..3), each of which can be
> > routed to GMAC0 or GMAC1 via the pcs-handle property in the MAC node.
> > The hardware maps these ports to different MMDs:
> >   - port 0: MMD 7 (ROCKCHIP_MMD_MII)
> >   - port 1: MMD 2 (ROCKCHIP_MMD_MII1)
> >   - port 2: MMD 3 (ROCKCHIP_MMD_MII2)
> >   - port 3: MMD 4 (ROCKCHIP_MMD_MII3)
>
> Why is port 0 called ROCKCHIP_MMD_MII not ROCKCHIP_MMD_MII0 ?

Hi Andrew,

The naming follows the Rockchip TRM. The hardware documentation refers to
the MMD for the first port as simply "MII" without a numeric suffix, while
the other ports are named "MII1", "MII2", "MII3". I kept the naming
consistent with the TRM to make it easier to cross-reference.

As I understand it, this is probably because the MII controls not only
Port 0, but
also the entire PCS (these registers are read-only in Ports 1-3 and reflected
back to the MII).

If you prefer, I can rename it to ROCKCHIP_MMD_MII0 for consistency. Let me
know and I'll update it in v3.

>
> > +static int xpcs_rk_read_c22(struct mii_bus *bus, int addr, int reg)
> > +{
> > +     struct dw_xpcs_rk *pxpcs = bus->priv;
> > +     int dev;
> > +
> > +     if (!xpcs_rk_mdio_addr_validate(addr))
> > +             return -ENODEV;
> > +
> > +     dev = xpcs_rk_mdio_read_remapping(addr, MDIO_MMD_VEND2, reg);
>
> Does this mean C22 registers are mapped into the first 32 of C45
> MDIO_MMD_VEND2?

Yes, exactly. The C22 register space (reg 0-31) is mapped into the first
32 registers of the VEND2 MMD (MMD 7). This is how the hardware is designed
and matches the standard C22 to C45 address mapping.

>
> > +static int xpcs_rk_read_c45(struct mii_bus *bus, int addr, int dev, int reg)
> > +{
> > +     struct dw_xpcs_rk *pxpcs = bus->priv;
> > +
> > +     if (!xpcs_rk_mdio_addr_validate(addr))
> > +             return -ENODEV;
> > +
> > +     dev = xpcs_rk_mdio_read_remapping(addr, dev, reg);
>
> Should it be returning an error for dev == MDIO_MMD_VEND2? Or at least
> if reg < 32?

No, we cannot simply return an error here. The generic xpcs driver uses
C45 reads to access the VEND2 MMD for various operations, including reading
the device ID (xpcs_read_id). If we returned an error for VEND2 or blocked
reg < 32, the xpcs core driver would fail to identify the device and the
PCS would not work.

The VEND2 MMD is fully accessible on this hardware and contains the
standard C22 registers (0-31) as well as vendor-specific registers.
The remapping function maps the C45 address space to the correct
hardware MMD, and then the read/write functions handle the actual access.
This design matches how other xpcs platform drivers (e.g., pcs-xpcs-plat.c)
handle similar hardware.

For invalid MMIDs (e.g., MDIO_MMD_PCS, MDIO_MMD_VEND1, etc.), the
xpcs_rk_mdio_read_remapping() function returns -ENXIO, which is then
returned as 0xffff (meaning "no link" / "unavailable"). This is the
standard MDIO behavior for unimplemented registers.

Thanks,
Coia

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

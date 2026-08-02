Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3C0EC55162
	for <linux-phy@archiver.kernel.org>; Sun,  2 Aug 2026 18:33:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BUcgOVpjCkwavJeNhJa8qhEwKMagXasBGoSzwvYpamY=; b=zHl9P7zKpt90UJ
	CBRLhuJUnzbE/hxbs0gR96mfj5ZQpia7WMKw1aN8YSLTiFlj/fLBIfjYoizcUgs5lNj+5GVAdSlIm
	BxAcIMKK/OuaWzLF+bw7EjgNJ96sFEIPcsXBBT5rExLseSuagneWSjgsGNXwMUGeiIOy0nP3V+uWx
	RI78WdaEvJpvdTiLSzPSsA2849tt0BaS2MBYWm7C+FhihVIDNIlFEbJi2hW6qOxZa6jI7EOMw/pkB
	rcAxAcP3U8nNKwPSzSEtVYTXvfhQNg9bj+vEALcpLAlHzHdEruoWMC1MEEWLjP6Tfv0D878FL/eAN
	48Hh0In2mUIaSssejPng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqb0H-0000000FwPg-1pzz;
	Sun, 02 Aug 2026 18:33:41 +0000
Received: from mail-pj2-x0b.google.com ([2607:f8b0:4864:39::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqb0E-0000000FwNo-1ur1
	for linux-phy@lists.infradead.org;
	Sun, 02 Aug 2026 18:33:40 +0000
Received: by mail-pj2-x0b.google.com with SMTP id d9443c01a7336-2cf02ecb572so24665915ad.1
        for <linux-phy@lists.infradead.org>; Sun, 02 Aug 2026 11:33:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785695618; x=1786300418; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=AScFG8goSI/RgVxAO9BArK7H6La1AdrGmTueDgaxpTM=;
        b=Ql+fok+k8n8Bc70Zw+sXgaPUD1EYGP7VUp6J9stHXvTGz10C+UURGOzd5djxErN3yn
         +herP9i7PHu8e7DZ4umVNVjCewqQRqPcvw78xwbcv6n38RMQgs+qQ4GXYBESbKlGvXwS
         QpbmQ0zSvAUXeYQToqekQ7tFxNWLHKX7t7OP2kzYDiAdTIlJcrwUxsi5wuqXQ3t3ltt/
         2WGQNCHPHn0AHMiw1HYx1qyhM018Juc2y224q3PravBm8Ca2GWIr6XcPefgcsl4YYA0Q
         +e5eV27hI9avrctVRV1fbcdp1kM1XMjsrgeBvkAVjDR7e6GYrLkCfmjIFhZ5/Ry4eigL
         quTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785695618; x=1786300418;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AScFG8goSI/RgVxAO9BArK7H6La1AdrGmTueDgaxpTM=;
        b=K6ChNzfqWj7h7l9/TYdrlPPNpwH5NzXkOkpvUMNOksLeSVBahEzzjqetk/QvPLORi+
         YA3JWgpaFJattjY/09tGheNQcR2zpyHtgt/xFwFG8QlIGKNxWiAM/GhRjmj8cUu237gZ
         jN8yYloPB4V7wuHBY+w7oYFKYQBebpfDEP46UwaEUhCKd97p0eAy96R6CnLihiZZ3LTn
         4R3OPG+trZ3rE4QugVLPZF/lyu+mJZ/KUnppfG8x4Nj8LbXmWHSu4+2yAGhxL8ZM0ZS5
         UOduJT1BTFZv/yOWoToud8/5lqd/OYribg2J6M7Rkb0NNFSpTFfLY0oDks9J9W6bynyQ
         Z/Dg==
X-Forwarded-Encrypted: i=1; AHgh+RrvUSwEX6HqpQ4xmJVcxLdIKBEP/Xw6Uw+hfTWx+BOfFedXYcaxuBfuf9to1WgdiKk9QguiOYgwKXA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxsW/YPLrHiyUZcGZw6ezpWrDAy4c5DOYNTwufrT71FbqdN+F9N
	JLi3BiR+0kjXwteDjTyfyx+yotAomyvPXSDsJj8neohg0I4jeSnaePQw
X-Gm-Gg: AR+sD100Yke7uD2BBo8tudeZQMKFJYUt6xwWrRXBinVRO8BoSjy5pWgOj5UxBILzzIO
	wMEmG5ZOWfZhiQxCMYLBmJAaVmr3p+VDzwsASeNWY8VrH5osjuqeHQccEirNvcHcVsobU4yNIwR
	/3YocShfaWIj9NGK1JljLJPlxf4Xkpej3E5q13c0W7ccQW7HteqmI4TfaIDtRLlIE+0mxatw8ul
	2zKeK/503Z76QptCDyOZkfgOWkmjb6XCo2V3eMLobV206VdUK6aWRl/w6AYkx+XrApMSqmYJldu
	CGA5IChshfyqo/TJyHjxTzLSktsoN78nPBKAGkVuDpmWyA9y2/sPcL/4qlCWCdXEGEsZBpTTDDE
	dCLZg0vzchm1ClgM42jaXqIvwdsy80pQ2kxgT68LlETWkOb7EAjfDyKH+547JK3kfLNfclAmavY
	i8SvGMfWksgd+6JF4siFqjjpB9HOXd4vvP2S+/lHYq2RxVdG3QHnK7/TzJroodAxrB
X-Received: by 2002:a17:903:37c3:b0:2cc:d192:50b5 with SMTP id d9443c01a7336-2d05244b700mr76635895ad.34.1785695617537;
        Sun, 02 Aug 2026 11:33:37 -0700 (PDT)
Received: from ehlo.thunderbird.net ([2401:5a0:1000:10:233::14])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d04ae5e347sm27973535ad.25.2026.08.02.11.33.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Aug 2026 11:33:37 -0700 (PDT)
Date: Mon, 03 Aug 2026 02:33:32 +0800
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Romain Gantois <romain.gantois@bootlin.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Shawn Lin <shawn.lin@rock-chips.com>,
 David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-renesas-soc@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v2_07/10=5D_net=3A_pcs=3A_xpcs=3A_a?=
 =?US-ASCII?Q?dd_Rockchip_RK3568_platform_glue_driver?=
User-Agent: K-9 Mail for Android
In-Reply-To: <302c67b0-6729-4930-a409-a2408dde33fc@lunn.ch>
References: <20260801142244.679437-2-coiaprant@gmail.com> <20260801142244.679437-9-coiaprant@gmail.com> <23d8e994-8552-466f-98e6-c47d5783525b@lunn.ch> <CALj3r0i5yVcJY8V75y0Hm5xjtZSBpH0DXSAWKsAUqguChVcxYA@mail.gmail.com> <302c67b0-6729-4930-a409-a2408dde33fc@lunn.ch>
Message-ID: <58C6FD30-02CF-4DC8-BE7F-4E2AAC5985E4@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260802_113338_501591_87E302A6 
X-CRM114-Status: GOOD (  26.43  )
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

On August 2, 2026 10:39:46 PM GMT+08:00, Andrew Lunn <andrew@lunn.ch> wrote:
>On Sun, Aug 02, 2026 at 11:20:27AM +0800, Coia Prant wrote:
>> > On Sat, Aug 01, 2026 at 10:22:31PM +0800, Coia Prant wrote:
>> > > The XPCS block contains four MII ports (0..3), each of which can be
>> > > routed to GMAC0 or GMAC1 via the pcs-handle property in the MAC node.
>> > > The hardware maps these ports to different MMDs:
>> > >   - port 0: MMD 7 (ROCKCHIP_MMD_MII)
>> > >   - port 1: MMD 2 (ROCKCHIP_MMD_MII1)
>> > >   - port 2: MMD 3 (ROCKCHIP_MMD_MII2)
>> > >   - port 3: MMD 4 (ROCKCHIP_MMD_MII3)
>> >
>> > Why is port 0 called ROCKCHIP_MMD_MII not ROCKCHIP_MMD_MII0 ?
>> 
>> Hi Andrew,
>> 
>> The naming follows the Rockchip TRM. The hardware documentation refers to
>> the MMD for the first port as simply "MII" without a numeric suffix, while
>> the other ports are named "MII1", "MII2", "MII3". I kept the naming
>> consistent with the TRM to make it easier to cross-reference.
>> 
>> As I understand it, this is probably because the MII controls not only
>> Port 0, but
>> also the entire PCS (these registers are read-only in Ports 1-3 and reflected
>> back to the MII).
>> 
>> If you prefer, I can rename it to ROCKCHIP_MMD_MII0 for consistency. Let me
>> know and I'll update it in v3.
>
>If the TRM gives it this name, then O.K. It just makes the code look
>odd, unbalanced.
>
>> > > +static int xpcs_rk_read_c22(struct mii_bus *bus, int addr, int reg)
>> > > +{
>> > > +     struct dw_xpcs_rk *pxpcs = bus->priv;
>> > > +     int dev;
>> > > +
>> > > +     if (!xpcs_rk_mdio_addr_validate(addr))
>> > > +             return -ENODEV;
>> > > +
>> > > +     dev = xpcs_rk_mdio_read_remapping(addr, MDIO_MMD_VEND2, reg);
>> >
>> > Does this mean C22 registers are mapped into the first 32 of C45
>> > MDIO_MMD_VEND2?
>> 
>> Yes, exactly. The C22 register space (reg 0-31) is mapped into the first
>> 32 registers of the VEND2 MMD (MMD 7). This is how the hardware is designed
>> and matches the standard C22 to C45 address mapping.
>
>Does the xpcs code actually perform any C22 access? A quick look
>suggests it is C45 only. xpcs_read() calls mdiodev_c45_read(). If C22
>is not needed, i would not provide these functions.
>
>> 
>> >
>> > > +static int xpcs_rk_read_c45(struct mii_bus *bus, int addr, int dev, int reg)
>> > > +{
>> > > +     struct dw_xpcs_rk *pxpcs = bus->priv;
>> > > +
>> > > +     if (!xpcs_rk_mdio_addr_validate(addr))
>> > > +             return -ENODEV;
>> > > +
>> > > +     dev = xpcs_rk_mdio_read_remapping(addr, dev, reg);
>> >
>> > Should it be returning an error for dev == MDIO_MMD_VEND2? Or at least
>> > if reg < 32?
>> 
>> No, we cannot simply return an error here.
>
>Thanks for the explanation.
>
>       Andrew

Hi Andrew,

You're right that the xpcs core uses C45 exclusively, and modern kernels
no longer require C22 callbacks for mdiobus_register().

However, I'd prefer to keep them for two reasons:
1. Debugging tools (mdio-tools, ethtool, etc.) often use C22 reads to
   inspect PHY/PCS registers. Having these callbacks makes debugging
   much easier without having to patch the driver.
2. It keeps the driver consistent with pcs-xpcs-plat.c, which also
   provides both C22 and C45 callbacks even though the xpcs core
   only uses C45.

If you strongly prefer removing them to keep the code minimal, I can do
that in v3. But I think the debug benefit justifies keeping them.

Thanks,
Coia

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

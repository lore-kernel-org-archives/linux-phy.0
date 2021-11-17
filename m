Return-Path: <SRS0=mYmN=QE=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E53E2C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 17 Nov 2021 18:03:23 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A129D61AFF
	for <linux-phy@archiver.kernel.org>; Wed, 17 Nov 2021 18:03:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A129D61AFF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=gateworks.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y1NzrIIiBbhuiWUajO0AYpUmKuvlYRAPDHyJJePftBs=; b=L8imhKpCsr5fK6
	a1qMxDbVAZEv7mybAh8+mipEsnTsGZJW5BgMvLe08k6GX/yTjq/0ns/tuLoz0Ucml6ZcaSbMLwo3g
	qx2P0Xhh0525+XnpYOIzx57Cf9x6pLDZpDC6dCYtnlrMcqkpi89sTKXdFvoo+KSkmaObb+Y+tdLsE
	9Vk2T/HbtOe1VajUhSHwYFUoMw+Pb16TuHSTFkS6DySjQMLFeX48XkQiJdINC7ltNxAayG+kblHl1
	MbNT2iebeEmbBGxJnb31RsAa5jYa3D4w1Xy7OYBJ8msR1rOSNteZCiYz8sCEwSfrbfaldKQLwOVWn
	1t/9ap1v57YQoztMJ4pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnPHH-00626Y-05; Wed, 17 Nov 2021 18:03:23 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnPGr-0061x7-Ko
 for linux-phy@lists.infradead.org; Wed, 17 Nov 2021 18:02:59 +0000
Received: by mail-pj1-x1034.google.com with SMTP id gt5so2981608pjb.1
 for <linux-phy@lists.infradead.org>; Wed, 17 Nov 2021 10:02:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YeksuhhtUSz3GhzKKAUUL77SPdpKkfceYUSYzKoqHp8=;
 b=Pv5crV2pxyRv+BFsVoplyB6KW7BdHUcRbArMKYrck50DfuMy1IjZNb84b3/ACs1LP0
 Q/LoHQfoY0mLKaGEPN8FPB8Moir+NEpe8yJXR8IOd3bYFjLzV69IjLlsUzj4gAfK8Q3C
 8qCYKEL353V04wGUaOSMw0aaZIlXR5Mu5fLU8G3Br1PUKiYNkNllFWLiDq10Rpj/JxB8
 f/cVGbf7LuXTpapKhMbmsZ8p9Rq2j5+a5j16xGA2D4zBl4bxSr/uMgv2yHmjqRYO3J6J
 ZsiD2BUnkAijC8mpiT/o0J1KgEZeuEutfgnhij1DB3tZRWXTYbY9VHw2DjmYeh325eqU
 wpRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YeksuhhtUSz3GhzKKAUUL77SPdpKkfceYUSYzKoqHp8=;
 b=Yv18SAbrcjD2PdUZlG/rega/gscEmgfJxgHHAdAt7nyvYX70hQQpsV+DFM4DRFWOTu
 IJYSn6M+BATAEWaJGsTBfvm8JYzN15AjJ1tJWH+4Tz1jcf4PLMsE1mdNDoM/+D/Ra+ao
 4b9Z9oO3D7Rpg3Ep5lTwDMGuO9W8dclXgbBCLGgcTilFRDO7XxfAixQlLoHYhso5xgcD
 KiOu5oe77FMo6EXYpXXCptyvpf66dRKe3+lstofU69ljRE5bf0/nZiSRcZdRInmYjDk2
 vBtnaWHONwz5QsnQkTHBWajU9mqYoFlSFSBHexO3Tkc/6/msKk9g053Z9lnseCyOLl6E
 TBuw==
X-Gm-Message-State: AOAM531C07R1vHX6t589030GI+PN1h11mFVPNE6pSkhb04TjIdgXZH0h
 feGKv4EGl5wC7nJ7xUi1oDuYOMrcDMrcYrVi4U9iIw==
X-Google-Smtp-Source: ABdhPJwi+mtQ6SLVOKdkUsgwBPIY98hwm8sA7tdtwSHEH+HdOwI1VSXIr/L2aA6SjU4q5muVeSSgOIwkzlVrdzLIM3k=
X-Received: by 2002:a17:90b:17cc:: with SMTP id
 me12mr1866025pjb.179.1637172176108; 
 Wed, 17 Nov 2021 10:02:56 -0800 (PST)
MIME-Version: 1.0
References: <1635820355-27009-1-git-send-email-hongxing.zhu@nxp.com>
 <CAJ+vNU3r0aC8GrTQ2z5BqsCFCAXP+BWt2ntqsNy8DBd--nxdvQ@mail.gmail.com>
 <AS8PR04MB86760660BD24E4C2BD98F6318C999@AS8PR04MB8676.eurprd04.prod.outlook.com>
 <AS8PR04MB867632F01C9B0524BE994A5F8C9A9@AS8PR04MB8676.eurprd04.prod.outlook.com>
In-Reply-To: <AS8PR04MB867632F01C9B0524BE994A5F8C9A9@AS8PR04MB8676.eurprd04.prod.outlook.com>
From: Tim Harvey <tharvey@gateworks.com>
Date: Wed, 17 Nov 2021 10:02:45 -0800
Message-ID: <CAJ+vNU0VZ1S7RoJuT-9KD7+V_s_qpvZzawR9cVejVjmnQkxBQA@mail.gmail.com>
Subject: Re: [PATCH v5 0/8] Add the imx8m pcie phy driver and imx8mm pcie
 support
To: Hongxing Zhu <hongxing.zhu@nxp.com>
Cc: Lucas Stach <l.stach@pengutronix.de>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, 
 Kishon Vijay Abraham I <kishon@ti.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
 Rob Herring <robh@kernel.org>, 
 "galak@kernel.crashing.org" <galak@kernel.crashing.org>,
 Shawn Guo <shawnguo@kernel.org>, 
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
 Device Tree Mailing List <devicetree@vger.kernel.org>, 
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_100257_775713_19679147 
X-CRM114-Status: GOOD (  41.34  )
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

On Tue, Nov 16, 2021 at 7:38 PM Hongxing Zhu <hongxing.zhu@nxp.com> wrote:
>
> <snipped...>
> > > Subject: Re: [PATCH v5 0/8] Add the imx8m pcie phy driver and imx8mm
> > > pcie support
> > >
> > > On Mon, Nov 1, 2021 at 7:58 PM Richard Zhu <hongxing.zhu@nxp.com>
> > > wrote:
> > > >
> > > > Refer to the discussion [1] when try to enable i.MX8MM PCIe support,
> > > > one standalone PCIe PHY driver should be seperated from i.MX PCIe
> > > > driver when enable i.MX8MM PCIe support.
> > > >
> > > > This patch-set adds the standalone PCIe PHY driver suport[1-5], and
> > > > i.MX8MM PCIe support[6-8] to have whole view to review this
> > > patch-set.
> > > >
> > > > The PCIe works on i.MX8MM EVK board based the the blkctrl power
> > > driver
> > > > [2] and this patch-set. And tested by Tim and Marcel on the
> > > > different reference clock modes boards.
> > > >
> > > > [1]
> > > >
> > >
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpa
> > > tc
> > > >
> > >
> > hwork.ozlabs.org%2Fproject%2Flinux-pci%2Fpatch%2F20210510141509.
> > > 929120
> > > >
> > >
> > -3-l.stach%40pengutronix.de%2F&amp;data=04%7C01%7Chongxing.zhu
> > > %40nxp.c
> > > >
> > >
> > om%7C489971db9c0f4308600208d9a88b2b05%7C686ea1d3bc2b4c6fa9
> > > 2cd99c5c3016
> > > >
> > >
> > 35%7C0%7C0%7C637726137953234928%7CUnknown%7CTWFpbGZsb3d
> > > 8eyJWIjoiMC4wLj
> > > >
> > >
> > AwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&
> > > amp;sdata=
> > > >
> > >
> > ltuNZqIAsEH6%2B1KE4cqNOiUul3Ex%2BWmYcyqD%2BFJuUrs%3D&amp;
> > > reserved=0
> > > > [2]
> > > >
> > >
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpa
> > > tc
> > > >
> > >
> > hwork.kernel.org%2Fproject%2Flinux-arm-kernel%2Fcover%2F20210910
> > > 202640
> > > > .980366-1-l.stach%40pengutronix.de%2F&amp;data=04%7C01%7Ch
> > on
> > > gxing.zhu%
> > > >
> > >
> > 40nxp.com%7C489971db9c0f4308600208d9a88b2b05%7C686ea1d3bc2
> > > b4c6fa92cd99
> > > >
> > >
> > c5c301635%7C0%7C0%7C637726137953234928%7CUnknown%7CTWFp
> > > bGZsb3d8eyJWIjo
> > > >
> > >
> > iMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%
> > > 7C3000&amp
> > > > ;sdata=MrT3Re3YttE9AoqmGHksTqt4jF4vitRPz5lkgpZqSZ4%3D&amp;r
> > es
> > > erved=0
> > > >
> > > > Main changes v4 --> v5:
> > > > - Set the AUX_EN always 1b'1, thus it can fix the regression
> > > > introduced
> > > in v4
> > > >   series on Marcel's board.
> > > > - Use the lower-case letter in the devicetreee refer to Marcel's
> > > comments.
> > > > - Since the default value of the deemphasis parameters are zero,
> > > > only
> > > set
> > > >   the deemphasis registers when the input paramters are none zero.
> > > >
> > > > Main changes v3 --> v4:
> > > > - Update the yaml to fix syntax error, add maxitems and drop
> > > > description of phy
> > > > - Correct the clock name in PHY DT node.
> > > > - Squash the EVK board relalted dts changes into one patch, and drop
> > > the
> > > >   useless dummy clock and gpio suffix in DT nodes.
> > > > - Add board specific de-emphasis parameters as DT properties. Thus
> > > each board
> > > >   can specify its actual de-emphasis values.
> > > > - Update the commit log of PHY driver.
> > > > - Remove the useless codes from PCIe driver, since they are moved to
> > > > PHY driver
> > > > - After the discussion and verification of the CLKREQ#
> > > > configurations
> > > with Tim,
> > > >   agree to add an optional boolean property
> > > > "fsl,clkreq-unsupported",
> > > indicates
> > > >   the CLKREQ# signal is hooked or not in HW designs.
> > > > - Add "Tested-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>"
> > > > tag,
> > > since
> > > >   Marcel help to test the v3 patch-set.
> > > >
> > > > Main changes v2 --> v3:
> > > > - Regarding Lucas' comments.
> > > >  - to have a whole view to review the patches, send out the
> > i.MX8MM
> > > PCIe support too.
> > > >  - move the PHY related bits manipulations of the GPR/SRC to
> > > standalone PHY driver.
> > > >  - split the dts changes to SOC and board DT, and use the enum
> > > > instead
> > > of raw value.
> > > >  - update the license of the dt-binding header file.
> > > >
> > > > Changes v1 --> v2:
> > > > - Update the license of the dt-binding header file to make the license
> > > >   compatible with dts files.
> > > > - Fix the dt_binding_check errors.
> > > >
> > > > Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml    |
> > 6
> > > +++
> > > > Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml |
> > 95
> > > ++++++++++++++++++++++++++++++++
> > > > arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > |
> > > 55 +++++++++++++++++++
> > > > arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > |
> > > 46 +++++++++++++++-
> > > > drivers/pci/controller/dwc/pci-imx6.c                        |
> > > 73 ++++++++++++++++++++++---
> > > > drivers/phy/freescale/Kconfig
> > |
> > > 9 ++++
> > > > drivers/phy/freescale/Makefile
> > |
> > > 1 +
> > > > drivers/phy/freescale/phy-fsl-imx8m-pcie.c                   |
> > > 237
> > >
> > +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
> > > +++++++++++++++++++++
> > > > include/dt-bindings/phy/phy-imx8-pcie.h                      |
> > > 14 +++++
> > > > 9 files changed, 528 insertions(+), 8 deletions(-)
> > > >
> > > > [PATCH v5 1/8] dt-bindings: phy: phy-imx8-pcie: Add binding for the
> > > > [PATCH v5 2/8] dt-bindings: phy: Add imx8 pcie phy driver support
> > > > [PATCH v5 3/8] dt-bindings: imx6q-pcie: Add PHY phandles and name
> > > > [PATCH v5 4/8] arm64: dts: imx8mm: Add the pcie phy support
> > [PATCH
> > > v5
> > > > 5/8] phy: freescale: pcie: Initialize the imx8 pcie [PATCH v5 6/8]
> > > > arm64: dts: imx8mm: Add the pcie support [PATCH v5 7/8] arm64:
> > dts:
> > > > imx8mm-evk: Add the pcie support on imx8mm [PATCH v5 8/8] PCI:
> > > imx:
> > > > Add the imx8mm pcie support
> > >
> > > Richard,
> > >
> > > Are you posting a v6 of this series or have we already missed the
> > > window for 5.16?
> > [Richard Zhu] Hi Tim:
> > Thanks for your kindly reminder.
> > In my original plan, I prefer to merge the codes refine firstly, then issue
> > the v6 patch-set after the rebase.
> > https://patchwork.kernel.org/project/linux-arm-kernel/cover/163574747
> > 8-25562-1-git-send-email-hongxing.zhu@nxp.com/
> > Unfortunately, I don't get ack from Lucas for other four patches.
> > Anyway, I would post the v6 patch-set immediately after merge Rob's
> > comments.
> >
> > Best Regards
> > Richard Zhu
> > >
> > > Best regards,
> > >
> [Richard Zhu] Hi Tim:
> The V6 patch-set listed below had been issued.
> " https://patchwork.kernel.org/project/linux-phy/cover/1637028976-9201-1-git-send-email-hongxing.zhu@nxp.com/"
> GENERIC PHY FRAMEWORK maintainer Kishon and Vinod had been contained in the
>  mail-loop.
> Do you know who I can ping to pick up the PHY part of this patch-set?
>

Richard,

Thanks for posting the v6 series. Hopefully you can get Rob's ACK on
the last dt-binding patch. I'm not sure who would pick up patches in
drivers/phy - I don't see a maintainer for that dir. Perhaps Lucas
knows?

I noticed you did not send your v5 or v6 patchset to
linux-pci@vger.kernel.org so its missing from
https://patchwork.kernel.org/project/linux-pci/list/ and maybe that's
why you haven't gotten ack's yet?

Best regards,

Tim


Tim

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

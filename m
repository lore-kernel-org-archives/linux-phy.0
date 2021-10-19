Return-Path: <SRS0=JtrO=PH=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2AC4FC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 19 Oct 2021 15:53:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E695F6113D
	for <linux-phy@archiver.kernel.org>; Tue, 19 Oct 2021 15:53:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E695F6113D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=gateworks.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k/PxvIaAsGxaoT8TiBxM+eAkpetSP/DYB37E183ApXA=; b=ZJ/dPUpN/SwdGw
	Kcq6ULOVz0HAA3hhpERzrwklpcmd9EaDHfutXgStstB+JBqZUiX2N2ulUiJMIj8jKHIY4UXBNeybP
	kxIqQOtmyFjfOvb4JQ/+zuau/dVLu0+bdvoaxVfT94p4ecv9FNI9IiQ6Ef6s8/G1j+xswYwPonraw
	HK0iWB/Tsu12EtvvKuQl9uIH6Z5519yF/iW6s2Gy1TLQDNginP32RfRBHsuzyDnAYPb2TFfNPcQCK
	uoveQR9tHscE0KXio+kWg9S4iuqzXaKPQihjRo8xGOkGBuVTuXzsAD88v0BSXp8lpC+DU7eYpkSKI
	OYCQmF5j3XrG1Ggd3e0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcrQb-001lso-EO; Tue, 19 Oct 2021 15:53:25 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcrQG-001liw-OL
 for linux-phy@lists.infradead.org; Tue, 19 Oct 2021 15:53:09 +0000
Received: by mail-pj1-x102e.google.com with SMTP id
 q10-20020a17090a1b0a00b001a076a59640so2179162pjq.0
 for <linux-phy@lists.infradead.org>; Tue, 19 Oct 2021 08:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0hJdTPE/X0TchThuYtIcfkeVoIZpuXd1w8LycbQX2wo=;
 b=e0OMaw2pO7lBwvHrxGeO5TuJteJBanulQDFstc3mN0CIzzzSzFL0SAki2Ab8ovISkb
 CIciB+Ja0iSSBs/2XJ/obiJZVRvw9BUEZDIzqULrn5ZiFl7shdYvu051qjeozTntwYJT
 QYg6a/wYN4PrbGOFBWJit1cZbrJSYk7Naer1qlqa7z0RkP99/X0k0EE5vrtKTywBQi5f
 ACLwOQUmWS0Kjw6QCzwDs25iQG0575ejAmZGXtZ3WnMW2VJhT6TDDEt4mtQFS1t5Tc3L
 JsmiJuW2xFgURhMFXqKoI2MwUrYpfDqzgqoqT5WS5XkG+/DW2RwJtHY6sG231j3kgQzq
 qtRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0hJdTPE/X0TchThuYtIcfkeVoIZpuXd1w8LycbQX2wo=;
 b=4Uimuc4AhpciWmDzaqALk4cmOkIxeucBaw2iOj1dWLh/hz5xokEtumjgyH8JF9xLvh
 +Z+Y4w6y4KuIvz4XjkdZiWYaKJVzfa+4TJc9Ud9XL7zD4eaKdCDTJOSXqC0Pm1JxiexA
 F+NNmDo+wuo7dWFY+skzx5fhC1WlEx+LLyffRH77bBF8sYDis2mg0CV9Dg25LtzmVbIj
 1ux4JJy0M8wH+eyWBco2PX0P/UH4A66MQct4Yoxt+ZO7AN/yxbQEnm4rGOHdiMQLC96R
 zQh66/lL730mSNRUsHVQKj4g7Sd2iG9usRFRm9/vOYvGZ9NaYC0aVwf2bP3NjFe2r6ax
 3yZg==
X-Gm-Message-State: AOAM533HuViBemwkwuSYzD3vKlLugKwj1N51bSXC8uvk+zq5x1DB7cde
 djAwb7V4x8sxe+rzINeScIGC+et0fS6GQLSZnBSWyg==
X-Google-Smtp-Source: ABdhPJyRBqJPyd1gzy/plQ5XFljpcudmR2DUGHESDi4bc0j4s8l7ja0Hu4S+Q9rCI1WFNW8WsxgfYFyhjTBYhQxG6Kw=
X-Received: by 2002:a17:90b:1e4b:: with SMTP id
 pi11mr620719pjb.179.1634658783107; 
 Tue, 19 Oct 2021 08:53:03 -0700 (PDT)
MIME-Version: 1.0
References: <1634028078-2387-1-git-send-email-hongxing.zhu@nxp.com>
 <CAJ+vNU2b-=T_gTsRBvdF7SRUZopEFOU_Np8mEJn8bOpn5b5FaA@mail.gmail.com>
 <AS8PR04MB8676B2AC24E2769D47A1ED478CBD9@AS8PR04MB8676.eurprd04.prod.outlook.com>
In-Reply-To: <AS8PR04MB8676B2AC24E2769D47A1ED478CBD9@AS8PR04MB8676.eurprd04.prod.outlook.com>
From: Tim Harvey <tharvey@gateworks.com>
Date: Tue, 19 Oct 2021 08:52:51 -0700
Message-ID: <CAJ+vNU2AitmxCyam5FArmxAD41QUU=5CF_0JZhm+uzdkRbr7kw@mail.gmail.com>
Subject: Re: [PATCH v3 0/9] add the imx8m pcie phy driver and imx8mm pcie
 support
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: Lucas Stach <l.stach@pengutronix.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, 
 "vkoul@kernel.org" <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
 "galak@kernel.crashing.org" <galak@kernel.crashing.org>,
 Shawn Guo <shawnguo@kernel.org>, 
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
 Device Tree Mailing List <devicetree@vger.kernel.org>, 
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211019_085304_919267_E37959B1 
X-CRM114-Status: GOOD (  40.79  )
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

On Mon, Oct 18, 2021 at 7:10 PM Richard Zhu <hongxing.zhu@nxp.com> wrote:
>
>
> > -----Original Message-----
> > From: Tim Harvey <tharvey@gateworks.com>
> > Sent: Saturday, October 16, 2021 3:59 AM
> > To: Richard Zhu <hongxing.zhu@nxp.com>; Lucas Stach
> > <l.stach@pengutronix.de>
> > Cc: Kishon Vijay Abraham I <kishon@ti.com>; vkoul@kernel.org; Rob Herring
> > <robh@kernel.org>; galak@kernel.crashing.org; Shawn Guo
> > <shawnguo@kernel.org>; linux-phy@lists.infradead.org; Device Tree Mailing
> > List <devicetree@vger.kernel.org>; Linux ARM Mailing List
> > <linux-arm-kernel@lists.infradead.org>; open list
> > <linux-kernel@vger.kernel.org>; Sascha Hauer <kernel@pengutronix.de>;
> > dl-linux-imx <linux-imx@nxp.com>
> > Subject: Re: [PATCH v3 0/9] add the imx8m pcie phy driver and imx8mm pcie
> > support
> >
> > On Tue, Oct 12, 2021 at 2:06 AM Richard Zhu <hongxing.zhu@nxp.com>
> > wrote:
> > >
> > > refer to the discussion [1] when try to enable i.MX8MM PCIe support,
> > > one standalone PCIe PHY driver should be seperated from i.MX PCIe
> > > driver when enable i.MX8MM PCIe support.
> > >
> > > This patch-set adds the standalone PCIe PHY driver suport[1-5], and
> > > i.MX8MM PCIe support[6-9] to have whole view to review this patch-set.
> > >
> > > The PCIe works on i.MX8MM EVK board based the the blkctrl power driver
> > > [2] and this PHY driver patch-set.
> > >
> > > [1]
> > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatc
> > >
> > hwork.ozlabs.org%2Fproject%2Flinux-pci%2Fpatch%2F20210510141509.929
> > 120
> > >
> > -3-l.stach%40pengutronix.de%2F&amp;data=04%7C01%7Chongxing.zhu%40
> > nxp.c
> > >
> > om%7C4e3d8ee008d94327f99108d9901634be%7C686ea1d3bc2b4c6fa92cd
> > 99c5c3016
> > >
> > 35%7C0%7C0%7C637699247319711209%7CUnknown%7CTWFpbGZsb3d8ey
> > JWIjoiMC4wLj
> > >
> > AwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp
> > ;sdata=
> > >
> > Z2TZCpdDUSoqrNB1X%2BXdoYNBe3dBDKUgkA4r%2F0TcdOg%3D&amp;reser
> > ved=0
> > > [2]
> > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatc
> > >
> > hwork.kernel.org%2Fproject%2Flinux-arm-kernel%2Fcover%2F202109102026
> > 40
> > > .980366-1-l.stach%40pengutronix.de%2F&amp;data=04%7C01%7Chongxin
> > g.zhu%
> > >
> > 40nxp.com%7C4e3d8ee008d94327f99108d9901634be%7C686ea1d3bc2b4c6
> > fa92cd99
> > >
> > c5c301635%7C0%7C0%7C637699247319711209%7CUnknown%7CTWFpbGZ
> > sb3d8eyJWIjo
> > >
> > iMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C10
> > 00&amp
> > > ;sdata=5h%2By%2FcBW%2BjFkyplUuN1nB5%2BAFHuwCUJBqvRh1RiPYMo
> > %3D&amp;rese
> > > rved=0
> > >
> > > Main changes v2 --> v3:
> > > - Regarding Lucas' comments.
> > >  - to have a whole view to review the patches, send out the i.MX8MM PCIe
> > support too.
> > >  - move the PHY related bits manipulations of the GPR/SRC to standalone
> > PHY driver.
> > >  - split the dts changes to SOC and board DT, and use the enum instead of
> > raw value.
> > >  - update the license of the dt-binding header file.
> > >
> > > Changes v1 --> v2:
> > > - Update the license of the dt-binding header file to make the license
> > >   compatible with dts files.
> > > - Fix the dt_binding_check errors.
> > >
> > > Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml    |   6 +++
> > > Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml |  79
> > +++++++++++++++++++++++++++++
> > > arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi                |  53
> > ++++++++++++++++++++
> > > arch/arm64/boot/dts/freescale/imx8mm.dtsi                    |
> > 46 ++++++++++++++++-
> > > drivers/pci/controller/dwc/pci-imx6.c                        |  63
> > ++++++++++++++++++++++-
> > > drivers/phy/freescale/Kconfig                                |   9
> > ++++
> > > drivers/phy/freescale/Makefile                               |   1
> > +
> > > drivers/phy/freescale/phy-fsl-imx8m-pcie.c                   | 218
> > ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
> > ++++++++++++++++++
> > > include/dt-bindings/phy/phy-imx8-pcie.h                      |  14
> > ++++++
> > > 9 files changed, 486 insertions(+), 3 deletions(-)
> > >
> > > [PATCH v3 1/9] dt-bindings: phy: phy-imx8-pcie: Add binding for the
> > > [PATCH v3 2/9] dt-bindings: phy: add imx8 pcie phy driver support
> > > [PATCH v3 3/9] arm64: dts: imx8mm: add the pcie phy support [PATCH v3
> > > 4/9] arm64: dts: imx8mm-evk: add the pcie phy support [PATCH v3 5/9]
> > > phy: freescale: pcie: initialize the imx8 pcie [PATCH v3 6/9]
> > > dt-bindings: imx6q-pcie: Add PHY phandles and name [PATCH v3 7/9]
> > > arm64: dts: imx8mm: add the pcie support [PATCH v3 8/9] arm64: dts:
> > > imx8mm-evk: add the pcie support on imx8mm [PATCH v3 9/9] PCI: imx:
> > > add the imx8mm pcie support
> >
> > Richard and Lucas,
> >
> > Thanks for your collective work on this series!
> >
> > I have imx8mm-venice boards to test this on both with and without PCIe
> > bridges. I've tested this on top of Shawn's imx/for-next (as blk-ctl has been
> > merged there) and end up hanging waiting for PHY ready timeout.
> [Richard Zhu] Sorry to reply late. I run the tests based on pci/for-next applied the blk-ctl issue by Lucas [2] in commit.
> Can you help to make a re-tests?
> As I know that the blk-ctl is not merged yet.
> Hi Lucas:
> Am I right?
>

Richard,

v5 of blk-ctl is merged into Shawn's for-next tree.

> >
> > [    1.454308] imx6q-pcie 33800000.pcie:       IO
> > 0x001ff80000..0x001ff8ffff -> 0x0
> > [    1.466538] imx6q-pcie 33800000.pcie:      MEM
> > 0x0018000000..0x001fefffff -> 0x0
> > [    1.476344] libphy: fec_enet_mii_bus: probed
> > [    1.602631] phy phy-32f00000.pcie-phy.0: phy init failed --> -110
> > [    1.608775] imx6q-pcie 33800000.pcie: Waiting for PHY ready timeout!
> >
> > I can verify that imx8_pcie_phy_probe returns successfully and the the phy
> > node (imx6_pcie->phy) was found.
> >
> > Here is the dt change I made for the imx8mm-venice-gw71xx-0x board that
> > has no bridge:
> [Richard Zhu] Refer to the changes, the external OSC is used as PCIe REF clock(same to EVK board design), right?

Correct, an ext osc is used like EVK.

I applied v5 blk-ctl and your v3 series on top of pci/next and came up
with the same issue. Do you have a git repo I could try to make sure
I'm not missing anything?

Also, as Lucas has requested some changes do you have a v4 coming soon
that I should wait for to try? I believe this has something to do with
the phy reset where some of his changes were requested.

Best regards,

Tim

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

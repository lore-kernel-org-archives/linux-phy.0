Return-Path: <SRS0=nTb1=PJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B69CDC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 21 Oct 2021 16:25:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 76ABC61372
	for <linux-phy@archiver.kernel.org>; Thu, 21 Oct 2021 16:25:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 76ABC61372
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=gateworks.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XJwpEqIJxt293ps3V+M01+7+o+PF/akv/BbeSTE09p8=; b=oktMEjepkGFoaq
	MtEgMgUSFWLrQikJZM67j4NVHEEXgFiMZBJRyP1W5bshRzU/QobmJcMpO5R9dCiHz41OQ5lpFWBnZ
	hw6lsjcztMkKr4rpM45jMM38l5G3IFuMYuOA4O9YH8kWq2M4jzMkmSuhI+uCi6dFbTT/1iEmndV2j
	cTv5MgZLXNLBsKkbfA7Gb7QaN+8sWl5SzGx6EwTg/fUTRq1skMEAjnqxUZ4T30EVjGtW0tsy6fh7o
	bUuMv/ahvFRfSkXVfJe04aUhtsYB1xWia7ocNQfT4dkgZzghqy6wlNQkHQWjPlGVaT6nABh2iYjio
	uDhPllljltEHzc/UuZnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdat8-008LiW-Ut; Thu, 21 Oct 2021 16:25:54 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdasw-008LfA-I2
 for linux-phy@lists.infradead.org; Thu, 21 Oct 2021 16:25:44 +0000
Received: by mail-pj1-x1030.google.com with SMTP id
 s61-20020a17090a69c300b0019f663cfcd1so3560488pjj.1
 for <linux-phy@lists.infradead.org>; Thu, 21 Oct 2021 09:25:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iAnpKLrcm2tdjxUaFuzIsfiwgmKhNG/KGZx9dSoZPDM=;
 b=O10F/YjRmFJq43aZ6vLGIgL8LMQ8M8cQ9BPKbjG/LRQwB/urwmiB3A+rzzqz/FboHv
 D1vu6DwHf5glncrkaxUPILaUoccoWS/XSdg0qSILvbixJXOY2aSprrHykwSGAztBt0N4
 TBu1b9HpTTSItNFpXVuO4JPqv+q4nROvqwj38veO3icrz4obDb7KLZNtdqjNIPtJM+I7
 S51W/aEm3xjiovPXkt3iKuac3iUSWP8RG3ZW8FNHZ5vOSMcsb4kIcEoHaJUaXoZ/Wazs
 JSFJK6KIq/bDcN+/YxjCpFkT+v2yLNOdu/ZdyhHXq6dL9mTlFR2mSd3T6A+Ff2wGDE40
 YShQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iAnpKLrcm2tdjxUaFuzIsfiwgmKhNG/KGZx9dSoZPDM=;
 b=jpQ36BvhnZcOWeOE09+cH+w9/3g+5/ZZtrnsrFcYVt5C/SbtWhaa3mHokY4vM2wdNJ
 9uBpWvPSU3q0oj/2vFo4fqt1GvcFtGcAq4Olv33SgaG6xeLgUFn9zUt2DkN0bSzOvMyh
 3pbrOpU5/34fpvJuXq+KJJ8wsZaYaCRNZffAmY95526Hyo7CC9F3evaLmJIYfcS/ALcT
 sQqbkwt2xQY0YEWk/6sY0nE+sRFftVsKOTCj3Rrw57y+oe6l6H/EuLpgwsKDGuS/COYt
 1BYj/2WjjwAjW3mZavRmy3wzvkpp/TSk3JGgUDt59JIwMNwv4/F7sM7glepyIJ8tkfJW
 9okg==
X-Gm-Message-State: AOAM531w/jnLQVHUaeqiLZ5xrrpy94Dkd35EM/tpYoixUxmTwa9pcz1f
 wkcQQ/aHmwt6IkSXRMoC59VZGXYkWdQ1qJHVrAekiQ==
X-Google-Smtp-Source: ABdhPJzEwh76oD9dG9XjD3nCgFU658e2ZbKOn9LNf1N8v8DApEV38EoPM85mhtxqv8jEIHYABhvism/ys+PFX2PCehk=
X-Received: by 2002:a17:90b:4b85:: with SMTP id
 lr5mr7788336pjb.66.1634833541226; 
 Thu, 21 Oct 2021 09:25:41 -0700 (PDT)
MIME-Version: 1.0
References: <1634028078-2387-1-git-send-email-hongxing.zhu@nxp.com>
 <CAJ+vNU2b-=T_gTsRBvdF7SRUZopEFOU_Np8mEJn8bOpn5b5FaA@mail.gmail.com>
 <AS8PR04MB8676B2AC24E2769D47A1ED478CBD9@AS8PR04MB8676.eurprd04.prod.outlook.com>
 <CAJ+vNU2AitmxCyam5FArmxAD41QUU=5CF_0JZhm+uzdkRbr7kw@mail.gmail.com>
 <AS8PR04MB8676840D7EDD56D10F9471288CBE9@AS8PR04MB8676.eurprd04.prod.outlook.com>
 <CAJ+vNU2GU5=mM5+2Yg9gAuU0RSdJHWEU_+ykmz-qUWfsOnRJ8g@mail.gmail.com>
 <AS8PR04MB867624A8A5B6AE27D6A9160F8CBF9@AS8PR04MB8676.eurprd04.prod.outlook.com>
In-Reply-To: <AS8PR04MB867624A8A5B6AE27D6A9160F8CBF9@AS8PR04MB8676.eurprd04.prod.outlook.com>
From: Tim Harvey <tharvey@gateworks.com>
Date: Thu, 21 Oct 2021 09:25:29 -0700
Message-ID: <CAJ+vNU1Si_bv0_2j5AU-v_1QtUGqwU_4u=NksAVFFXXkkNC1Sw@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20211021_092542_610249_E4B45764 
X-CRM114-Status: GOOD (  48.72  )
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

On Wed, Oct 20, 2021 at 8:32 PM Richard Zhu <hongxing.zhu@nxp.com> wrote:
>
> <snipped...>
> >
> > Richard,
> >
> > What is this 'invalid resource' about? I see that with my downstream
> > IMX8MM PCIe driver as well and have been asked about it.
> >
> [Richard Zhu] Hi Tim:
> This complain is caused by the following codes in pcie-designware.c driver.
> I'm not sure that why there is only size assignment after the res valid check, and do nothing if the res is invalid.
> It seems that it is an expected design logic refer to the later codes.
>                 if (!pci->atu_base) {
>                         struct resource *res =
>                                 platform_get_resource_byname(pdev, IORESOURCE_MEM, "atu");
>                         if (res)
>                                 pci->atu_size = resource_size(res);
>                         pci->atu_base = devm_ioremap_resource(dev, res);
>                         if (IS_ERR(pci->atu_base))
>                                 pci->atu_base = pci->dbi_base + DEFAULT_DBI_ATU_OFFSET;
>                 }
>
> Since the default offset is used on i.MX8MM, the "atu" is not specified in i.MX8MM PCIe DT node, so there is no real res at all.
> Then, devm_ioremap_resource() would complain the invalid resource.

I think you are saying a change should be made like this:
diff --git a/drivers/pci/controller/dwc/pcie-designware.c
b/drivers/pci/controller/dwc/pcie-designware.c
index a945f0c0e73d..3254f60d1713 100644
--- a/drivers/pci/controller/dwc/pcie-designware.c
+++ b/drivers/pci/controller/dwc/pcie-designware.c
@@ -671,10 +671,11 @@ void dw_pcie_iatu_detect(struct dw_pcie *pci)
                if (!pci->atu_base) {
                        struct resource *res =
                                platform_get_resource_byname(pdev,
IORESOURCE_MEM, "atu");
-                       if (res)
+                       if (res) {
                                pci->atu_size = resource_size(res);
-                       pci->atu_base = devm_ioremap_resource(dev, res);
-                       if (IS_ERR(pci->atu_base))
+                               pci->atu_base = devm_ioremap_resource(dev, res);
+                       }
+                       if (!pci->atu_base || IS_ERR(pci->atu_base))
                                pci->atu_base = pci->dbi_base +
DEFAULT_DBI_ATU_OFFSET;
                }

so that it looks like this:
                if (!pci->atu_base) {
                        struct resource *res =
                                platform_get_resource_byname(pdev,
IORESOURCE_MEM, "atu");
                        if (res) {
                                pci->atu_size = resource_size(res);
                                pci->atu_base = devm_ioremap_resource(dev, res);
                        }
                        if (!pci->atu_base || IS_ERR(pci->atu_base))
                                pci->atu_base = pci->dbi_base +
DEFAULT_DBI_ATU_OFFSET;
                }

Right?

>
> > > [    1.316305] imx6q-pcie 33800000.pcie: iATU unroll: enabled
> > > [    1.321799] imx6q-pcie 33800000.pcie: Detected iATU regions: 4
> > outbound, 4 inbound
> > > [    1.429803] imx6q-pcie 33800000.pcie: Link up
> > > [    1.534497] imx6q-pcie 33800000.pcie: Link up
> > > [    1.538870] imx6q-pcie 33800000.pcie: Link up, Gen2
> > > [    1.550364] imx6q-pcie 33800000.pcie: Link up
> > > [    1.550487] imx6q-pcie 33800000.pcie: PCI host bridge to bus 0000:00
> > > [    1.565545] pci_bus 0000:00: root bus resource [bus 00-ff]
> > > [    1.573834] pci_bus 0000:00: root bus resource [io  0x0000-0xffff]
> > > [    1.580055] pci_bus 0000:00: root bus resource [mem
> > 0x18000000-0x1fefffff]
> > > [    1.586968] pci 0000:00:00.0: [16c3:abcd] type 01 class 0x060400
> > > [    1.592997] pci 0000:00:00.0: reg 0x10: [mem 0x00000000-0x000fffff]
> > > [    1.599282] pci 0000:00:00.0: reg 0x38: [mem 0x00000000-0x0000ffff
> > pref]
> > > [    1.606033] pci 0000:00:00.0: supports D1
> > > [    1.610053] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
> > D3cold
> > > [    1.618206] pci 0000:01:00.0: [15b7:5002] type 00 class 0x010802
> > > [    1.624293] pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x00003fff
> > 64bit]
> > > [    1.631177] pci 0000:01:00.0: reg 0x20: [mem 0x00000000-0x000000ff
> > 64bit]
> > > [    1.638409] pci 0000:01:00.0: 4.000 Gb/s available PCIe bandwidth,
> > limited by 5.0 GT/s PCIe x1 link at 0000:00:00.0 (capable of 31.504 Gb/s with
> > 8.0 GT/s PCIe x4 link)
> > > [    1.664931] pci 0000:00:00.0: BAR 0: assigned [mem
> > 0x18000000-0x180fffff]
> > > [    1.671745] pci 0000:00:00.0: BAR 14: assigned [mem
> > 0x18100000-0x181fffff]
> > > [    1.678634] pci 0000:00:00.0: BAR 6: assigned [mem
> > 0x18200000-0x1820ffff pref]
> > > [    1.685873] pci 0000:01:00.0: BAR 0: assigned [mem
> > 0x18100000-0x18103fff 64bit]
> > > [    1.693222] pci 0000:01:00.0: BAR 4: assigned [mem
> > 0x18104000-0x181040ff 64bit]
> > > [    1.700577] pci 0000:00:00.0: PCI bridge to [bus 01-ff]
> > > [    1.705814] pci 0000:00:00.0:   bridge window [mem
> > 0x18100000-0x181fffff]
> > > [    1.712972] pcieport 0000:00:00.0: PME: Signaling with IRQ 216
> > > "
> > > Regarding the log you pasted, it seems that the clock is not feed to PHY
> > properly.
> > >
> > > Anyway, let's waiting for the v4 series, then make a try. Thanks for your
> > great help to make the double tests.
> > >
> >
> > My boards do not use CLKREQ# so I do not have that defined in pinmux and I
> > found that if I add MX8MM_IOMUXC_I2C4_SCL_PCIE1_CLKREQ_B PCIe
> > works on my board but this isn't a solution just a work-around (I have boards
> > that use the only two possible pins for CLKREQ as other features).
> >
> > Similarly you will find on the imx8mm-evk if you comment out the CLKREQ
> > (which isn't required) the imx8mmevk will end up hanging like my boards:
> [Richard Zhu] Hi Tim:
> Regarding the SPEC, the CLKREQ# is mandatory required, and should be configured as an open drain, active low signal.
> And this signal should be driven low by the PCIe M.2 device to request the REF clock be available(active low).
> So, there is such kind of CLKREQ# pin definition on i.MX8MM EVK board.
>
> Anyway, I think the external OSC circuit should be always running if there is no CLKREQ# on your HW board design.
>

The way I understand it is CLKREQ# allows the host to disable the
REFCLK when not needed for power savings so it would seem optional to
implement that and if not implemented should be left unconnected on
the card.

> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > index 5ce43daa0c8b..f0023b48f475 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> > @@ -448,7 +448,9 @@
> >
> >         pinctrl_pcie0: pcie0grp {
> >                 fsl,pins = <
> > +/*
> >
> > MX8MM_IOMUXC_I2C4_SCL_PCIE1_CLKREQ_B    0x61
> > +*/
> >                         MX8MM_IOMUXC_SAI2_RXFS_GPIO4_IO21
> > 0x41
> >                 >;
> >         };
> >
> > I have PCIe working with a driver that I ported from NXP's kernel which differs
> > from your driver in that the PCIe PHY is not abstracted to its own driver so I
> > think this has something to do with the order in which the phy is reset or
> > initialized? The configuration of gpr14 bits looks correct to me.
> [Richard Zhu] The CLKREQ# PIN definition shouldn't be masked.
> In the NXP's local BSP kernel, I just force CLKREQ# low to level up the HW compatibility.
> That's might the reason why the PCIe works on your HW board although the CLKREQ# PIN is not defined.
> This method is a little rude and violate the SPEC, and not recommended although it levels up the HW compatibility.
> So I drop this method in this series.
>

Sorry, I don't understand what you are saying here. Is there a change
you are going to make to v4 that will make this work for the evk and
my boards? What is that change exactly?

I responded to your "phy: freescale: pcie: initialize the imx8 pcie
standalone phy driver" submission as I don't understand the GPR14 bit
documentation from the IMX8MMRM.

Best regards,

Tim

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

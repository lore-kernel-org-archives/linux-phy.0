Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99B21ECAAD3
	for <linux-phy@archiver.kernel.org>; Mon, 19 Sep 2022 21:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E3ZcS3PZTNOrKEFtTz/7k2vmTuGgnrVRaUFKuOpi5AM=; b=wBscOrMB+j+Q5m
	rslchPg9aEpWJ+Ei10XpZzpXqZcBSBYH3REREcIikjHD+99w0pGy2G49AMvpp1/AP8SJ7j6AcLQ4O
	aHuTdoLbjz+e1Pp3KUR49Mm/ebt/5x2C9nVpjk+BpE2XJLKeCC5M4RSLepYWo6Rq2wviW0S4GNN8Z
	RG/FQHXd9xEWAndhpVXeNpCZDtDi3NDrEfDFdNCuvBMFI/m5pBZyNs8JXK3LyuwPaEqGAUXcJOL45
	95wK6rao2Sduec4vMUPh+a8Yyd2D506w1/GkpQnQNHjXU8wGzEm5V2S3cfgBb0WwBcFn5bC1kdaRm
	2uTmJZG2tCntg5wPChbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaOPY-00Fcvy-QN; Mon, 19 Sep 2022 21:34:40 +0000
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaOPV-00FcuK-Vm
	for linux-phy@lists.infradead.org; Mon, 19 Sep 2022 21:34:39 +0000
Received: by mail-ot1-x32d.google.com with SMTP id 102-20020a9d0bef000000b0065a08449ab3so478016oth.2
        for <linux-phy@lists.infradead.org>; Mon, 19 Sep 2022 14:34:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=GhlGF570/fMNse4ofDbeyEClP1h1fR6cANBtjl25epI=;
        b=8GxuPNefYMuf0/s1o3Lvazl4obZV+mdgoLuUVPHKSFPb5+OMNRtsRkh8UKu7v3hfKz
         92F8kDyd6gXFmQB7CeE2mSO2fV9poOXWrqAhsXrCxjSAQI08c2E9A+h0RcJhAjihLtg5
         J4aH5ChFDHac+oIGo3rN3TS58JT5MfEhiFho41BHoL2BdvZ288OEJRaZl+R4VoCFCU74
         gCM7/82clFkHSI0t4ZmGqs7c6loI2O2jpigZxDpMXTQ0vN1o1mfxG6fkM1g44StZq1yW
         tYgGrKZ8vppf09969n4WSgt/WTGWmpoBEyDXmGuLX/6IDsFytV9IKnJJuNI7U5f6OYww
         SE2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=GhlGF570/fMNse4ofDbeyEClP1h1fR6cANBtjl25epI=;
        b=O8DcRimAF2IDc8t9U9Y9gztHuN7O7mePXWiZwaCX8wrYfy4HJhwhUMTJbtbMIhGpA4
         8ziv7k5BdZ9Rtp+e6mk1Y5hWEBJltWUFhz1B9WVssMehwXrR629AHirdT6diOAIr8Sek
         g0eBQGHJv6+buPR7QYcgWU9dNcoFiF0jVIY9sgE6TT9XGaNVW6HIzbnMZifbJ3XcnxfW
         m94Hh0IQF79zcZflqpBwP/2+Qx6T/zDpba7PU93LOn6x4jj+roGsu+k82jJWg6EVLrE0
         RGbLzpSApxJdeyPMSQxVI8RXlpMvRJTS4BDOwciQ3G8N9fqwjd0MtUb8uBxCHuxDUIqS
         557A==
X-Gm-Message-State: ACrzQf2pias/M2uIbHTOV8ki4Y+tJ8J4UKbWAmeigS2bajpLsReXUiZC
	N+HmaFrboV10kUtFBGFM9ziwqSj+Mw1W/DTRYVZElQ==
X-Google-Smtp-Source: AMsMyM42FduJa4ir+xXvwJjSd6HCgTrvxI4AfniM3y4TROVlTPge2JWGcA4981o487r0XCFOOeFWnYrBwJu2uVReeLk=
X-Received: by 2002:a9d:12a1:0:b0:658:5c77:d547 with SMTP id
 g30-20020a9d12a1000000b006585c77d547mr9105264otg.48.1663623275484; Mon, 19
 Sep 2022 14:34:35 -0700 (PDT)
MIME-Version: 1.0
References: <1662109086-15881-1-git-send-email-hongxing.zhu@nxp.com>
 <1662109086-15881-4-git-send-email-hongxing.zhu@nxp.com> <ec59c235f11664a0a90f14b86bd63f74fb7f6d27.camel@toradex.com>
In-Reply-To: <ec59c235f11664a0a90f14b86bd63f74fb7f6d27.camel@toradex.com>
From: Tim Harvey <tharvey@gateworks.com>
Date: Mon, 19 Sep 2022 14:34:23 -0700
Message-ID: <CAJ+vNU3tV1NSNT8R-QNTxEhe+oxR=Fz9zHKGbf_MSBgr9dQ10g@mail.gmail.com>
Subject: Re: [PATCH v7 3/7] arm64: dts: imx8mp-evk: Add PCIe support
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc: "vkoul@kernel.org" <vkoul@kernel.org>, 
	"richard.leitner@linux.dev" <richard.leitner@linux.dev>, 
	"alexander.stein@ew.tq-group.com" <alexander.stein@ew.tq-group.com>, "robh@kernel.org" <robh@kernel.org>, 
	"l.stach@pengutronix.de" <l.stach@pengutronix.de>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
	"lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>, 
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, "hongxing.zhu@nxp.com" <hongxing.zhu@nxp.com>, 
	"bhelgaas@google.com" <bhelgaas@google.com>, "marex@denx.de" <marex@denx.de>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "kernel@pengutronix.de" <kernel@pengutronix.de>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-imx@nxp.com" <linux-imx@nxp.com>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_143438_030108_D3F47335 
X-CRM114-Status: GOOD (  25.82  )
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

On Mon, Sep 19, 2022 at 8:22 AM Marcel Ziswiler
<marcel.ziswiler@toradex.com> wrote:
>
> Hi Richard et. al.
>
> Thank you very much for the i.MX 8MP PCIe support work.
>
> On Fri, 2022-09-02 at 16:58 +0800, Richard Zhu wrote:
> > Add PCIe support on i.MX8MP EVK board.
> >
> > Signed-off-by: Richard Zhu <hongxing.zhu-3arQi8VN3Tc@public.gmane.org>
> > Tested-by: Marek Vasut <marex-ynQEQJNshbs@public.gmane.org>
> > Tested-by: Richard Leitner <richard.leitner-WcANXNA0UjBBDgjK7y7TUQ@public.gmane.org>
> > Tested-by: Alexander Stein <alexander.stein-W3o+9BuWjQaZox4op4iWzw@public.gmane.org>
> > Reviewed-by: Lucas Stach <l.stach-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mp-evk.dts | 53 ++++++++++++++++++++
> >  1 file changed, 53 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
> > index f6b017ab5f53..9f1469db554d 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
> > @@ -5,6 +5,7 @@
> >
> >  /dts-v1/;
> >
> > +#include <dt-bindings/phy/phy-imx8-pcie.h>
> >  #include "imx8mp.dtsi"
> >
> >  / {
> > @@ -33,6 +34,12 @@ memory@40000000 {
> >                       <0x1 0x00000000 0 0xc0000000>;
> >         };
> >
> > +       pcie0_refclk: pcie0-refclk {
> > +               compatible = "fixed-clock";
> > +                       #clock-cells = <0>;
> > +                       clock-frequency = <100000000>;
> > +       };
> > +
> >         reg_can1_stby: regulator-can1-stby {
> >                 compatible = "regulator-fixed";
> >                 regulator-name = "can1-stby";
> > @@ -55,6 +62,17 @@ reg_can2_stby: regulator-can2-stby {
> >                 enable-active-high;
> >         };
> >
> > +       reg_pcie0: regulator-pcie {
> > +               compatible = "regulator-fixed";
> > +               pinctrl-names = "default";
> > +               pinctrl-0 = <&pinctrl_pcie0_reg>;
> > +               regulator-name = "MPCIE_3V3";
> > +               regulator-min-microvolt = <3300000>;
> > +               regulator-max-microvolt = <3300000>;
> > +               gpio = <&gpio2 6 GPIO_ACTIVE_HIGH>;
> > +               enable-active-high;
> > +       };
> > +
> >         reg_usdhc2_vmmc: regulator-usdhc2 {
> >                 compatible = "regulator-fixed";
> >                 pinctrl-names = "default";
> > @@ -350,6 +368,28 @@ &i2c5 {
> >          */
> >  };
> >
> > +&pcie_phy {
> > +       fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
>
> While this indeed works on the EVK so far I failed to get this to work on our Verdin iMX8M Plus which requires
> the fsl,refclk-pad-mode to be IMX8_PCIE_REFCLK_PAD_OUTPUT. It is not quite clear to me what kind of clocks I
> would need specifying in that case.
>
> Has anybody by any chance tried on any such HW design?
>
> For reference [1] on the Verdin iMX8M Mini the same works very well but the clocking seems rather different.
>

Marcel,

Do you have all the patches in Richard's series applied [1]? They got
picked up in different trees so make sure you have them all. I just
tested this series on top of 6.0-rc6 with imx8mp-venice-gw74xx and it
works fine. This board however does have IMX8_PCIE_REFCLK_PAD_INPUT.

Do you by chance have CLKREQ not hooked up? If so make sure you add a
'fsl,clkreq-unsupported' probe to pcie_phy.

Best Regards,

Tim
[1] https://patchwork.kernel.org/project/linux-pci/list/?series=673548&state=*

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <SRS0=dFK9=LQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06206C48BDF
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jun 2021 03:09:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BD28F6120D
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jun 2021 03:09:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BD28F6120D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6+IyR5CUJfAZHf46kryCfn+Y0fapFrjUc2f0FMsIyfY=; b=aewOGjUK5CnRHv
	SX+ZR8ZUNgC0uxP7LBFRWXxpvqMKzjn4QbroTvHat6Dt0C0isSKceHnlP2GfLm4Yla+9b8zlCcvJc
	iB4mlTIZO3NpaVWUjPLsnhGC8lBk1PDxCMuJ5GjJybj23x9J28DqyztrtCcI+1Lr4Nab4clh/uoXz
	AmdQZh72Z2bryXYYJ0ERsr09pzdczDUBfCYQuIrffiLXMvL/u1EoQxcI17n8Mm1UcDUCh9Vn2XbQ6
	oXdiP0YVWNTW2Ub+jC3GJrOTy/e/uHuP9KPYLGSNTG1pHAB5F3MuTUBebs1CzXyZhIEK5XyIl/Phl
	k4eS4H9AQdRUFn3xi0Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvWmp-005TLm-Aw; Tue, 22 Jun 2021 03:09:15 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvWmn-005TKM-5g; Tue, 22 Jun 2021 03:09:14 +0000
Received: by mail-ej1-x633.google.com with SMTP id he7so32027693ejc.13;
 Mon, 21 Jun 2021 20:09:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7niPUm2hSmXvDTZIayC2hRqOTqKfDH7sAfKGCNr3PSo=;
 b=Zx+57caGKfxlamUwXIlwuTe4G3ODjn+B6ted2HuK2+zIn7+TrVW2gdJcV3WxdX5s3N
 SZi/s1vDnktJkDb75Rju2zcYWol/4DqSJqO1AFsyRyAkqLmz5TRLavUZaK6+F9eqe9DK
 +xMHz+ytlIDL9ZwD+iy7cWeQ6KpavudGFcfEv2upbHvnoBjqpzH7oSy4rQKuvad1IQLV
 HLjWxc92fWmYc7nICmQ8qQI+XJ/BhU8mu+32kUgvtdIa1TjBAwWiCax9EeefIJvYK/pl
 VliD4SK7A5llEdkqCGaH2HgG81kNYg7Li/DSB4R7v6TgU0BHQ9uuxEsv10X7Yvnnbdz+
 qCAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7niPUm2hSmXvDTZIayC2hRqOTqKfDH7sAfKGCNr3PSo=;
 b=Y8dCsBCyUjOfYdsmhuIqM/Oxx01Xbzn+or7s1Mn8vH+3oLsUK5X8EPbxcDlVUJ6YLJ
 j0dpbmY73RLNB/EjtlV6Wrdghq0P7EliBYCFc+IxmKgtiK5zR2VE0UwjkoWPuEnAn9kQ
 xKmjnSK7subiDVGrW4mJd47ZsD4qTbQ37Q4YveiCDdzXeueA/OYZIBjh0FTmBk4HXDFO
 wPHXntoYPvFCP550QFdbeU/Jv01mAFwWefhcSDbtWINylWyikxW1oYzRX0GOkoIHCzE2
 ae5sD1YId5EdwzfcXeQIDGe1dQNvXJX/W/E2qFRURsG0vOhbC17DWYrGX+CWatHDF3Ds
 fWHg==
X-Gm-Message-State: AOAM531/NIcCrBDUvG8r/YKkkg4xa3ANO/FCJU8W/rvfkf9sQZIE2FCj
 0SSjkRb6olizYqWMMkwDlr9vzpobDKHKQmhd2/o=
X-Google-Smtp-Source: ABdhPJzozl3nK5cYfHbxs2Xty143R2O1VPZnWLAKoR/K4faLM/z8uiVuXlXqTrzTGoJdLISQuhOYfLCbJqd47LLTINE=
X-Received: by 2002:a17:907:1611:: with SMTP id
 hb17mr1418947ejc.450.1624331351539; 
 Mon, 21 Jun 2021 20:09:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
 <20210621072424.111733-8-jagan@amarulasolutions.com>
In-Reply-To: <20210621072424.111733-8-jagan@amarulasolutions.com>
From: Adam Ford <aford173@gmail.com>
Date: Mon, 21 Jun 2021 22:09:00 -0500
Message-ID: <CAHCN7x+RKuOwBEFC5ySHJuFiC26ZdYuv620+5FiTfrh-3y2-Lg@mail.gmail.com>
Subject: Re: [RFC PATCH 7/9] arm64: dts: imx8mm: Add eLCDIF node support
To: Jagan Teki <jagan@amarulasolutions.com>
Cc: Peng Fan <peng.fan@nxp.com>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Tomasz Figa <t.figa@samsung.com>, 
 Fancy Fang <chen.fang@nxp.com>, devicetree <devicetree@vger.kernel.org>, 
 Francis Laniel <francis.laniel@amarulasolutions.com>,
 Matteo Lisi <matteo.lisi@engicam.com>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, 
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>, 
 Milco Pratesi <milco.pratesi@engicam.com>,
 Anthony Brandon <anthony@amarulasolutions.com>, 
 linux-phy@lists.infradead.org, linux-amarula@amarulasolutions.com, 
 arm-soc <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_200913_261239_26BCCA5F 
X-CRM114-Status: GOOD (  17.04  )
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

On Mon, Jun 21, 2021 at 2:25 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> Add eLCDIF controller node for i.MX8MM.
>
> Cc: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index fe5485ee9419..5f68182ed3a6 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -1030,6 +1030,25 @@ aips4: bus@32c00000 {
>                         #size-cells = <1>;
>                         ranges = <0x32c00000 0x32c00000 0x400000>;
>
> +                       lcdif: lcdif@32e00000 {
> +                               compatible = "fsl,imx8mm-lcdif", "fsl,imx6sx-lcdif";

Based on a comment I read from Marek [1] from this patch series for
the driver, I think fallback compatible should be fsl,imx28-lcdif.

"The iMX8MM and iMX8MN do not support the overlay plane, so they are MXSFB V4"

[1] - https://patchwork.kernel.org/project/dri-devel/patch/20210620224834.189411-1-marex@denx.de/

adam

> +                               reg = <0x32e00000 0x10000>;
> +                               clocks = <&clk IMX8MM_CLK_LCDIF_PIXEL>,
> +                                        <&clk IMX8MM_CLK_DISP_AXI_ROOT>,
> +                                        <&clk IMX8MM_CLK_DISP_APB_ROOT>;
> +                               clock-names = "pix", "disp_axi", "axi";
> +                               assigned-clocks = <&clk IMX8MM_CLK_LCDIF_PIXEL>,
> +                                                 <&clk IMX8MM_CLK_DISP_AXI>,
> +                                                 <&clk IMX8MM_CLK_DISP_APB>;
> +                               assigned-clock-parents = <&clk IMX8MM_VIDEO_PLL1_OUT>,
> +                                                        <&clk IMX8MM_SYS_PLL2_1000M>,
> +                                                        <&clk IMX8MM_SYS_PLL1_800M>;
> +                               assigned-clock-rate = <594000000>, <500000000>, <200000000>;
> +                               interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
> +                               power-domains = <&dispmix_blk_ctl IMX8MM_BLK_CTL_PD_DISPMIX_LCDIF>;
> +                               status = "disabled";
> +                       };
> +
>                         dispmix_blk_ctl: blk-ctl@32e28000 {
>                                 compatible = "fsl,imx8mm-dispmix-blk-ctl", "syscon";
>                                 reg = <0x32e28000 0x100>;
> --
> 2.25.1
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

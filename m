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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04C7DC48BE5
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jun 2021 03:03:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B5E446109F
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jun 2021 03:03:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B5E446109F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gVqHXyQvEXqfrVy38jzbzGfe4opbqgQMTGMm5pKGZ5Y=; b=R3vqSL2RFFMFJe
	KD2Je3A5Tq4vqBR62ZRf8TVvWSnmOCuCk99xOqqaha6NbwD+t6Gia2i6PXTxCLUw7I9hw43633hLK
	LWzR0iH+eUCzUw8Njk5+eJ7z7HB5JArcqmxf4cMmIvRielg47YYNJSjpGB87RBrlqXNk1nA4Lh7u2
	5y2SyMLUq4s1z+s+u/OacwpYmi/lDlEIyp/4gBs9LLjPi1bC2sp6HM4J+9Qoz+rzk7WsXO0VVSanx
	QOp2oA/UgZx0wRDGfsWmXdZ1kFZUAHUXjig3hempYgYDxOb2plUW48BEGX3/C715zzw7KX+GliclC
	31+Zl+/BfF0TPfelNirw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvWgs-005SfM-7s; Tue, 22 Jun 2021 03:03:06 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvWgq-005Sef-0y; Tue, 22 Jun 2021 03:03:05 +0000
Received: by mail-ej1-x632.google.com with SMTP id my49so31957238ejc.7;
 Mon, 21 Jun 2021 20:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=da+4q6NaLwSyvJdC1cHJtymWI03kW2GYkjWCT/Y1A3w=;
 b=gy2k2zUS3vvHEeFT8K/t1uw/Ik/U8ZjUSwaAI78IZK/2Rh/hXPm53jDGu00N38dqVb
 P7KTGSKmzPTTjnJAEK90CsQmtG21Jn/o5sHd8Dj3OioiQK05/j0iRwsDhQfgz07f5L6H
 H9HmdFf7PCTnybtXIG0QvMxU+nFamIAImlTZd2cnHZDCyttjql5Q83/QZyMxPsfJqM3C
 Fi4G5aYI45nB04c6Ov7qhTQDnXYERb7MZzt5PxkZBH51RKmi8pbtSvZxzaX/40cpZQHJ
 uiN3fboLR2B5IXVKdhFMK9YApdP2tAUgwFl5TJYg4xsbBLUKSm7KtraCAtlgxiKYJ9gc
 OOMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=da+4q6NaLwSyvJdC1cHJtymWI03kW2GYkjWCT/Y1A3w=;
 b=F6KVgJFV+Fjg6Gp1dQqOpFb10X1r/YKKtpH1bXwtTncu2PcK/XxiPZU2iecIfQsCle
 8GBHP9/lMQ4yN6Z8iWGXfAQvv7E2+aTCPaC/EPXaSZfBmHU/Jp88zYqsR8keRG4PCcTW
 m7vIPaLkveSLo7daKh7Z4uHJ7uZ0si0hGwJFGebNQOX7Cwo7XxksXctBGem6AgJEvbNe
 a3t2w/xQM27kaugvZfviCCGMXrjvufJDv2MKl/Fani9ihnlfZn5i97oNwgz9KfPg1upa
 nJo6LJTl6nctdSI0KKtfhin+b3z8xTO/Z7aifBCiK6iOq5Nn/lkieMTtoVsXFuUqZ1vH
 dNRA==
X-Gm-Message-State: AOAM531EAiTwyUWy75WPYTwbasrMMkALDqXx9u0BEUBkWCZMRXFzVpYe
 crscF2svTcqpblxtasqONheSQ1uJ9cVK5ntQNfo=
X-Google-Smtp-Source: ABdhPJwTpZSUk7a7ji8GbDsL0O3cqdtmO37/E7ZrMLkoLP94ZzbbS+wlrcGNOVyZFoXHv/hgM50vJA0TdhnuoPUoPI4=
X-Received: by 2002:a17:906:244d:: with SMTP id
 a13mr1416742ejb.551.1624330981487; 
 Mon, 21 Jun 2021 20:03:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
 <20210621072424.111733-9-jagan@amarulasolutions.com>
In-Reply-To: <20210621072424.111733-9-jagan@amarulasolutions.com>
From: Adam Ford <aford173@gmail.com>
Date: Mon, 21 Jun 2021 22:02:50 -0500
Message-ID: <CAHCN7xKNarHo6DaAN-J=QLAsfTXOvChOuLR68h6CPgRe-q+rmA@mail.gmail.com>
Subject: Re: [RFC PATCH 8/9] arm64: dts: imx8mm: Add MIPI DSI pipeline
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
X-CRM114-CacheID: sfid-20210621_200304_113598_6A36E75D 
X-CRM114-Status: GOOD (  17.98  )
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
> Add MIPI DSI pipeline for i.MX8MM.
>
> Video pipeline start from eLCDIF to MIPI DSI and respective
> Panel or Bridge on the backend side.
>
> Add support for it.
>
> Cc: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 59 +++++++++++++++++++++++
>  1 file changed, 59 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index 5f68182ed3a6..bc09fce0f6a9 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -1047,6 +1047,65 @@ lcdif: lcdif@32e00000 {
>                                 interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
>                                 power-domains = <&dispmix_blk_ctl IMX8MM_BLK_CTL_PD_DISPMIX_LCDIF>;
>                                 status = "disabled";
> +
> +                               port {
> +                                       lcdif_out_dsi: endpoint {
> +                                               remote-endpoint = <&dsi_in_lcdif>;
> +                                       };
> +                               };
> +                       };
> +
> +                       dsi: dsi@32e10000 {
> +                               compatible = "fsl,imx8mm-sec-dsim";
> +                               reg = <0x32e10000 0xa0>;
> +                               clocks = <&clk IMX8MM_CLK_DSI_CORE>,
> +                                        <&clk IMX8MM_CLK_DSI_PHY_REF>;
> +                               clock-names = "bus", "phy_ref";
> +                               assigned-clocks = <&clk IMX8MM_CLK_DSI_CORE>,
> +                                                 <&clk IMX8MM_VIDEO_PLL1_OUT>,
> +                                                 <&clk IMX8MM_CLK_DSI_PHY_REF>;
> +                               assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_266M>,
> +                                                        <&clk IMX8MM_VIDEO_PLL1_BYPASS>,
> +                                                        <&clk IMX8MM_VIDEO_PLL1_OUT>;
> +                               assigned-clock-rates = <266000000>, <594000000>, <27000000>;
> +                               interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
> +                               phys = <&dphy>;
> +                               phy-names = "dphy";
> +                               power-domains = <&dispmix_blk_ctl IMX8MM_BLK_CTL_PD_DISPMIX_MIPI_DSI>;
> +                               samsung,burst-clock-frequency = <891000000>;
> +                               samsung,esc-clock-frequency = <54000000>;
> +                               samsung,pll-clock-frequency = <27000000>;
> +                               status = "disabled";
> +
> +                               ports {
> +                                       #address-cells = <1>;
> +                                       #size-cells = <0>;
> +
> +                                       port@0 {
> +                                               reg = <0>;
> +                                               #address-cells = <1>;
> +                                               #size-cells = <0>;
> +
> +                                               dsi_in_lcdif: endpoint@0 {
> +                                                       reg = <0>;

When I build this with W=1, I get a warning:

Warning (graph_child_address):
/soc@0/bus@32c00000/dsi@32e10000/ports/port@0: graph node has single
child node 'endpoint@0', #address-cells/#size-cells are not necessary

Are there supposed to be two endpoints for port@0?

> +                                                       remote-endpoint = <&lcdif_out_dsi>;
> +                                               };
> +                                       };
> +
> +                                       port@1 {
> +                                               reg = <1>;
> +                                       };
> +                               };
> +                       };
> +
> +                       dphy: dphy@32e100a4 {
> +                               compatible = "fsl,imx8mm-sec-dsim-dphy";
> +                               reg = <0x32e100a4 0xbc>;
> +                               clocks = <&clk IMX8MM_CLK_DSI_PHY_REF>;
> +                               clock-names = "phy_ref";
> +                               #phy-cells = <0>;
> +                               power-domains = <&dispmix_blk_ctl IMX8MM_BLK_CTL_PD_DISPMIX_MIPI_DPHY>;
> +                               status = "disabled";
>                         };
>
>                         dispmix_blk_ctl: blk-ctl@32e28000 {
> --
> 2.25.1
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37879C48BC4
	for <linux-phy@archiver.kernel.org>; Wed, 14 Feb 2024 11:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qafLNQAd2bY5LaT86usrRcRJaZv02nIIUaHhLTzP1es=; b=tFKM0/Co40ivnz
	KKXlrkQS1i+oFrG6vMgMA8NeA+tkikXA6JZ5gI1XjB+yZSu3lBqQe2dAqvLSqrQ2cGB/TEzceSSLb
	OwS4oTcLtBJfZBvslt7pp83snj4qZrg0XrPKOaO5WEajj2L2iw7uQtLBBEQAwtP26AW9322j5zh25
	8/71nqjswvbzloVQ9tneyZBLpyFybcdZW97DmNH+qxPljqimCJJWZrxF/Ze3QwPnP6OeHza75F5PE
	hUy3N+HzHQDtLkdPjgKwy+LdGQ3jwIZ1XvnRLztAtYgwTLpJplJ0kPJyrXK7pOcyEXX5xtsgvIfjk
	FzypLkjrM4NACqBSVLuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raDEj-0000000Cd6O-2fnD;
	Wed, 14 Feb 2024 11:15:33 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raDEX-0000000Ccxq-0kuN;
	Wed, 14 Feb 2024 11:15:23 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 0915B1C0006;
	Wed, 14 Feb 2024 11:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1707909319;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QX2F+SiPt59EFUZW297RvZmqcYkhC1k7aoqJ8fw5ASg=;
	b=aRiADG+fMK9VpS0h7S5QobMVrxI+pX6H9xgvXFloawUakF0lHG7kqNq55QY7l3C5c8bFJ6
	4lWhLix/qXyz6vZ9MDOaedOTv4cZzintatO946IznWvb4UG1Uvz+8S7/3TxFsHtP/3hkg+
	6PZlewk0Rih90imVlB7TG3ZC2TgG7vQmRGp7XCVza+pIIYWAS8ZFfXe4fTSUrBH3T0z553
	t25jDwEP9lmG8VrML8/4N3BLyVlD1n70hGc1Lyo6/90oM9uN3eIQjUek8W7zUn+wEkRjUc
	Bkq5/Ypn0QEwIc7LGNCS1fDG0TO1fc3syq0sJpjT2+9yK32dP2TYdvXOm7h0Fg==
Date: Wed, 14 Feb 2024 12:15:17 +0100
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, marex@denx.de,
 aford@beaconembedded.com, Lucas Stach <l.stach@pengutronix.de>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha
 Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team
 <linux-imx@nxp.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon
 <will@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V4 4/6] arm64: dts: imx8mp: add HDMI irqsteer
Message-ID: <20240214121517.54552a4a@booty>
In-Reply-To: <20240210204606.11944-5-aford173@gmail.com>
References: <20240210204606.11944-1-aford173@gmail.com>
	<20240210204606.11944-5-aford173@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_031521_535300_26660DBD 
X-CRM114-Status: GOOD (  14.98  )
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

On Sat, 10 Feb 2024 14:46:00 -0600
Adam Ford <aford173@gmail.com> wrote:

> From: Lucas Stach <l.stach@pengutronix.de>
> 
> The HDMI irqsteer is a secondary interrupt controller within the HDMI
> subsystem that maps all HDMI peripheral IRQs into a single upstream
> IRQ line.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Signed-off-by: Adam Ford <aford173@gmail.com>
> ---
> V2:  Add my (Adam) s-o-b and re-order position under AIPS4
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> index 0730d4cf9bc4..9b8ab367d774 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -1927,6 +1927,19 @@ hdmi_blk_ctrl: blk-ctrl@32fc0000 {
>  						     "hdcp", "hrv";
>  				#power-domain-cells = <1>;
>  			};
> +
> +			irqsteer_hdmi: interrupt-controller@32fc2000 {
> +				compatible = "fsl,imx-irqsteer";
> +				reg = <0x32fc2000 0x44>;

The last register being at offset 0x44, this should be <0x32fc2000
0x48> or even <... 0x1000> as the TRM mentions a 4 kB size.

[Tested using Avnet MSC SM2S-IMX8PLUS SoM on Avnet MSC SM2-MB-EP1]
Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>


Luca

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

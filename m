Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EA34C48BC4
	for <linux-phy@archiver.kernel.org>; Wed, 14 Feb 2024 11:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tvMZEz/ZkRUcEtYgfgvanDwdeD8b9WevPcwZgb5Cw0s=; b=ktFFrsCBYrrc/a
	WUns0kT/oByz1KoVFQ4ixjLv5Op0ehyTWdbHf4ttJ38IGa7F5tPp4PDmitTTc73ZOsyai4qA1IDNZ
	sMOJqjGulbB5eN91vGeW69gxrjV9QE1UUKR+/jI/O0Zoyv6DMRnJoHoeau0RdH0vD/NqHwOfbea67
	GZohwx4gLgKZoGuhmOIkpOtAbpDNqk2V9X3IBsbmueGg6fK5eR2/zEpH2+kreOROHM8qFjH24B+k5
	v+ZMeiVN/yndZz40ztsFhTi9Lx9VUolvvwwW8Dbm/BaEesipWx1gzxPAgj1WzguOnX+EIyr0cshba
	V/XRmX/cNTHoH9QAPyMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raDEE-0000000Ccml-0GR5;
	Wed, 14 Feb 2024 11:15:02 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raDE9-0000000Cci0-0ePJ;
	Wed, 14 Feb 2024 11:14:58 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 2D3341C0008;
	Wed, 14 Feb 2024 11:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1707909293;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CbCd7AZVKzULogAVyD2ctlD8U9qaBuXdnxYtEHWg6Bs=;
	b=MG50v+hrg+y7Sg5emV0Q18hc73S4l6SuVbSRMoOxiZZBMANq1M+y6VRkBFK4vpDQ3KUF47
	3FCLA/2bvWoZ00xAnOsQvvulgAZlVVWUYZHxY5JuIH5zVV2Cit7f8L4iRyPpepzCuTiGgK
	K9dvysh0wmA9opy9aJRcIHC8s54VV880sbMcQF34Faqw7Th2DyifiHQJYqwvk0QHwvXVnb
	Jst/ZTtDH3mWZbe6mRbre1Bh+Hjmw4rHB6+ThnGlvMVRhHhGl15ZjosN5OWrU8xF9pfg2W
	13VL4yRUELvVZ8etF64wkowQ61DjwUu9htb2XYIWh2JX555GVMMKY+sSWXoTQg==
Date: Wed, 14 Feb 2024 12:14:48 +0100
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, marex@denx.de,
 aford@beaconembedded.com, Lucas Stach <l.stach@pengutronix.de>, Richard
 Leitner <richard.leitner@skidata.com>, Marco Felsch
 <m.felsch@pengutronix.de>, Alexander Stein
 <alexander.stein@ew.tq-group.com>, Frieder Schrempf
 <frieder.schrempf@kontron.de>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay
 Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH V4 2/6] phy: freescale: add Samsung HDMI PHY
Message-ID: <20240214121448.451e2e1c@booty>
In-Reply-To: <20240210204606.11944-3-aford173@gmail.com>
References: <20240210204606.11944-1-aford173@gmail.com>
	<20240210204606.11944-3-aford173@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_031457_500671_FB05BE99 
X-CRM114-Status: GOOD (  13.72  )
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

On Sat, 10 Feb 2024 14:45:58 -0600
Adam Ford <aford173@gmail.com> wrote:

> From: Lucas Stach <l.stach@pengutronix.de>
> 
> This adds the driver for the Samsung HDMI PHY found on the
> i.MX8MP SoC. Based on downstream implementation from
> Sandor Yu <Sandor.yu@nxp.com>.  According to the TRM, the PHY
> receives parallel data from the link and serializes it.  It
> also sets the PLL clock needed for the TX serializer.
> 
> Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com> (v2)
> Tested-by: Richard Leitner <richard.leitner@skidata.com> (v2)
> Co-developed-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Tested-by: Frieder Schrempf <frieder.schrempf@kontron.de> # Kontron BL
> Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> Signed-off-by: Adam Ford <aford173@gmail.com>

[...]

> +static int phy_clk_register(struct fsl_samsung_hdmi_phy *phy)
> +{
> +	struct device *dev = phy->dev;
> +	struct device_node *np = dev->of_node;
> +	struct clk_init_data init;
> +	const char *parent_name;
> +	struct clk *phyclk;
> +	int ret;
> +
> +	parent_name = __clk_get_name(phy->refclk);
> +
> +	init.parent_names = &parent_name;
> +	init.num_parents = 1;
> +	init.flags = 0;
> +	init.name = "hdmi_pclk";
> +	init.ops = &phy_clk_ops;
> +
> +	phy->hw.init = &init;
> +
> +	phyclk = devm_clk_register(dev, &phy->hw);
> +	if (IS_ERR(phyclk))
> +		return dev_err_probe(dev, PTR_ERR(phyclk),
> +				     "failed to register clock\n");
> +
> +	ret = of_clk_add_provider(np, of_clk_src_simple_get, phyclk);

As per my v8 review, this function is deprecated:
https://elixir.bootlin.com/linux/v6.8-rc4/source/drivers/clk/clk.c#L4881

However:

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

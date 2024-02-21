Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42C61C48BF6
	for <linux-phy@archiver.kernel.org>; Wed, 21 Feb 2024 12:53:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZPVnmFijgHIfNKLSute0uqz7Cs4wU7EK1ixNH7gawL8=; b=JWWYL5K0j8BRGB
	H0i9GrBM62cGTjpr05iDfaKd4cGyOpgkosyNwU86yPIrNtJ8NtWsJ6XQB+8eGTFle5YKqg1eSUXhe
	1WatKrDg8oeQJBfFfLGSlLEyP3LdWdQm76SyBiGUlQFB9WRlZjaQwFk+qJeUGbC2tEzOo9oi45EQ9
	4hZKUixw2qToGrxcx6cH620IgZ4cqVIg+FaXBwB2ANAFwpRyTP3lR7DE5zLkAg1EE8md+6I8xvdPx
	1Wxc3u57ZDhREVBVholmumN0XSUHjtUM1xle34oqtACYgtk3kjnxNHx8GKsj/qxRKFlgDnpqtQdq0
	OWlO+YOkIoWF645VxuUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcm6S-00000000uxB-3sv9;
	Wed, 21 Feb 2024 12:53:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcm6Q-00000000uvU-1lps
	for linux-phy@lists.infradead.org;
	Wed, 21 Feb 2024 12:53:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rcm6C-0005K1-8p; Wed, 21 Feb 2024 13:53:20 +0100
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rcm68-0022jj-SA; Wed, 21 Feb 2024 13:53:16 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rcm68-00083g-2a;
	Wed, 21 Feb 2024 13:53:16 +0100
Message-ID: <4bf4146749abb1500f8a412deb4d61ab0f3c80e6.camel@pengutronix.de>
Subject: Re: [PATCH RFC v3 4/5] phy: hisilicon: hisi-inno-phy: add support
 for Hi3798MV200 INNO PHY
From: Philipp Zabel <p.zabel@pengutronix.de>
To: forbidden405@outlook.com, Vinod Koul <vkoul@kernel.org>, Kishon Vijay
 Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>,  Jiancheng Xue <xuejiancheng@hisilicon.com>, Shawn
 Guo <shawn.guo@linaro.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>, David
 Yang <mmyangfl@gmail.com>
Date: Wed, 21 Feb 2024 13:53:16 +0100
In-Reply-To: <20240220-inno-phy-v3-4-893cdf8633b4@outlook.com>
References: <20240220-inno-phy-v3-0-893cdf8633b4@outlook.com>
	 <20240220-inno-phy-v3-4-893cdf8633b4@outlook.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_045334_538369_F95ABB57 
X-CRM114-Status: GOOD (  18.38  )
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

On Di, 2024-02-20 at 05:28 +0800, Yang Xiwen via B4 Relay wrote:
> From: Yang Xiwen <forbidden405@outlook.com>
> 
> Direct MMIO resgiter access is used by Hi3798MV200. For other models,

              register

> of_iomap() returns 0 due to insufficient length. So they are unaffected.
> 
> Also Hi3798MV200 INNO PHY has an extra reset required to be deasserted,
> switch to reset_control_bulk_() APIs to resolve this.

            reset_control_array_()

apparently.

> Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
> ---
>  drivers/phy/hisilicon/phy-hisi-inno-usb2.c | 65 ++++++++++++++++++------------
>  1 file changed, 39 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/phy/hisilicon/phy-hisi-inno-usb2.c b/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
> index b7e740eb4752..5175e5a351ac 100644
> --- a/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
> +++ b/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
> @@ -10,6 +10,7 @@
>  #include <linux/io.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> +#include <linux/of_address.h>
>  #include <linux/phy/phy.h>
>  #include <linux/platform_device.h>
>  #include <linux/reset.h>
> @@ -43,6 +44,7 @@
>  #define PHY_CLK_ENABLE		BIT(2)
>  
>  struct hisi_inno_phy_port {
> +	void __iomem *base;
>  	struct reset_control *utmi_rst;
>  	struct hisi_inno_phy_priv *priv;
>  };
> @@ -50,7 +52,7 @@ struct hisi_inno_phy_port {
>  struct hisi_inno_phy_priv {
>  	void __iomem *mmio;
>  	struct clk *ref_clk;
> -	struct reset_control *por_rst;
> +	struct reset_control *rsts;
>  	unsigned int type;
>  	struct hisi_inno_phy_port ports[INNO_PHY_PORT_NUM];
>  };
> @@ -62,26 +64,31 @@ static void hisi_inno_phy_write_reg(struct hisi_inno_phy_priv *priv,
>  	u32 val;
>  	u32 value;
>  
> -	if (priv->type == PHY_TYPE_0)
> -		val = (data & PHY_TEST_DATA) |
> -		      ((addr << PHY_TEST_ADDR_OFFSET) & PHY0_TEST_ADDR) |
> -		      ((port << PHY0_TEST_PORT_OFFSET) & PHY0_TEST_PORT) |
> -		      PHY0_TEST_WREN | PHY0_TEST_RST;
> -	else
> -		val = (data & PHY_TEST_DATA) |
> -		      ((addr << PHY_TEST_ADDR_OFFSET) & PHY1_TEST_ADDR) |
> -		      ((port << PHY1_TEST_PORT_OFFSET) & PHY1_TEST_PORT) |
> -		      PHY1_TEST_WREN | PHY1_TEST_RST;
> -	writel(val, reg);
> -
> -	value = val;
> -	if (priv->type == PHY_TYPE_0)
> -		value |= PHY0_TEST_CLK;
> -	else
> -		value |= PHY1_TEST_CLK;
> -	writel(value, reg);
> -
> -	writel(val, reg);
> +	if (priv->ports[port].base)
> +		// stride is 4
> +		writel(data, (u32 *)priv->ports[port].base + addr);
> +	else {
> +		if (priv->type == PHY_TYPE_0)
> +			val = (data & PHY_TEST_DATA) |
> +			      ((addr << PHY_TEST_ADDR_OFFSET) & PHY0_TEST_ADDR) |
> +			      ((port << PHY0_TEST_PORT_OFFSET) & PHY0_TEST_PORT) |
> +			      PHY0_TEST_WREN | PHY0_TEST_RST;
> +		else
> +			val = (data & PHY_TEST_DATA) |
> +			      ((addr << PHY_TEST_ADDR_OFFSET) & PHY1_TEST_ADDR) |
> +			      ((port << PHY1_TEST_PORT_OFFSET) & PHY1_TEST_PORT) |
> +			      PHY1_TEST_WREN | PHY1_TEST_RST;
> +		writel(val, reg);
> +
> +		value = val;
> +		if (priv->type == PHY_TYPE_0)
> +			value |= PHY0_TEST_CLK;
> +		else
> +			value |= PHY1_TEST_CLK;
> +		writel(value, reg);
> +
> +		writel(val, reg);
> +	}
>  }
>  
>  static void hisi_inno_phy_setup(struct hisi_inno_phy_priv *priv)
> @@ -104,7 +111,7 @@ static int hisi_inno_phy_init(struct phy *phy)
>  		return ret;
>  	udelay(REF_CLK_STABLE_TIME);
>  
> -	reset_control_deassert(priv->por_rst);
> +	reset_control_deassert(priv->rsts);
>  	udelay(POR_RST_COMPLETE_TIME);
>  
>  	/* Set up phy registers */
> @@ -122,7 +129,7 @@ static int hisi_inno_phy_exit(struct phy *phy)
>  	struct hisi_inno_phy_priv *priv = port->priv;
>  
>  	reset_control_assert(port->utmi_rst);
> -	reset_control_assert(priv->por_rst);
> +	reset_control_assert(priv->rsts);
>  	clk_disable_unprepare(priv->ref_clk);
>  
>  	return 0;
> @@ -158,15 +165,16 @@ static int hisi_inno_phy_probe(struct platform_device *pdev)
>  	if (IS_ERR(priv->ref_clk))
>  		return PTR_ERR(priv->ref_clk);
>  
> -	priv->por_rst = devm_reset_control_get_exclusive(dev, NULL);
> -	if (IS_ERR(priv->por_rst))
> -		return PTR_ERR(priv->por_rst);
> +	priv->rsts = devm_reset_control_array_get(dev, false, false);

Please use devm_reset_control_array_get_exclusive() instead.


regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

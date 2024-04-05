Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8607CD11C2
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 16:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rx/YfayJ88bzYx3LBcXXt/XdQyIucgczj7w6XQeGJA0=; b=154HoYYjHH6hEt
	25zokNzekoGiNKXKcsHb9AakE/syfoXYLLYCBN8odpWIGi4HNY2pyiW1IpsbOWCnb8fFB/COvyNsV
	GLj7XXu6PIgiOiy9h6cz/J/DJunzRGmkglw+/5C0fIzdZzLsI+xKeb2IOzkbQVhmY+DJFMWZ62H2A
	ZCsTOclBkallwGvA7fXYa4Vs2wyUl8Zdpw0mmFlTTN5XRPcGzFCweCPzl8fnjVxwiy/z0VjDtDNyg
	v4wY5aZBpqq7ecDII5+KkQFeDOTFRjpeYCqWH9WPvumR0yiWu96pQ1/JMgtyWOHXWz49B91vGMhHp
	3Q0IGdnHWGymJd9VqVRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsmoA-000000085ag-1rf7;
	Fri, 05 Apr 2024 16:52:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsmo6-000000085Zd-3mqL
	for linux-phy@lists.infradead.org;
	Fri, 05 Apr 2024 16:52:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0C67D61701;
	Fri,  5 Apr 2024 16:52:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3367AC433F1;
	Fri,  5 Apr 2024 16:52:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712335969;
	bh=mt/7m6gE+/mQeYNIuTIpesLMoVgYypS7PcDtGHkbqws=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QaRNhIgMnDYWgjPVKq0IlAjsC3Yq2QY7DGainZ5KQiecDDQtNx5qr1eZMbSCf2AW5
	 oHlWIljCKRo6uCUN/Sn3mTjZbi+JqlZzs5QIbAVshQ/+bI9obXK6dIAybh3d3Yl7Yk
	 mFqfGcaZjr1AIUnFw2q+1Yt/mbrw9+NWx7csLU/Q7QIoDpjd0Kh2yRqSCjJwgM+Itf
	 e2mA9jcY5cw/wYgitaH/t7+3wKljzuXDPPDgzPA61i6VA5KHy4FfXQ0+tKpAHNpqc3
	 lcRVcr7P/kNK5dVr3Z0pmZMvFRLHbUmowypCXZyq6mSAXJixspO0ayR93tha/UFb05
	 gNyRa8cYrP2Zw==
Date: Fri, 5 Apr 2024 22:22:45 +0530
From: Vinod Koul <vkoul@kernel.org>
To: forbidden405@outlook.com
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jiancheng Xue <xuejiancheng@hisilicon.com>,
	Shawn Guo <shawn.guo@linaro.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@ti.com>,
	David Yang <mmyangfl@gmail.com>
Subject: Re: [PATCH v5 5/5] phy: hisilicon: hisi-inno-phy: add support for
 Hi3798MV200 INNO PHY
Message-ID: <ZhAsXUjifTD6HeKx@matsya>
References: <20240305-inno-phy-v5-0-dc1cb130ea08@outlook.com>
 <20240305-inno-phy-v5-5-dc1cb130ea08@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240305-inno-phy-v5-5-dc1cb130ea08@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_095251_290336_03BAB6C3 
X-CRM114-Status: GOOD (  24.74  )
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

On 05-03-24, 21:32, Yang Xiwen via B4 Relay wrote:
> From: Yang Xiwen <forbidden405@outlook.com>

That is quite an email id!

> 
> Direct MMIO resgiter access is used by Hi3798MV200. For other models,
> of_iomap() returns NULL due to insufficient length. So they are

so how is that fixed... Pls describe the change...
> unaffected.
> 
> Also Hi3798MV200 INNO PHY has an extra reset required to be deasserted,
> switch to reset_control_array_*() APIs for that.

That probably should be a different patch

> 
> Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
> ---
>  drivers/phy/hisilicon/phy-hisi-inno-usb2.c | 66 ++++++++++++++++++------------
>  1 file changed, 40 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/phy/hisilicon/phy-hisi-inno-usb2.c b/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
> index b7e740eb4752..df154cd99ed8 100644
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
> @@ -24,6 +25,7 @@
>  
>  #define PHY_TYPE_0	0
>  #define PHY_TYPE_1	1
> +#define PHY_TYPE_MMIO	2
>  
>  #define PHY_TEST_DATA		GENMASK(7, 0)
>  #define PHY_TEST_ADDR_OFFSET	8
> @@ -43,6 +45,7 @@
>  #define PHY_CLK_ENABLE		BIT(2)
>  
>  struct hisi_inno_phy_port {
> +	void __iomem *base;
>  	struct reset_control *utmi_rst;
>  	struct hisi_inno_phy_priv *priv;
>  };
> @@ -50,7 +53,7 @@ struct hisi_inno_phy_port {
>  struct hisi_inno_phy_priv {
>  	void __iomem *mmio;
>  	struct clk *ref_clk;
> -	struct reset_control *por_rst;
> +	struct reset_control *rsts;
>  	unsigned int type;
>  	struct hisi_inno_phy_port ports[INNO_PHY_PORT_NUM];
>  };
> @@ -62,26 +65,31 @@ static void hisi_inno_phy_write_reg(struct hisi_inno_phy_priv *priv,
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
> +		/* FIXME: fill stride in priv */

when?

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

val and value are very helpful variables, do consider naming them
better!

> +	}
>  }
>  
>  static void hisi_inno_phy_setup(struct hisi_inno_phy_priv *priv)
> @@ -104,7 +112,7 @@ static int hisi_inno_phy_init(struct phy *phy)
>  		return ret;
>  	udelay(REF_CLK_STABLE_TIME);
>  
> -	reset_control_deassert(priv->por_rst);
> +	reset_control_deassert(priv->rsts);
>  	udelay(POR_RST_COMPLETE_TIME);
>  
>  	/* Set up phy registers */
> @@ -122,7 +130,7 @@ static int hisi_inno_phy_exit(struct phy *phy)
>  	struct hisi_inno_phy_priv *priv = port->priv;
>  
>  	reset_control_assert(port->utmi_rst);
> -	reset_control_assert(priv->por_rst);
> +	reset_control_assert(priv->rsts);
>  	clk_disable_unprepare(priv->ref_clk);
>  
>  	return 0;
> @@ -158,15 +166,16 @@ static int hisi_inno_phy_probe(struct platform_device *pdev)
>  	if (IS_ERR(priv->ref_clk))
>  		return PTR_ERR(priv->ref_clk);
>  
> -	priv->por_rst = devm_reset_control_get_exclusive(dev, NULL);
> -	if (IS_ERR(priv->por_rst))
> -		return PTR_ERR(priv->por_rst);
> +	priv->rsts = devm_reset_control_array_get_exclusive(dev);
> +	if (IS_ERR(priv->rsts))
> +		return PTR_ERR(priv->rsts);
>  
>  	priv->type = (uintptr_t) of_device_get_match_data(dev);
>  
>  	for_each_child_of_node(np, child) {
>  		struct reset_control *rst;
>  		struct phy *phy;
> +		void __iomem *base;
>  
>  		rst = of_reset_control_get_exclusive(child, NULL);
>  		if (IS_ERR(rst)) {
> @@ -174,7 +183,10 @@ static int hisi_inno_phy_probe(struct platform_device *pdev)
>  			return PTR_ERR(rst);
>  		}
>  
> +		base = of_iomap(child, 0);
> +
>  		priv->ports[i].utmi_rst = rst;
> +		priv->ports[i].base = base;
>  		priv->ports[i].priv = priv;
>  
>  		phy = devm_phy_create(dev, child, &hisi_inno_phy_ops);
> @@ -205,6 +217,8 @@ static const struct of_device_id hisi_inno_phy_of_match[] = {
>  	  .data = (void *) PHY_TYPE_0 },
>  	{ .compatible = "hisilicon,hi3798mv100-usb2-phy",
>  	  .data = (void *) PHY_TYPE_1 },
> +	{ .compatible = "hisilicon,hi3798mv200-usb2-phy",
> +	  .data = (void *) PHY_TYPE_MMIO },
>  	{ },
>  };
>  MODULE_DEVICE_TABLE(of, hisi_inno_phy_of_match);
> 
> -- 
> 2.43.0

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

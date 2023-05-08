Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AC0BC77B75
	for <linux-phy@archiver.kernel.org>; Mon,  8 May 2023 07:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g8/An9YdJhohEsagWt/jDv36VcauU3303tNqpDcCmxE=; b=EM+NMIYuoKmrVZ
	h7txeYPZOIbM1oRKeAtCYeSJVcD/c0/Zuzzpwlfk0JpuhqxR5SkdMEl13TFbSW/oUKt5I7AMmAznX
	klqSK8cTwVwPIJRcAEE0oQXQ3C/jn5kiserBTQvHME9nbEj82FUFpllIHvfoAJEEJQVOFfsxKHnQ+
	rsp4SJtttabPsyKD/1ze/kTmfKmmxJkORhgU9DNHkRAIkDH479kjLiSMMoKL4Wxai7Y6Mr4XrXtiU
	f5jp94HVHsgB2bPZP3vFksnZIVvNsmzTb3dVuJ9qot9OeUnT/HkpH/KBGhOCVSirG7Q+thyfs244M
	DCwbvp8JW5Lbv0pJyofA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvvVS-00HVMx-39;
	Mon, 08 May 2023 07:42:02 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvvVQ-00HVMY-0r
	for linux-phy@lists.infradead.org;
	Mon, 08 May 2023 07:42:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 153286201A;
	Mon,  8 May 2023 07:41:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEB2CC433EF;
	Mon,  8 May 2023 07:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683531718;
	bh=yNTGKvnvEJLVtEyVTqWeDENaezR1MgGHS3g9B/4BDWU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F3loFkYDYcjTv69jeH0SfBGgatd4d0Uo1oq9tbaCm8wUO/Dbha5dCWXW8U/lykg+z
	 i8iD4eV8sVHXD9lwkcFopZ18gbOawcg+NoybYJY9UDpRAXGP6BTMDNtn9GKhi99cJz
	 4aMwS6DYHDYDxMtNNl7Wd8JzAzKMxdk79LuNCIrtaFEKY0rTyqCT4mFsQFQre2QxYe
	 IUDi74XXSv3W+Hw0/ipaaGHT6VWWpu/0eZNMwlx1CxCcRFLmrtAUcELCNsC2PMlRsB
	 QLDZ0zmQw6IZj8z1IDc5oOiZ5J22s4qptOcwdvxHERfGILH0bVIzyLzH0pRAoeUWa6
	 9Fpg+y7KvRo9w==
Date: Mon, 8 May 2023 13:11:54 +0530
From: Vinod Koul <vkoul@kernel.org>
To: David Yang <mmyangfl@gmail.com>
Cc: linux-phy@lists.infradead.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: hisilicon: Adopt phy-hisi-inno-usb2 to Hi3798MV100
Message-ID: <ZFinwhFphe71VeLk@matsya>
References: <20230507154615.793942-1-mmyangfl@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230507154615.793942-1-mmyangfl@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_004200_413451_3E5BA01D 
X-CRM114-Status: GOOD (  23.79  )
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

On 07-05-23, 23:46, David Yang wrote:
> Hisilicon also uses phy-hisi-inno-usb2 on Hi3798MV100, with a slightly
> different register convention.

OK, so what should I expect from this patch, pls document that here...

> 
> Signed-off-by: David Yang <mmyangfl@gmail.com>
> ---
>  drivers/phy/hisilicon/Kconfig              |  2 +-
>  drivers/phy/hisilicon/phy-hisi-inno-usb2.c | 67 ++++++++++++++++------
>  2 files changed, 51 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/phy/hisilicon/Kconfig b/drivers/phy/hisilicon/Kconfig
> index d3b92c288554..6c89136fc8c2 100644
> --- a/drivers/phy/hisilicon/Kconfig
> +++ b/drivers/phy/hisilicon/Kconfig
> @@ -54,7 +54,7 @@ config PHY_HISTB_COMBPHY
>  
>  config PHY_HISI_INNO_USB2
>  	tristate "HiSilicon INNO USB2 PHY support"
> -	depends on (ARCH_HISI && ARM64) || COMPILE_TEST
> +	depends on ARCH_HISI || COMPILE_TEST

why this change?

>  	select GENERIC_PHY
>  	select MFD_SYSCON
>  	help
> diff --git a/drivers/phy/hisilicon/phy-hisi-inno-usb2.c b/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
> index b133ae06757a..b5d006f38934 100644
> --- a/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
> +++ b/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
> @@ -9,7 +9,7 @@
>  #include <linux/delay.h>
>  #include <linux/io.h>
>  #include <linux/module.h>
> -#include <linux/platform_device.h>
> +#include <linux/of_device.h>
>  #include <linux/phy/phy.h>
>  #include <linux/reset.h>
>  
> @@ -20,12 +20,28 @@
>  #define PHY_CLK_STABLE_TIME	2	/* unit:ms */
>  #define UTMI_RST_COMPLETE_TIME	2	/* unit:ms */
>  #define POR_RST_COMPLETE_TIME	300	/* unit:us */
> -#define PHY_TEST_DATA		GENMASK(7, 0)
> -#define PHY_TEST_ADDR		GENMASK(15, 8)
> -#define PHY_TEST_PORT		GENMASK(18, 16)
> -#define PHY_TEST_WREN		BIT(21)
> -#define PHY_TEST_CLK		BIT(22)	/* rising edge active */
> -#define PHY_TEST_RST		BIT(23)	/* low active */
> +
> +#define PHY_TYPE_0	0
> +#define PHY_TYPE_1	1
> +
> +#define PHY0_TEST_DATA		GENMASK(7, 0)

same as previous what changed??

> +#define PHY0_TEST_ADDR_OFFSET	8
> +#define PHY0_TEST_ADDR		GENMASK(15, 8)
> +#define PHY0_TEST_PORT_OFFSET	16
> +#define PHY0_TEST_PORT		GENMASK(18, 16)
> +#define PHY0_TEST_WREN		BIT(21)
> +#define PHY0_TEST_CLK		BIT(22)	/* rising edge active */
> +#define PHY0_TEST_RST		BIT(23)	/* low active */
> +
> +#define PHY1_TEST_DATA		GENMASK(7, 0)
> +#define PHY1_TEST_ADDR_OFFSET	8
> +#define PHY1_TEST_ADDR		GENMASK(11, 8)
> +#define PHY1_TEST_PORT_OFFSET	12
> +#define PHY1_TEST_PORT		BIT(12)
> +#define PHY1_TEST_WREN		BIT(13)
> +#define PHY1_TEST_CLK		BIT(14)	/* rising edge active */
> +#define PHY1_TEST_RST		BIT(15)	/* low active */
> +
>  #define PHY_CLK_ENABLE		BIT(2)
>  
>  struct hisi_inno_phy_port {
> @@ -37,6 +53,7 @@ struct hisi_inno_phy_priv {
>  	void __iomem *mmio;
>  	struct clk *ref_clk;
>  	struct reset_control *por_rst;
> +	unsigned int type;
>  	struct hisi_inno_phy_port ports[INNO_PHY_PORT_NUM];
>  };
>  
> @@ -45,17 +62,27 @@ static void hisi_inno_phy_write_reg(struct hisi_inno_phy_priv *priv,
>  {
>  	void __iomem *reg = priv->mmio;
>  	u32 val;
> -
> -	val = (data & PHY_TEST_DATA) |
> -	      ((addr << 8) & PHY_TEST_ADDR) |
> -	      ((port << 16) & PHY_TEST_PORT) |
> -	      PHY_TEST_WREN | PHY_TEST_RST;
> +	u32 value;
> +
> +	if (priv->type == PHY_TYPE_0)
> +		val = (data & PHY0_TEST_DATA) |
> +		      ((addr << PHY0_TEST_ADDR_OFFSET) & PHY0_TEST_ADDR) |
> +		      ((port << PHY0_TEST_PORT_OFFSET) & PHY0_TEST_PORT) |
> +		      PHY0_TEST_WREN | PHY0_TEST_RST;
> +	else
> +		val = (data & PHY1_TEST_DATA) |
> +		      ((addr << PHY1_TEST_ADDR_OFFSET) & PHY1_TEST_ADDR) |
> +		      ((port << PHY1_TEST_PORT_OFFSET) & PHY1_TEST_PORT) |
> +		      PHY1_TEST_WREN | PHY1_TEST_RST;
>  	writel(val, reg);
>  
> -	val |= PHY_TEST_CLK;
> -	writel(val, reg);
> +	value = val;
> +	if (priv->type == PHY_TYPE_0)
> +		value |= PHY0_TEST_CLK;
> +	else
> +		value |= PHY1_TEST_CLK;
> +	writel(value, reg);
>  
> -	val &= ~PHY_TEST_CLK;
>  	writel(val, reg);
>  }
>  
> @@ -135,6 +162,8 @@ static int hisi_inno_phy_probe(struct platform_device *pdev)
>  	if (IS_ERR(priv->por_rst))
>  		return PTR_ERR(priv->por_rst);
>  
> +	priv->type = (unsigned int) of_device_get_match_data(dev);
> +
>  	for_each_child_of_node(np, child) {
>  		struct reset_control *rst;
>  		struct phy *phy;
> @@ -170,8 +199,12 @@ static int hisi_inno_phy_probe(struct platform_device *pdev)
>  }
>  
>  static const struct of_device_id hisi_inno_phy_of_match[] = {
> -	{ .compatible = "hisilicon,inno-usb2-phy", },
> -	{ .compatible = "hisilicon,hi3798cv200-usb2-phy", },
> +	{ .compatible = "hisilicon,inno-usb2-phy",
> +	  .data = (void *) PHY_TYPE_0 },
> +	{ .compatible = "hisilicon,hi3798cv200-usb2-phy",
> +	  .data = (void *) PHY_TYPE_0 },
> +	{ .compatible = "hisilicon,hi3798mv100-usb2-phy",
> +	  .data = (void *) PHY_TYPE_1 },
>  	{ },
>  };
>  MODULE_DEVICE_TABLE(of, hisi_inno_phy_of_match);
> -- 
> 2.39.2

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

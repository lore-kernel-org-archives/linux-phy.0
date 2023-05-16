Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EAA5C7EE25
	for <linux-phy@archiver.kernel.org>; Tue, 16 May 2023 13:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1lcWKHrDRPNY6hTAYXGtiblkJzvLuyMUrxcL5wBVbCk=; b=FMqMUG115gIHGj
	p8CniSKddF4KtXQkCjtasnQbVb9nncotNMkwdx9iCL0FqHotBUjvSOXxDoqCBEmf0EmEK7can5qTP
	Hx1kGoBMDyk8FPdEONFNuqMOw0j/41hgEZ6qD+Xgnu5nz5jDvk1j2G1lbXq6QalxSTtkFUNlH1BVM
	4iOzsq614pS6rh+zSEMtP4PEOfVWEawbKjQuCCZSd1SafAoa7Ke+3XLePIm/yAiZHSeNQWCF6MJbM
	5Afh1Q+fCzB1+7VVefOLDL+FtxS1KgMo8m1OWPKSjidRgYamiiLuZRLIwlH6ByQORa2C2GGCUsB3M
	CQHhRhKouXsWHx/9k5Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyuYC-005sbe-2P;
	Tue, 16 May 2023 13:17:12 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyuY9-005sZs-0M;
	Tue, 16 May 2023 13:17:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7CB1661A81;
	Tue, 16 May 2023 13:17:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09BD4C433D2;
	Tue, 16 May 2023 13:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684243027;
	bh=Q822amfXHYVNZj8qT92UOupIha/Yo6CzcR8/30zrIJQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T4QvBKtT/hm77F4Yd1YdfW4pv+xrH7qXkvokmjq1Rb10P7TF381PyA+Vho+dkCais
	 WURsVW6fmrrM5LaLBhL69muJt+NvMPgN1usTXafPB3YNNR8BwhtyFN5AbCFhsrUzoT
	 IJyesGu0gilMAYuE/M/HEf7TCmthQzY0M1xCk3x//vm2SgYuyJN35edyjoGCnhAQNO
	 9KCpi7lOLFO34scQvfOL9Qk1GIhcmEGJSq6tEYdh9gz8qUFI0HyJkSmYxmhuBtKRYu
	 /dLNVm35lozZgsoyNu7U9clt60TUU5O+h/CER9nxn0/B2Z6F0M0TIe8bajFVztMWdO
	 ygfmMYxWSlQKQ==
Date: Tue, 16 May 2023 18:47:03 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev, fushi.peng@nxp.com
Subject: Re: [PATCH v3 1/2] phy: cadence: salvo: Add
 cdns,usb2-disconnect-threshold-microvolt property
Message-ID: <ZGOCT0Mdg3Jtar6c@matsya>
References: <20230510140504.2164565-1-Frank.Li@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230510140504.2164565-1-Frank.Li@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_061709_237556_FBB88A28 
X-CRM114-Status: GOOD (  23.54  )
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

On 10-05-23, 10:05, Frank Li wrote:
> Add cdns,usb2-disconnect-threshold-microvolt property to address fake USB
> disconnection issue during enumeration or suspend state for difference
> platform.

This fails to apply for me on phy/next. What tree was this based on?

> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> Change from v2 to v3
> - add cdns prefix
> Change from v1 to v2
> - remove empty change before #include 
> - Remove dts change from patch
> 
>  drivers/phy/cadence/phy-cadence-salvo.c | 29 +++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/drivers/phy/cadence/phy-cadence-salvo.c b/drivers/phy/cadence/phy-cadence-salvo.c
> index 23be27a747a9..ab7eca515059 100644
> --- a/drivers/phy/cadence/phy-cadence-salvo.c
> +++ b/drivers/phy/cadence/phy-cadence-salvo.c
> @@ -6,6 +6,7 @@
>   * Copyright (c) 2019-2020 NXP
>   */
>  
> +#include <linux/bitfield.h>
>  #include <linux/clk.h>
>  #include <linux/io.h>
>  #include <linux/module.h>
> @@ -91,9 +92,19 @@
>  
>  /* USB2 PHY register definition */
>  #define UTMI_REG15				0xaf
> +#define UTMI_AFE_RX_REG0			0x0d
>  #define UTMI_AFE_RX_REG5			0x12
>  #define UTMI_AFE_BC_REG4			0x29
>  
> +/* Align UTMI_AFE_RX_REG0 bit[7:6] define */
> +enum usb2_disconn_threshold {
> +	USB2_DISCONN_THRESHOLD_575 = 0x0,
> +	USB2_DISCONN_THRESHOLD_610 = 0x1,
> +	USB2_DISCONN_THRESHOLD_645 = 0x3,
> +};
> +
> +#define RX_USB2_DISCONN_MASK			GENMASK(7, 6)
> +
>  /* TB_ADDR_TX_RCVDETSC_CTRL */
>  #define RXDET_IN_P3_32KHZ			BIT(0)
>  /*
> @@ -125,6 +136,7 @@ struct cdns_salvo_phy {
>  	struct clk *clk;
>  	void __iomem *base;
>  	struct cdns_salvo_data *data;
> +	enum usb2_disconn_threshold usb2_disconn;
>  };
>  
>  static const struct of_device_id cdns_salvo_phy_of_match[];
> @@ -261,6 +273,12 @@ static int cdns_salvo_phy_init(struct phy *phy)
>  
>  	cdns_salvo_write(salvo_phy, USB2_PHY_OFFSET, UTMI_AFE_RX_REG5,
>  			 0x5);
> +
> +	value = cdns_salvo_read(salvo_phy, USB2_PHY_OFFSET, UTMI_AFE_RX_REG0);
> +	value &= ~RX_USB2_DISCONN_MASK;
> +	value = FIELD_PREP(RX_USB2_DISCONN_MASK, salvo_phy->usb2_disconn);
> +	cdns_salvo_write(salvo_phy, USB2_PHY_OFFSET, UTMI_AFE_RX_REG0, value);
> +
>  	udelay(10);
>  
>  	clk_disable_unprepare(salvo_phy->clk);
> @@ -315,6 +333,7 @@ static int cdns_salvo_phy_probe(struct platform_device *pdev)
>  	struct device *dev = &pdev->dev;
>  	struct cdns_salvo_phy *salvo_phy;
>  	struct cdns_salvo_data *data;
> +	u32 val;
>  
>  	data = (struct cdns_salvo_data *)of_device_get_match_data(dev);
>  	salvo_phy = devm_kzalloc(dev, sizeof(*salvo_phy), GFP_KERNEL);
> @@ -326,6 +345,16 @@ static int cdns_salvo_phy_probe(struct platform_device *pdev)
>  	if (IS_ERR(salvo_phy->clk))
>  		return PTR_ERR(salvo_phy->clk);
>  
> +	if (of_property_read_u32(dev->of_node, "cdns,usb2-disconnect-threshold-microvolt", &val))
> +		val = 575;
> +
> +	if (val < 610)
> +		salvo_phy->usb2_disconn = USB2_DISCONN_THRESHOLD_575;
> +	else if (val < 645)
> +		salvo_phy->usb2_disconn = USB2_DISCONN_THRESHOLD_610;
> +	else
> +		salvo_phy->usb2_disconn = USB2_DISCONN_THRESHOLD_645;
> +
>  	salvo_phy->base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(salvo_phy->base))
>  		return PTR_ERR(salvo_phy->base);
> -- 
> 2.34.1
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

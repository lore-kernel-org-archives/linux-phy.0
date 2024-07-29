Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96C8AC3DA4A
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jul 2024 07:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eVkP4ljH2NFsGJqUNA/KZrPhoUF62a+rAEJJ43pQsvc=; b=sqEjZl02Ch1vGh
	KkOmgz6++VUUs624z40HEKI93gk7airAz/4QbFrD4EnC4K6GcwrrLHW+ggiL5xOlco0JabMjt5H+B
	e4X4WNlupi18YJptI4EHAa5ko0rYrfE3Z/TK1Fh1+Eh2Zo3YnE+EV+59VRTRLbyf+R2m6/Ccwd+a9
	D9DGEDVTkWDe4Hvcl2Pbn5qIKG15131Ev9sMY8R6TmAmeYAsJ2lFH317Oe8XaGF2FgSSPrhv0kKKD
	RNK1a7zyFWeYwIDTnW3q+pr8OR45pfN7NdNo5dARuYQyweAC/7ZAFcRBa3l+OW3ij6s/gKVqYLsqV
	gGcyLCIaQbGveq+y7PWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYKsi-0000000AM4S-16v7;
	Mon, 29 Jul 2024 07:33:20 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYKsH-0000000AM06-3PzZ;
	Mon, 29 Jul 2024 07:32:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0F94961178;
	Mon, 29 Jul 2024 07:32:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17FADC32786;
	Mon, 29 Jul 2024 07:32:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722238372;
	bh=+S31FkW/FMZb/UwpEATwQCldYe2PdJyJz9xLy+f72vM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=LV3V2dJ+aySOEB5PYWvZ4b1V2nU1VSbSkkp1M9+BCKR1ScDda6G9YCHTUn9IY/mu6
	 lPz8w7Lo8nN8xe6WSN5oJGtoZiefb3UT4xFd8PVYtVrcYvGLrwYWChwIapdFrul1yl
	 AImZmX0lyfzWt+ippKmdd/1CQqJ2bTQc5mFrl4wWGf+NygFTHCMVah/dhDN8u3p8s6
	 a60LIHYcyqHLz1jHXx6lYweYIZPock9W66CnuNsAKX3mLmzlefSQAoj1ok4sViabzP
	 C1T5QMtvWSDY5GayQ85rXP7mYRlQoxxNFCkoyT9bRd9UzqS8ukFLBNS43aFZPnwM0i
	 2n38jA1A7godA==
Message-ID: <7ce7f373-c738-48c7-835e-6e7d10e8ae20@kernel.org>
Date: Mon, 29 Jul 2024 09:32:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: nuvoton: add new driver for the Nuvoton MA35 SoC
 USB 2.0 PHY
To: hpchen0 <hpchen0nvt@gmail.com>, vkoul@kernel.org, kishon@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240729061509.83828-1-hpchen0nvt@gmail.com>
 <20240729061509.83828-3-hpchen0nvt@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20240729061509.83828-3-hpchen0nvt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_003254_020051_469F460B 
X-CRM114-Status: GOOD (  15.57  )
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

On 29/07/2024 08:15, hpchen0 wrote:
> Nuvoton MA35 SoCs support DWC2 USB controller.
> Add the driver to drive the USB 2.0 PHY transceivers.
> 
> Signed-off-by: hpchen0 <hpchen0nvt@gmail.com>

> +
> +	ret = clk_prepare_enable(p_phy->clk);
> +	if (ret < 0) {
> +		dev_err(p_phy->dev, "Failed to enable PHY clock: %d\n", ret);
> +		return ret;
> +	}
> +
> +	regmap_read(p_phy->sysreg, MA35_SYS_REG_USBPMISCR, &val);
> +	if (val & PHY0SUSPEND) {
> +		/*
> +		 * USB PHY0 is in operation mode already
> +		 * make sure USB PHY 60 MHz UTMI Interface Clock ready
> +		 */
> +		timeout = jiffies + msecs_to_jiffies(200);
> +		while (time_before(jiffies, timeout)) {
> +			regmap_read(p_phy->sysreg, MA35_SYS_REG_USBPMISCR, &val);
> +			if (val & PHY0DEVCKSTB)
> +				return 0;
> +			usleep_range(1000, 1500);
> +		}

You want some readl_poll_timeout version here.

> +	}
> +
> +	/*
> +	 * reset USB PHY0.
> +	 * wait until USB PHY0 60 MHz UTMI Interface Clock ready
> +	 */
> +	regmap_update_bits(p_phy->sysreg, MA35_SYS_REG_USBPMISCR, 0x7, (PHY0POR | PHY0SUSPEND));
> +	timeout = jiffies + msecs_to_jiffies(200);
> +	while (time_before(jiffies, timeout)) {
> +		regmap_read(p_phy->sysreg, MA35_SYS_REG_USBPMISCR, &val);
> +		if (val & PHY0DEVCKSTB)
> +			break;
> +		usleep_range(1000, 1500);
> +	}
> +
> +	/* make USB PHY0 enter operation mode */
> +	regmap_update_bits(p_phy->sysreg, MA35_SYS_REG_USBPMISCR, 0x7, PHY0SUSPEND);
> +
> +	/* make sure USB PHY 60 MHz UTMI Interface Clock ready */
> +	timeout = jiffies + msecs_to_jiffies(200);
> +	while (time_before(jiffies, timeout)) {
> +		regmap_read(p_phy->sysreg, MA35_SYS_REG_USBPMISCR, &val);
> +		if (val & PHY0DEVCKSTB)
> +			return 0;
> +		usleep_range(1000, 1500);
> +	}
> +
> +	dev_err(p_phy->dev, "Timed out waiting for PHY to power on\n");
> +	ret = -ETIMEDOUT;
> +
> +	clk_disable_unprepare(p_phy->clk);
> +	return ret;
> +}
> +
> +static int ma35_usb_phy_power_off(struct phy *phy)
> +{
> +	struct ma35_usb_phy *p_phy = phy_get_drvdata(phy);
> +
> +	clk_disable_unprepare(p_phy->clk);
> +	return 0;
> +}
> +
> +static const struct phy_ops ma35_usb_phy_ops = {
> +	.power_on = ma35_usb_phy_power_on,
> +	.power_off = ma35_usb_phy_power_off,
> +	.owner = THIS_MODULE,
> +};
> +
> +static int ma35_usb_phy_probe(struct platform_device *pdev)
> +{
> +	struct phy_provider *provider;
> +	struct ma35_usb_phy *p_phy;
> +	const char *clkgate;
> +	struct phy *phy;
> +
> +	p_phy = devm_kzalloc(&pdev->dev, sizeof(*p_phy), GFP_KERNEL);
> +	if (!p_phy)
> +		return -ENOMEM;
> +
> +	p_phy->dev = &pdev->dev;
> +	platform_set_drvdata(pdev, p_phy);
> +
> +	p_phy->sysreg = syscon_regmap_lookup_by_phandle(p_phy->dev->of_node, "nuvoton,sys");
> +	if (IS_ERR(p_phy->sysreg))
> +		return dev_err_probe(&pdev->dev, PTR_ERR(p_phy->sysreg),
> +				     "Failed to get SYS registers\n");
> +
> +	/* enable clock */
> +	of_property_read_string(p_phy->dev->of_node, "clock-enable", &clkgate);

There is no such property.

> +	p_phy->clk = devm_clk_get(p_phy->dev, clkgate);

Don't mix styles of variables: you were using pdev->dev but now entirely
different. Stick to pdev->dev.

> +	if (IS_ERR(p_phy->clk))
> +		return dev_err_probe(&pdev->dev, PTR_ERR(p_phy->clk),

And here again pdev->dev... Bring some consistency, not random coding style.

> +				     "Failed to get usb_phy clock\n");
> +


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

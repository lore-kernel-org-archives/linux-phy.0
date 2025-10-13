Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB5E6CCA476
	for <linux-phy@archiver.kernel.org>; Mon, 13 Oct 2025 05:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DMW+1tDgggqnVWnBzpHzLqjeLvh9YoNSS4x1pHhSEAg=; b=ADc1FEPOrfVZbg
	/Xo288l/ZzhJtN2FdO4abuIAUZaQVeHs85WmHWZg/2VS5M6J/XbDumo8ul+HYtRR1H1zNZlf/r5OR
	wsH6lj7UZheXro121vf5IMOZcegGNwxevqFbKFVDyjiygibGsLI5sc0cqWYhwofO2tGQlsiHttiGF
	W4h68InLUicnZyK/fyx7L4J0Ca2Tl5sLQUsr4QVhaHgTtX9QhvGKXaxeuueSbiJdnYjNn0LZl6NLN
	FW+XDVewjci+mbVDBVfmuOKcy+OvtZCeZzITUNvmpCnpzwO8LNx2rBWLZhNfgjWuvTk/GsgoLbXnD
	RqhWNhRe9VODmOxhq/pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8BaH-0000000CJyr-2jyu;
	Mon, 13 Oct 2025 05:59:01 +0000
Received: from mx-relay58-hz1.antispameurope.com ([94.100.133.229])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8BaD-0000000CJy8-1spd
	for linux-phy@lists.infradead.org;
	Mon, 13 Oct 2025 05:59:00 +0000
ARC-Authentication-Results: i=1; mx-gate58-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=qVaz1zwGuDSR6vm0lLRYYp/IrSSmnl0g1UxK/5AowGY=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1760335119;
 b=DYOgLRodr0d8gYw+MAIvt0Z2pVYD5A2mYUxzPuCE3P4Qbjz7lkOLSBd/7RpefPaoUSDVwKD7
 CpIxBmN1md6tvV/S5RUU6IXK6Pcu6KZZW0PQu82IUgFSsIS9vZ4Ac2OauBoL9WDtyELE9oGAViw
 NMMeMrCBinhmVTQFa83tXsqtenabeUfeMqVfdGMVnFmp/StQ2GjvlFFdf0x/b01WeZG2i0jPA5Z
 UWYWnc7aH3zPDGtuLwz5Wu89KSe/YoaxuWYVkWLEmBWwxLZboowTSzLKDWPHGKGDIYeu6weD94e
 lg1YPl2kXscQNh6UWu5CiNPWhvJbyMg/mykOzkpDwSoXA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1760335119;
 b=hVyJ1yqxyzL8JuiU/aBrSsxQMdQSRbNzu6PvFAsh6kXP8eCrXFQQIpZt1RGwRp11oN9pG5Do
 9ayPld9tR7khljRyEKYlrrZpjHsp2blYyucO3bZSycexbyFJKHfcpb8xq5Ft8t0IHcIPhQVAYq4
 5pqMtu5QPkNt9dSOa1RfgaLLyMEl+E6mea5es+DPtswrZW+Kld9aUmmZPTkFRrvFrrAz8DN03i3
 d+EDnbr/80LzCoh4st/X2k63uxOhD+1yjj5S4zYsfeVv4oVXWySCvrbYvGS8abvc6JUdO5FqTHy
 Pb7WzRJWzBzyISbZE9AwRK8s8YFlO1mjl9O0tUmwz600A==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay58-hz1.antispameurope.com;
 Mon, 13 Oct 2025 07:58:38 +0200
Received: from steina-w.localnet (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id DC35522054B;
	Mon, 13 Oct 2025 07:58:12 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Li Jun <jun.li@nxp.com>,
 Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Xu Yang <xu.yang_2@nxp.com>, Frank Li <Frank.Li@nxp.com>,
 Xu Yang <xu.yang_2@nxp.com>
Subject: Re: [PATCH v2 3/4] phy: fsl-imx8mq-usb: support alternate reference clock
Date: Mon, 13 Oct 2025 07:58:12 +0200
Message-ID: <2805917.mvXUDI8C0e@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20251010-usb-phy-alt-clk-support-v2-3-af4b78bb4ae8@nxp.com>
References: <20251010-usb-phy-alt-clk-support-v2-0-af4b78bb4ae8@nxp.com>
 <20251010-usb-phy-alt-clk-support-v2-3-af4b78bb4ae8@nxp.com>
MIME-Version: 1.0
X-cloud-security-sender: alexander.stein@ew.tq-group.com
X-cloud-security-recipient: linux-phy@lists.infradead.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype: outbound
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay58-hz1.antispameurope.com with 4clRTy0D7HzQkxm
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest: 7d5dfab00112230566df6a60cb391a85
X-cloud-security: scantime:2.228
DKIM-Signature: a=rsa-sha256;
 bh=qVaz1zwGuDSR6vm0lLRYYp/IrSSmnl0g1UxK/5AowGY=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1760335118; v=1;
 b=DWH3mYIPkQ8LhAZrpwOIr5/SHJR8WHE+19VpaU+AogJ/jpxSHrBE9wbztKKRF3OwSqsx4tBm
 dEQK9VON05GHpvxktRNRmV9JWt420M5gCG4bcWimlsw7KGM2zZWNIdDGO1B115hcExlQSpBmxuk
 tNHjxt9SRoznhBFKHt2AkimiWhgQ6DXZHj7m819BK4S9hQ1NkXWOOb0GBDgjocAUUVlTDJHfx7r
 GpAzI/XYMFUwwMQjrskAQ3DACgT8ZbVNqm9XXG6Aa5nkmAro5isku8dIP/w3c0O9s/y5rpve/O2
 vxZzlor1yC29UB9Nb44XU+mJcO+Dxvb+GrQvorGoWsKCQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251012_225857_617911_F4DC4D96 
X-CRM114-Status: GOOD (  21.53  )
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

Am Freitag, 10. Oktober 2025, 13:01:12 CEST schrieb Xu Yang:
> This phy supports both 24MHz and 100MHz clock inputs. By default it's
> using XTAL 24MHz and the 100MHz clock is a alternate reference clock.
> Add supports to use alternate reference clock in case 24MHz clock
> can't work well.

This driver supports imx8mx and imx8mp as well. Do these SoC also support
the alternative clock?

Best regards
Alexander

> 
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> 
> ---
> Changes in v2:
>  - add Rb tag
> ---
>  drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 23 +++++++++++++++++++++--
>  1 file changed, 21 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
> index b94f242420fc733cd75abef8ba1cd4f59ac18eb5..ad8a55012e42f2c15496955d00c6d5fd85c5beb2 100644
> --- a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
> +++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
> @@ -16,6 +16,7 @@
>  #define PHY_CTRL0_REF_SSP_EN		BIT(2)
>  #define PHY_CTRL0_FSEL_MASK		GENMASK(10, 5)
>  #define PHY_CTRL0_FSEL_24M		0x2a
> +#define PHY_CTRL0_FSEL_100M		0x27
>  
>  #define PHY_CTRL1			0x4
>  #define PHY_CTRL1_RESET			BIT(0)
> @@ -108,6 +109,7 @@ struct tca_blk {
>  struct imx8mq_usb_phy {
>  	struct phy *phy;
>  	struct clk *clk;
> +	struct clk *alt_clk;
>  	void __iomem *base;
>  	struct regulator *vbus;
>  	struct tca_blk *tca;
> @@ -582,7 +584,8 @@ static int imx8mp_usb_phy_init(struct phy *phy)
>  	/* USB3.0 PHY signal fsel for 24M ref */
>  	value = readl(imx_phy->base + PHY_CTRL0);
>  	value &= ~PHY_CTRL0_FSEL_MASK;
> -	value |= FIELD_PREP(PHY_CTRL0_FSEL_MASK, PHY_CTRL0_FSEL_24M);
> +	value |= FIELD_PREP(PHY_CTRL0_FSEL_MASK, imx_phy->alt_clk ?
> +			    PHY_CTRL0_FSEL_100M : PHY_CTRL0_FSEL_24M);
>  	writel(value, imx_phy->base + PHY_CTRL0);
>  
>  	/* Disable alt_clk_en and use internal MPLL clocks */
> @@ -626,13 +629,24 @@ static int imx8mq_phy_power_on(struct phy *phy)
>  	if (ret)
>  		return ret;
>  
> -	return clk_prepare_enable(imx_phy->clk);
> +	ret = clk_prepare_enable(imx_phy->clk);
> +	if (ret)
> +		return ret;
> +
> +	ret = clk_prepare_enable(imx_phy->alt_clk);
> +	if (ret) {
> +		clk_disable_unprepare(imx_phy->clk);
> +		return ret;
> +	}
> +
> +	return ret;
>  }
>  
>  static int imx8mq_phy_power_off(struct phy *phy)
>  {
>  	struct imx8mq_usb_phy *imx_phy = phy_get_drvdata(phy);
>  
> +	clk_disable_unprepare(imx_phy->alt_clk);
>  	clk_disable_unprepare(imx_phy->clk);
>  	regulator_disable(imx_phy->vbus);
>  
> @@ -681,6 +695,11 @@ static int imx8mq_usb_phy_probe(struct platform_device *pdev)
>  		return PTR_ERR(imx_phy->clk);
>  	}
>  
> +	imx_phy->alt_clk = devm_clk_get_optional(dev, "alt");
> +	if (IS_ERR(imx_phy->alt_clk))
> +		return dev_err_probe(dev, PTR_ERR(imx_phy->alt_clk),
> +				    "Failed to get alt clk\n");
> +
>  	imx_phy->base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(imx_phy->base))
>  		return PTR_ERR(imx_phy->base);
> 
> 





-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

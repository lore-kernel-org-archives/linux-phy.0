Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84E74EB4907
	for <linux-phy@archiver.kernel.org>; Thu, 12 Feb 2026 11:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=icEPePfsOWtIVpeYilEcDwQRM+4voherJHU2MQ77GSg=; b=EKr2Y0G6CJorXs
	28OzM5rUm8Dh/zsSHpVc3u+uGiYlgXhLOA79ekyhAfKDxpRboJUxZ7m+IJHVsIUzgN9xjef53K3aM
	D4xopo0HDY0d9Xyk+UCiSr0+GEKSsHia+R7VPiMz2s9W20BxGI2VyfmQ0tW5dMVC5TL6k2Jru6h3l
	1vSVL8sIY3hg5mWlHb7fI7OGrzQmi/uUUhV9FlUt6K1iF5gx+V+eln2TLjO+oz/6raUMPd9g07Y8p
	odSrQIO/jMT+m6N/DI7gen1WxVVr7IFblQHirfDNZfnk+uCHTwkH7F5vh1Q9B7de42uUwxTvLKEiC
	PHXdsATIWR1xcPRS94dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqUuQ-0000000205b-3NqN;
	Thu, 12 Feb 2026 11:30:58 +0000
Received: from sender4-op-o15.zoho.com ([136.143.188.15])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqUuN-00000002052-3QCw;
	Thu, 12 Feb 2026 11:30:56 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1770895849; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=HVKbNxgsmBVFEAlsnx8KyqWs619i3Xdcq0ugbutcRJ/rreEGuQ0r2AaPUgIuyUwgPJoMqAVkBpzHTZlUw3pstFFZvzSiN1RsNIeJ2LYzF3/YhysoUBJcMZWc4ejLweR6TPqcx0U2+s6pSJvjLPFNqpTplyR+BCtPdQR7I/maH2M=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1770895849; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=G8IqrDcbAUJ2cX6HzRhCxQ7mt8YTvz969YgV8457uCI=; 
	b=Qa8iUZMdmMHy46JsRB7124zN9TKnyctzdMBy7mUZlAJaO9P2xs2f6maFmYvxGsg1j33LgdsGTdMk3aXNGlrFPbkrBiZyFjpoz3d2Xgl34vxa/E538obsZ8p6fVF/abvUEFYYa3l+CyNjTGrKoouqN2lXbG4PrElhsk5zJ1H8+xo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=ziyao.cc;
	spf=pass  smtp.mailfrom=me@ziyao.cc;
	dmarc=pass header.from=<me@ziyao.cc>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1770895849;
	s=zmail; d=ziyao.cc; i=me@ziyao.cc;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=G8IqrDcbAUJ2cX6HzRhCxQ7mt8YTvz969YgV8457uCI=;
	b=a+67Y4XZFbkUF+RtSrlNZsmMfBVoxBthDopV9txjtnmrV/K+c7SkrdMZ/gfKaQAZ
	BGuCxAtVEsopD4cAuzC/q1GiY9gM7bJclaG6/u+whWubwDZT3OgqDUuFiAPCXJGowd3
	xq+XJnSY5e60aOuAa+ZkORVX6YR+aPWIycgNmKaU=
Received: by mx.zohomail.com with SMTPS id 1770895846550396.2075278392381;
	Thu, 12 Feb 2026 03:30:46 -0800 (PST)
Date: Thu, 12 Feb 2026 11:30:39 +0000
From: Yao Zi <me@ziyao.cc>
To: Yixun Lan <dlan@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Ze Huang <huang.ze@linux.dev>
Cc: Junzhong Pan <panjunzhong@linux.spacemit.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] phy: k1-usb: k3: add USB2 PHY support
Message-ID: <aY253_fOkoQKbi8g@pie>
References: <20260212-11-k3-usb2-phy-v1-0-43578592405d@kernel.org>
 <20260212-11-k3-usb2-phy-v1-3-43578592405d@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260212-11-k3-usb2-phy-v1-3-43578592405d@kernel.org>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_033055_893110_4233D279 
X-CRM114-Status: GOOD (  22.31  )
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

On Thu, Feb 12, 2026 at 09:38:56AM +0800, Yixun Lan wrote:
> Add USB2 PHY support for SpacemiT K3 SoC.
> 
> Register layout of handling USB disconnect operation has been changed,
> So introducing a platform data to distinguish the different SoCs.

Would it be clearer and simpler if you define separate phy_ops for
k1 and k3, and point of_device_id.data directly to the corresponding
phy_ops? Then there's no need to introduce either spacemit_usb2phy_data
structure, or spacemit_usb2phy_disconnect wrapper.

Best regards,
Yao Zi

> Signed-off-by: Yixun Lan <dlan@kernel.org>
> ---
>  drivers/phy/spacemit/phy-k1-usb2.c | 40 ++++++++++++++++++++++++++++++++++++--
>  1 file changed, 38 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/spacemit/phy-k1-usb2.c b/drivers/phy/spacemit/phy-k1-usb2.c
> index 959bf79c7a72..b0ce0a92861e 100644
> --- a/drivers/phy/spacemit/phy-k1-usb2.c
> +++ b/drivers/phy/spacemit/phy-k1-usb2.c
> @@ -51,6 +51,9 @@
>  #define PHY_K1_HS_HOST_DISC		0x40
>  #define  PHY_K1_HS_HOST_DISC_CLR		BIT(0)
>  
> +#define PHY_K3_HS_HOST_DISC		0x20
> +#define  PHY_K3_HS_HOST_DISC_CLR		BIT(8)
> +
>  #define PHY_PLL_DIV_CFG			0x98
>  #define  PHY_FDIV_FRACT_8_15		GENMASK(7, 0)
>  #define  PHY_FDIV_FRACT_16_19		GENMASK(11, 8)
> @@ -74,10 +77,15 @@
>  
>  #define K1_USB2PHY_RESET_TIME_MS	50
>  
> +struct spacemit_usb2phy_data {
> +	int (*disconnect)(struct phy *phy, int port);
> +};
> +
>  struct spacemit_usb2phy {
>  	struct phy *phy;
>  	struct clk *clk;
>  	struct regmap *regmap_base;
> +	const struct spacemit_usb2phy_data *data;
>  };
>  
>  static const struct regmap_config phy_regmap_config = {
> @@ -145,7 +153,7 @@ static int spacemit_usb2phy_exit(struct phy *phy)
>  	return 0;
>  }
>  
> -static int spacemit_usb2phy_disconnect(struct phy *phy, int port)
> +static int spacemit_k1_usb2phy_disconnect(struct phy *phy, int port)
>  {
>  	struct spacemit_usb2phy *sphy = phy_get_drvdata(phy);
>  
> @@ -155,6 +163,23 @@ static int spacemit_usb2phy_disconnect(struct phy *phy, int port)
>  	return 0;
>  }
>  
> +static int spacemit_k3_usb2phy_disconnect(struct phy *phy, int port)
> +{
> +	struct spacemit_usb2phy *sphy = phy_get_drvdata(phy);
> +
> +	regmap_update_bits(sphy->regmap_base, PHY_K3_HS_HOST_DISC,
> +					   PHY_K3_HS_HOST_DISC_CLR, PHY_K3_HS_HOST_DISC_CLR);
> +
> +	return 0;
> +}
> +
> +static int spacemit_usb2phy_disconnect(struct phy *phy, int port)
> +{
> +	struct spacemit_usb2phy *sphy = phy_get_drvdata(phy);
> +
> +	return sphy->data->disconnect(phy, port);
> +}
> +
>  static const struct phy_ops spacemit_usb2phy_ops = {
>  	.init = spacemit_usb2phy_init,
>  	.exit = spacemit_usb2phy_exit,
> @@ -173,6 +198,8 @@ static int spacemit_usb2phy_probe(struct platform_device *pdev)
>  	if (!sphy)
>  		return -ENOMEM;
>  
> +	sphy->data = device_get_match_data(dev);
> +
>  	sphy->clk = devm_clk_get_prepared(&pdev->dev, NULL);
>  	if (IS_ERR(sphy->clk))
>  		return dev_err_probe(dev, PTR_ERR(sphy->clk), "Failed to get clock\n");
> @@ -195,8 +222,17 @@ static int spacemit_usb2phy_probe(struct platform_device *pdev)
>  	return PTR_ERR_OR_ZERO(phy_provider);
>  }
>  
> +static const struct spacemit_usb2phy_data k1_usb2phy_data = {
> +	.disconnect = spacemit_k1_usb2phy_disconnect,
> +};
> +
> +static const struct spacemit_usb2phy_data k3_usb2phy_data = {
> +	.disconnect = spacemit_k3_usb2phy_disconnect,
> +};
> +
>  static const struct of_device_id spacemit_usb2phy_dt_match[] = {
> -	{ .compatible = "spacemit,k1-usb2-phy", },
> +	{ .compatible = "spacemit,k1-usb2-phy", .data = &k1_usb2phy_data },
> +	{ .compatible = "spacemit,k3-usb2-phy", .data = &k3_usb2phy_data },
>  	{ /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, spacemit_usb2phy_dt_match);
> 
> -- 
> 2.52.0
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

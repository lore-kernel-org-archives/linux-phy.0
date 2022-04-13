Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2770C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 13 Apr 2022 09:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZEIAzAhsrn9B7naANJT+IkNy/4Y5VvSFXgswkbtwJvw=; b=Nk4DuU5BH8zsWC
	/10clodcXNzAru2L+1RMawi9OvxJJDFGQjSrIM5eeSOKhCySltJrelxQ5kSVHT25rANkquJNVN8YG
	TZ3ta2JJ4KLTP/ON6IPuXRJvjNAeZ1iDGiwCBbEUelQk9pZSOBgRJX45/Wc4BxWzovmr/ST119wMC
	8mTUMC0Uu81wkDIAQemZDKQ8vVGhZ1MW4ZAvC87VLihGXCRZWmU54OTCtnE8HF0pZ1QJyR4jLaN0i
	I3t1CaUa0VN3dBnzznK1apGrFMXQ8H8MgO0EF+Tctj7+iI8TRvUEjrfv1j+GpyBG5khcftb+nUpCL
	whoL8Jo/y6vA8VEppFVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neZfH-000RKp-CJ; Wed, 13 Apr 2022 09:51:55 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neZf6-000RIg-In; Wed, 13 Apr 2022 09:51:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id AD0AD61C4F;
 Wed, 13 Apr 2022 09:51:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85992C385A4;
 Wed, 13 Apr 2022 09:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649843503;
 bh=8ts+Kz9ndNJjRtSXvOEj5iAcy0dAiFBVQaR1hMCq0jE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gPeZ7wdVTWbFywyfLoz0s2gLEIzH1+pavbNZXUPU4nCfLSGvudPAQDuZMWb1Dzsgp
 qDBQDMZFI36H1EJYqOAfwf/hyQ0MZo+Y6Lq3P+Vv+6icNP7IqDEt1TyLzotHPNT0jU
 0b5+B8XDzkjgI9MbU4SVpz3YarihjneIehRoBCPJhKNriaIDfP7T3+qrvEsR9LmNE0
 BdruynS0hC5bnAPYHogYdbRZ33FH40N6ct65EPRqz/oTkUVfY2JMjriJ0R5JkKjhF9
 kkbXFMp9NQ6cqAaK8Q4++ZqB8JeMlcFVbuAH2ge8yf0iCR7jeRRD5ko1UZCybT1Ai4
 eiFTkqiBTxqJw==
Date: Wed, 13 Apr 2022 15:21:39 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Miaoqian Lin <linmq006@gmail.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: samsung: exynos5250-sata: fix missing device put in
 probe error paths
Message-ID: <YladK4z//z1hmTRX@matsya>
References: <20220309170028.51913-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220309170028.51913-1-krzysztof.kozlowski@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_025144_714820_84CDDA26 
X-CRM114-Status: GOOD (  19.99  )
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

On 09-03-22, 18:00, Krzysztof Kozlowski wrote:
> The actions of of_find_i2c_device_by_node() in probe function should be
> reversed in error paths by putting the reference to obtained device.

This fails to apply on phy-fixes, pls rebase

> 
> Fixes: bcff4cba41bc ("PHY: Exynos: Add Exynos5250 SATA PHY driver")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> 
> ---
> 
> Rebased on top of (although it is independent, no conflicts):
> https://lore.kernel.org/linux-samsung-soc/20220309124856.32632-1-linmq006@gmail.com/T/#u
> ---
>  drivers/phy/samsung/phy-exynos5250-sata.c | 20 ++++++++++++++------
>  1 file changed, 14 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/phy/samsung/phy-exynos5250-sata.c b/drivers/phy/samsung/phy-exynos5250-sata.c
> index 6c305a3fe187..595adba5fb8f 100644
> --- a/drivers/phy/samsung/phy-exynos5250-sata.c
> +++ b/drivers/phy/samsung/phy-exynos5250-sata.c
> @@ -196,20 +196,21 @@ static int exynos_sata_phy_probe(struct platform_device *pdev)
>  	sata_phy->phyclk = devm_clk_get(dev, "sata_phyctrl");
>  	if (IS_ERR(sata_phy->phyclk)) {
>  		dev_err(dev, "failed to get clk for PHY\n");
> -		return PTR_ERR(sata_phy->phyclk);
> +		ret = PTR_ERR(sata_phy->phyclk);
> +		goto put_dev;
>  	}
>  
>  	ret = clk_prepare_enable(sata_phy->phyclk);
>  	if (ret < 0) {
>  		dev_err(dev, "failed to enable source clk\n");
> -		return ret;
> +		goto put_dev;
>  	}
>  
>  	sata_phy->phy = devm_phy_create(dev, NULL, &exynos_sata_phy_ops);
>  	if (IS_ERR(sata_phy->phy)) {
> -		clk_disable_unprepare(sata_phy->phyclk);
>  		dev_err(dev, "failed to create PHY\n");
> -		return PTR_ERR(sata_phy->phy);
> +		ret = PTR_ERR(sata_phy->phy);
> +		goto clk_disable;
>  	}
>  
>  	phy_set_drvdata(sata_phy->phy, sata_phy);
> @@ -217,11 +218,18 @@ static int exynos_sata_phy_probe(struct platform_device *pdev)
>  	phy_provider = devm_of_phy_provider_register(dev,
>  					of_phy_simple_xlate);
>  	if (IS_ERR(phy_provider)) {
> -		clk_disable_unprepare(sata_phy->phyclk);
> -		return PTR_ERR(phy_provider);
> +		ret = PTR_ERR(phy_provider);
> +		goto clk_disable;
>  	}
>  
>  	return 0;
> +
> +clk_disable:
> +	clk_disable_unprepare(sata_phy->phyclk);
> +put_dev:
> +	put_device(&sata_phy->client->dev);
> +
> +	return ret;
>  }
>  
>  static const struct of_device_id exynos_sata_phy_of_match[] = {
> -- 
> 2.32.0

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

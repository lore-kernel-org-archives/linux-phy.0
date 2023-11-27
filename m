Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91B64C07CB1
	for <linux-phy@archiver.kernel.org>; Mon, 27 Nov 2023 13:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uxBdwC4EZnMIYavQtYUET8CC+6Xo224k4dAQAIHO9Bs=; b=WrWRn1QpfMXVJ0
	tGgtDX/ovP5gDKOkwi+zJseeC/5Vdu0i8PqiRfstwDCqebA+y4hQpVHWad5HRyR+hUBRdASHfPwKT
	hTut99A2GT1U5c/qNHp4cu2R+0wWH6R0dcS2YeL4UbiqHN6GisyXaT0b66QB2n9po696iMOd2Vlbv
	xJP42QO4FCSmFmuq3E9l67JbiQSia4DmnmMk+hhPYEVmze9Zz+qdSxxo/y2aYCXAsgKIDhzJRQNpT
	M7F77KTtKdfbNBfbtdv6wl/oLP96OZVBz9nWM5J7DUGcUYyJCD2zEi5oxA4h5YT/RPhhWb3VTVa2H
	0gBoVp3i4457mBJ7z2ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7bUJ-002XMc-0o;
	Mon, 27 Nov 2023 13:17:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7bUF-002XJZ-2V
	for linux-phy@lists.infradead.org;
	Mon, 27 Nov 2023 13:17:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1r7bUD-0007pG-Nn; Mon, 27 Nov 2023 14:17:17 +0100
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1r7bUB-00BxG9-Dp; Mon, 27 Nov 2023 14:17:15 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1r7bUB-000Cxr-18;
	Mon, 27 Nov 2023 14:17:15 +0100
Message-ID: <939b96b8727054729207211f25ff91ccf8328e28.camel@pengutronix.de>
Subject: Re: [PATCH v1 2/2] phy: starfive: Add mipi dphy tx support
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Shengyang Chen <shengyang.chen@starfivetech.com>, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	minda.chen@starfivetech.com, changhuang.liang@starfivetech.com, 
	rogerq@kernel.org, geert+renesas@glider.be, keith.zhao@starfivetech.com, 
	linux-kernel@vger.kernel.org
Date: Mon, 27 Nov 2023 14:17:15 +0100
In-Reply-To: <20231117130421.79261-3-shengyang.chen@starfivetech.com>
References: <20231117130421.79261-1-shengyang.chen@starfivetech.com>
	 <20231117130421.79261-3-shengyang.chen@starfivetech.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_051719_858713_C741147C 
X-CRM114-Status: GOOD (  12.17  )
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

On Fr, 2023-11-17 at 21:04 +0800, Shengyang Chen wrote:
> Add mipi dphy tx support for the StarFive JH7110 SoC.
> It is used to transfer DSI data.
> 
> Signed-off-by: Shengyang Chen <shengyang.chen@starfivetech.com>
> ---
[...]
> diff --git a/drivers/phy/starfive/phy-jh7110-dphy-tx.c b/drivers/phy/starfive/phy-jh7110-dphy-tx.c
> new file mode 100644
> index 000000000000..69aa172563e4
> --- /dev/null
> +++ b/drivers/phy/starfive/phy-jh7110-dphy-tx.c
> @@ -0,0 +1,542 @@
[...]
> +static int stf_dphy_probe(struct platform_device *pdev)
> +{
[...]
> +	dphy->topsys = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(dphy->topsys)) {
> +		ret = PTR_ERR(dphy->topsys);
> +		return ret;

This could be shortened to:

		return PTR_ERR(dphy->topsys);

> +	}
> +
> +	pm_runtime_enable(&pdev->dev);
> +
> +	dphy->mipitx_0p9 = devm_regulator_get(&pdev->dev, "mipi_0p9");
> +	if (IS_ERR(dphy->mipitx_0p9)) {
> +		ret = PTR_ERR(dphy->mipitx_0p9);
> +		return ret;

Same as above.

> +	}
> +
> +	dphy->txesc_clk = devm_clk_get(&pdev->dev, "dphy_txesc");
> +	if (IS_ERR(dphy->txesc_clk)) {
> +		ret = PTR_ERR(dphy->txesc_clk);
> +		dev_err(&pdev->dev, "txesc_clk get error\n");
> +		return ret;

Consider using dev_err_probe():

		return dev_err_probe(&pdev->dev, PTR_ERR(dphy->txesc_clk),
				     "txesc_clk get error\n");

And the same for the error paths below.

> +	}
> +
> +	dphy->sys_rst = reset_control_get_exclusive(&pdev->dev, "dphy_sys");

Why not devm_reset_control_get_exclusive()?

> +	if (IS_ERR(dphy->sys_rst)) {
> +		ret = PTR_ERR(dphy->sys_rst);
> +		dev_err(&pdev->dev, "sys_rst get error\n");
> +		return ret;
> +	}
> +
> +	dphy->txbytehs_rst = reset_control_get_exclusive(&pdev->dev, "dsi_txbytehs");

Same as above.

> +	if (IS_ERR(dphy->txbytehs_rst)) {
> +		dev_err(&pdev->dev, "Failed to get txbytehs_rst\n");
> +		return PTR_ERR(dphy->txbytehs_rst);
> +	}
> +
> +	dphy->phy = devm_phy_create(&pdev->dev, NULL, &stf_dphy_ops);
> +	if (IS_ERR(dphy->phy)) {
> +		ret = PTR_ERR(dphy->phy);
> +		dev_err(&pdev->dev, "Failed to create phy\n");
> +		return ret;
> +	}
> +	phy_set_drvdata(dphy->phy, dphy);
> +
> +	phy_provider = devm_of_phy_provider_register(&pdev->dev, of_phy_simple_xlate);
> +	if (IS_ERR(phy_provider)) {
> +		ret = PTR_ERR(phy_provider);
> +		dev_err(&pdev->dev, "Failed to create phy\n");
> +		return ret;
> +	}
> +
> +	return PTR_ERR_OR_ZERO(phy_provider);

This can not be reached in the error case, so just:

	return 0;

should suffice.


regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D63C5C3DA4A
	for <linux-phy@archiver.kernel.org>; Fri,  9 Aug 2024 01:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hm0hyZJ4GjyZ4R1AuHbXZzk3nsc/LM74WiRuSmUZjbY=; b=0s+2YvZyvn4j7G
	ZvRhhQOT42khwG54eIY3DPK0ktemrZeUC0LzZ3Mp0rZ8Uxm5m+bIxyX6oz58j7E0CiyAPjEsvtAYU
	7AD7vl3Tc9+UwTGg9hjWmpstnRiK7yBDVUAhcmTebEQcPDFL18VtNuw6RFuPHqizQpbZX8sVOcLFX
	wy/lVXUk3bM0honmwx/5YFgLlbXIGixJlMIjedw/yInl7uJF2OsXV1KzRY2/D/f5f6Nrb4yUzd4zH
	XdhDn+0SnMHMxsQ7Wi6xlIfKTdEhO2DHSwn5pntydR1w5gKDroX23iSeTcgQNLB0uIEagRr/ikSEX
	6fP+SQ6VfhXLS18UJc4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scEPQ-00000009vUl-1ZWf;
	Fri, 09 Aug 2024 01:27:12 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scEOr-00000009vSG-0nS4;
	Fri, 09 Aug 2024 01:26:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 119F161575;
	Fri,  9 Aug 2024 01:26:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83B66C32782;
	Fri,  9 Aug 2024 01:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723166795;
	bh=t4Kxw+OVg7XockFwmHnqd3O4dZONmVYviHD+66OcYik=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Dxoq6RQ9C/ka5+gpSg523ncPJUeOb5YvXLj6yhC0K2bGFL8RRFUWDqdUc4sPDEN+Z
	 HM5IWV15KVS+ZmrDFgFEI+4xa3Moc0mQ9edZVahWNz8DZQ/KJtFQNJ6+wRM9wLcjXN
	 UWvPxzrrLMg/fb+YHFmR3mBPw1DKUdVZM9iVjIQBhKzk/U1h+T4k9/1AgLSkzVkrtf
	 lmxfnXlFkrjag6zOAEX8+fonRhZ87Wwn7aFT+raNjHJDGBu+NJz/4E/RsgzfyVsruV
	 XS9zj2JLsTM9ECf4+HVsylHNsFQxYFEiP++Nq/UFCT5tfxaHjzYe47dl2AnzaiUhpN
	 +6oQdoB71K1lg==
Date: Fri, 9 Aug 2024 09:26:25 +0800
From: Peter Chen <peter.chen@kernel.org>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	gregkh@linuxfoundation.org, herve.codina@bootlin.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-usb@vger.kernel.org, jun.li@nxp.com
Subject: Re: [PATCH v2 1/6] usb: phy: mxs: enable regulator phy-3p0 to
 improve signal qualilty
Message-ID: <20240809012625.GC2673490@nchen-desktop>
References: <20240726113207.3393247-1-xu.yang_2@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240726113207.3393247-1-xu.yang_2@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_182637_388416_A1493C06 
X-CRM114-Status: GOOD (  19.83  )
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

On 24-07-26 19:32:02, Xu Yang wrote:
> Enable regulator 'phy-3p0' to pass eye diagram test since it improve signal
> qualilty.
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>

Reviewed-by: Peter Chen <peter.chen@kernel.org>

> 
> ---
> Changes in v2:
>  - rewrite commit message
>  - use dev_err_probe() as suggested by Frank Li
> ---
>  drivers/usb/phy/phy-mxs-usb.c | 26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/drivers/usb/phy/phy-mxs-usb.c b/drivers/usb/phy/phy-mxs-usb.c
> index 920a32cd094d..d9d29f0b37de 100644
> --- a/drivers/usb/phy/phy-mxs-usb.c
> +++ b/drivers/usb/phy/phy-mxs-usb.c
> @@ -18,6 +18,7 @@
>  #include <linux/regmap.h>
>  #include <linux/mfd/syscon.h>
>  #include <linux/iopoll.h>
> +#include <linux/regulator/consumer.h>
>  
>  #define DRIVER_NAME "mxs_phy"
>  
> @@ -204,6 +205,7 @@ struct mxs_phy {
>  	int port_id;
>  	u32 tx_reg_set;
>  	u32 tx_reg_mask;
> +	struct regulator *phy_3p0;
>  };
>  
>  static inline bool is_imx6q_phy(struct mxs_phy *mxs_phy)
> @@ -288,6 +290,16 @@ static int mxs_phy_hw_init(struct mxs_phy *mxs_phy)
>  	if (ret)
>  		goto disable_pll;
>  
> +	if (mxs_phy->phy_3p0) {
> +		ret = regulator_enable(mxs_phy->phy_3p0);
> +		if (ret) {
> +			dev_err(mxs_phy->phy.dev,
> +				"Failed to enable 3p0 regulator, ret=%d\n",
> +				ret);
> +			return ret;
> +		}
> +	}
> +
>  	/* Power up the PHY */
>  	writel(0, base + HW_USBPHY_PWD);
>  
> @@ -448,6 +460,9 @@ static void mxs_phy_shutdown(struct usb_phy *phy)
>  	if (is_imx7ulp_phy(mxs_phy))
>  		mxs_phy_pll_enable(phy->io_priv, false);
>  
> +	if (mxs_phy->phy_3p0)
> +		regulator_disable(mxs_phy->phy_3p0);
> +
>  	clk_disable_unprepare(mxs_phy->clk);
>  }
>  
> @@ -789,6 +804,17 @@ static int mxs_phy_probe(struct platform_device *pdev)
>  	mxs_phy->clk = clk;
>  	mxs_phy->data = of_device_get_match_data(&pdev->dev);
>  
> +	mxs_phy->phy_3p0 = devm_regulator_get(&pdev->dev, "phy-3p0");
> +	if (PTR_ERR(mxs_phy->phy_3p0) == -ENODEV)
> +		/* not exist */
> +		mxs_phy->phy_3p0 = NULL;
> +	else if (IS_ERR(mxs_phy->phy_3p0))
> +		return dev_err_probe(&pdev->dev, PTR_ERR(mxs_phy->phy_3p0),
> +				"Getting regulator error\n");
> +
> +	if (mxs_phy->phy_3p0)
> +		regulator_set_voltage(mxs_phy->phy_3p0, 3200000, 3200000);
> +
>  	platform_set_drvdata(pdev, mxs_phy);
>  
>  	device_set_wakeup_capable(&pdev->dev, true);
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

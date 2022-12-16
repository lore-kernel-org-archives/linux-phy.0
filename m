Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5EEAC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 16 Dec 2022 09:16:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i8vEHoXQyQ0dTBDuH1sV7xKSs/qtwkSHxQy0FJ0mplQ=; b=H9wvHXnYPjKdS1
	zseEzOo0DaoDjLNIqtAGHsj3CnAo8SdAvZ82TLJjmF8zgjSYUZ853xt52uVEOy2pY2xNXsPm57Kiy
	plO3BNMk6YPEI3sclUoSL6B7lbK2opW1/2NBH1A7z26FQ1A/WX2WGIOFGHgKnnCJbCVAyKBnuscda
	8t/3RVbj99Q5/+jvlFn51QumtzlpqF9lENI3RJRzqsCS5+dhkiJRwafuX7DCUY6arIjW0w2ySWfCY
	mS+sq90A/Gs8CAoZHABd3ZVw8ACqv7dRJ5pkiBw/RAId6ztyz6b0KOOtjvVyLabKJJKVXeCPrYLFU
	0Iuj7M9kmJ3oKmWTHITQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p66p1-00DljH-Uj; Fri, 16 Dec 2022 09:16:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p66oy-00Dli2-J0
	for linux-phy@lists.infradead.org; Fri, 16 Dec 2022 09:16:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1p66oh-0005UO-Pa; Fri, 16 Dec 2022 10:15:43 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1p66og-0005BT-66; Fri, 16 Dec 2022 10:15:42 +0100
Date: Fri, 16 Dec 2022 10:15:42 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org, Sandor Yu <Sandor.yu@nxp.com>,
	Seung-Woo Kim <sw0312.kim@samsung.com>,
	patchwork-lst@pengutronix.de, Inki Dae <inki.dae@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 2/2] phy: freescale: add Samsung HDMI PHY
Message-ID: <20221216091542.ulctjdxbz552ar2w@pengutronix.de>
References: <20221215201100.2897501-1-l.stach@pengutronix.de>
 <20221215201100.2897501-2-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221215201100.2897501-2-l.stach@pengutronix.de>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221216_011600_647202_F1DA3846 
X-CRM114-Status: GOOD (  17.05  )
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

Hi Lucas,

thanks for this series, one comment please see below.

On 22-12-15, Lucas Stach wrote:
> This adds the driver for the Samsung HDMI PHY found on the
> i.MX8MP SoC. Based on downstream implementation from
> Sandor Yu <Sandor.yu@nxp.com>.
> 
> Co-developed-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
> v2: use DEFINE_RUNTIME_DEV_PM_OPS
> ---
>  drivers/phy/freescale/Kconfig                |   6 +
>  drivers/phy/freescale/Makefile               |   1 +
>  drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 694 +++++++++++++++++++
>  3 files changed, 701 insertions(+)
>  create mode 100644 drivers/phy/freescale/phy-fsl-samsung-hdmi.c

...

> +static int fsl_samsung_hdmi_phy_suspend(struct device *dev)
> +{
> +	struct fsl_samsung_hdmi_phy *phy = dev_get_drvdata(dev);
> +
> +	clk_disable_unprepare(phy->apbclk);
> +
> +	return 0;
> +}
> +
> +static int fsl_samsung_hdmi_phy_resume(struct device *dev)
> +{
> +	struct fsl_samsung_hdmi_phy *phy = dev_get_drvdata(dev);
> +	int ret = 0;
> +
> +	ret = clk_prepare_enable(phy->apbclk);
> +	if (ret) {
> +		dev_err(phy->dev, "failed to enable apbclk\n");
> +		return ret;
> +	}
> +
> +	if (phy->cur_cfg)
> +		ret = fsl_samsung_hdmi_phy_configure(phy, phy->cur_cfg);
> +
> +	return ret;
> +
> +}
> +
> +DEFINE_RUNTIME_DEV_PM_OPS(fsl_samsung_hdmi_phy_pm_ops,
> +			  fsl_samsung_hdmi_phy_suspend,
> +			  fsl_samsung_hdmi_phy_resume, NULL);

This must be 'static DEFINE_RUNTIME_DEV_PM_OPS()' since the define don't
add this for you.

Regards,
  Marco

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

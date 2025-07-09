Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87F77C83F1D
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 09:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xTd2LXtFv3FdnxvzWYmMtqVPBgbO3t5JRgRLVWlsvho=; b=CizQwKxQxZvPEQ
	UrE/p2u/fWbg+wQNhe13tFXW9VQG0Bt1lNpjFybt8bQWA+new8ufDWb/mfWm88CsG/DyLzpJdR3Uj
	pm0kItFQ+gXI++g4chZYPa3z0Fo9qoQKMOxZYTleRW+l/HpW82zGANXCDa8CWVzXMjhaQ1NrwkxWe
	pqd1NYcgXbM8v/RPrD35C53uh0l4NZPr/jNESkIh7gzDHUbz3bKsg7XBzobj9y7PtDmb51ZwKTikx
	Xy4jdjplGhXGgdIkVUR2ZnG8202oueZDEVnZ0KHRQqMsAX7LwIIVBDcIT81lo5m6RAG2OxvSjJ1af
	7ccIN8CJoM6W605Co0UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZnDo-0000000BHqW-1GHO;
	Thu, 10 Jul 2025 09:05:40 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZm7J-0000000B5AO-0mXD
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 07:54:54 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20250710075446epoutp03bc3fd6cc79b99eb0c63d875c8fdaa7ce~Q1KscdaTS1469014690epoutp034
	for <linux-phy@lists.infradead.org>; Thu, 10 Jul 2025 07:54:46 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20250710075446epoutp03bc3fd6cc79b99eb0c63d875c8fdaa7ce~Q1KscdaTS1469014690epoutp034
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1752134086;
	bh=oa4e30xg1nXdVHY1HFgVYjmBCHhk8pTf5n8D+xTU2Cg=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=UwaCBZ9B38oBxU8W/FfkVgzGYFLlgaB2w9VTyRpnRL30SjeHZiSibg1qN0GtEBlCo
	 2gqsINlDaR79vKkmmsn+h5ElfoheXhOMNQhsS7rj/k9Ucb+Wli+0TFIRgZfl/hTSQO
	 WS7+rbFfMpne9fMIClP1nHKgh0LUdR4IJDvJv/Tw=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPS id
	20250710075445epcas5p219a2e4013704b00030be1b789ef1eb5a~Q1Kr4wP112201222012epcas5p2b;
	Thu, 10 Jul 2025 07:54:45 +0000 (GMT)
Received: from epcas5p3.samsung.com (unknown [182.195.38.174]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4bd6ZC410Wz2SSKh; Thu, 10 Jul
	2025 07:54:43 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20250709101135epcas5p2cfcd5e2be55f18c39d637774ca2c31b6~QjY3nfg5J2387023870epcas5p2Z;
	Wed,  9 Jul 2025 10:11:35 +0000 (GMT)
Received: from INBRO001840 (unknown [107.122.3.105]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20250709101132epsmtip1311de8ec68c69b224cac40a4b38269ad~QjY0zgCal0502805028epsmtip1Y;
	Wed,  9 Jul 2025 10:11:32 +0000 (GMT)
From: "Pritam Manohar Sutar" <pritam.sutar@samsung.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<andre.draszik@linaro.org>, <peter.griffin@linaro.org>,
	<neil.armstrong@linaro.org>, <kauschluss@disroot.org>,
	<ivo.ivanov.ivanov1@gmail.com>, <m.szyprowski@samsung.com>,
	<s.nawrocki@samsung.com>
Cc: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <rosa.pila@samsung.com>,
	<dev.tailor@samsung.com>, <faraz.ata@samsung.com>,
	<muhammed.ali@samsung.com>, <selvarasu.g@samsung.com>
In-Reply-To: <20250701120706.2219355-3-pritam.sutar@samsung.com>
Subject: RE: [PATCH v4 2/6] phy: exynos5-usbdrd: support HS phy for
 ExynosAutov920
Date: Wed, 9 Jul 2025 15:41:31 +0530
Message-ID: <001701dbf0b9$da068d00$8e13a700$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJAgQZ9LFXBZrDskwNBYris6jFv1AFx24JLAb5T8KKzRu1osA==
Content-Language: en-in
X-CMS-MailID: 20250709101135epcas5p2cfcd5e2be55f18c39d637774ca2c31b6
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250701115959epcas5p40f28954777a620b018251301eea13873
References: <20250701120706.2219355-1-pritam.sutar@samsung.com>
	<CGME20250701115959epcas5p40f28954777a620b018251301eea13873@epcas5p4.samsung.com>
	<20250701120706.2219355-3-pritam.sutar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_005453_534660_1130A5E6 
X-CRM114-Status: GOOD (  20.97  )
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

Hi Neil,

> -----Original Message-----
> From: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> Sent: 01 July 2025 05:37 PM
> To: vkoul@kernel.org; kishon@kernel.org; robh@kernel.org;
> krzk+dt@kernel.org; conor+dt@kernel.org; alim.akhtar@samsung.com;
> andre.draszik@linaro.org; peter.griffin@linaro.org; neil.armstrong@linaro.org;
> kauschluss@disroot.org; ivo.ivanov.ivanov1@gmail.com;
> m.szyprowski@samsung.com; s.nawrocki@samsung.com;
> pritam.sutar@samsung.com
> Cc: linux-phy@lists.infradead.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-samsung-
> soc@vger.kernel.org; rosa.pila@samsung.com; dev.tailor@samsung.com;
> faraz.ata@samsung.com; muhammed.ali@samsung.com;
> selvarasu.g@samsung.com
> Subject: [PATCH v4 2/6] phy: exynos5-usbdrd: support HS phy for
> ExynosAutov920
> 
> This SoC has a single USB 3.1 DRD combo phy that supports both
> UTMI+ (HS) and PIPE3 (SS) and three USB2.0 DRD HS phy controllers
> those only support the UTMI+ (HS) interface.
> 
> Support only UTMI+ port for this SoC which is very similar to what the existing
> Exynos850 supports.
> 
> This SoC shares phy isol between USBs. Bypass PHY isol when first USB is
> powered on and enable it when all of then are powered off. Add required
> change in phy driver to support HS phy for this SoC.
> 
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> ---
>  drivers/phy/samsung/phy-exynos5-usbdrd.c    | 131 ++++++++++++++++++++
>  include/linux/soc/samsung/exynos-regs-pmu.h |   2 +
>  2 files changed, 133 insertions(+)
> 
> diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c
> b/drivers/phy/samsung/phy-exynos5-usbdrd.c
> index dd660ebe8045..64f3316f6ad4 100644
> --- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
> +++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
> @@ -480,6 +480,8 @@ struct exynos5_usbdrd_phy {
>  	enum typec_orientation orientation;
>  };
> 
> +static atomic_t usage_count = ATOMIC_INIT(0);
> +

Added phy isolation for exynosautov920 support as per comments on v3 patch-set.
Since phy isol is shared across usb ports, added usage counter to bypass and enable it. 

Can you please review the code? 

However, added "Reviewed-by" tag as per comments on v3 patch-set.

>  static inline
>  struct exynos5_usbdrd_phy *to_usbdrd_phy(struct phy_usb_instance *inst)  {
> @@ -2054,6 +2056,132 @@ static const struct exynos5_usbdrd_phy_drvdata
> exynos990_usbdrd_phy = {
>  	.n_regulators		= ARRAY_SIZE(exynos5_regulator_names),
>  };
> 
> +static int exynosautov920_usbdrd_phy_init(struct phy *phy) {
> +	struct phy_usb_instance *inst = phy_get_drvdata(phy);
> +	struct exynos5_usbdrd_phy *phy_drd = to_usbdrd_phy(inst);
> +	int ret;
> +
> +	ret = clk_bulk_prepare_enable(phy_drd->drv_data->n_clks, phy_drd-
> >clks);
> +	if (ret)
> +		return ret;
> +
> +	if (inst->phy_cfg->id == EXYNOS5_DRDPHY_UTMI) {
> +		/* Bypass PHY isol when first USB is powered on */
> +		if ((atomic_inc_return(&usage_count) == 1))
> +			inst->phy_cfg->phy_isol(inst, false);
> +	}
> +
> +	/* UTMI or PIPE3 specific init */
> +	inst->phy_cfg->phy_init(phy_drd);
> +
> +	clk_bulk_disable_unprepare(phy_drd->drv_data->n_clks, phy_drd->clks);
> +
> +	return 0;
> +}
> +
> +static int exynosautov920_usbdrd_phy_exit(struct phy *phy) {
> +	struct phy_usb_instance *inst = phy_get_drvdata(phy);
> +	struct exynos5_usbdrd_phy *phy_drd = to_usbdrd_phy(inst);
> +	int ret = 0;
> +
> +	ret = clk_bulk_prepare_enable(phy_drd->drv_data->n_clks, phy_drd-
> >clks);
> +	if (ret)
> +		return ret;
> +
> +	if (inst->phy_cfg->id == EXYNOS5_DRDPHY_UTMI) {
> +		exynos850_usbdrd_phy_exit(phy);
> +
> +		/* enable PHY isol when all USBs are powered off */
> +		if (atomic_dec_and_test(&usage_count))
> +			inst->phy_cfg->phy_isol(inst, true);
> +	}
> +
> +	clk_bulk_disable_unprepare(phy_drd->drv_data->n_clks, phy_drd->clks);
> +
> +	return 0;
> +}
> +
> +static int exynosautov920_usbdrd_phy_power_on(struct phy *phy) {
> +	int ret;
> +	struct phy_usb_instance *inst = phy_get_drvdata(phy);
> +	struct exynos5_usbdrd_phy *phy_drd = to_usbdrd_phy(inst);
> +
> +	dev_dbg(phy_drd->dev, "Request to power_on usbdrd_phy phy\n");
> +
> +	ret = clk_bulk_prepare_enable(phy_drd->drv_data->n_core_clks,
> +				      phy_drd->core_clks);
> +	if (ret)
> +		return ret;
> +
> +	/* Enable supply */
> +	ret = regulator_bulk_enable(phy_drd->drv_data->n_regulators,
> +				    phy_drd->regulators);
> +	if (ret) {
> +		dev_err(phy_drd->dev, "Failed to enable PHY regulator(s)\n");
> +		goto fail_supply;
> +	}
> +
> +	return 0;
> +
> +fail_supply:
> +	clk_bulk_disable_unprepare(phy_drd->drv_data->n_core_clks,
> +				   phy_drd->core_clks);
> +
> +	return ret;
> +}
> +
> +static int exynosautov920_usbdrd_phy_power_off(struct phy *phy) {
> +	struct phy_usb_instance *inst = phy_get_drvdata(phy);
> +	struct exynos5_usbdrd_phy *phy_drd = to_usbdrd_phy(inst);
> +
> +	dev_dbg(phy_drd->dev, "Request to power_off usbdrd_phy phy\n");
> +
> +	/* Disable supply */
> +	regulator_bulk_disable(phy_drd->drv_data->n_regulators,
> +			       phy_drd->regulators);
> +
> +	clk_bulk_disable_unprepare(phy_drd->drv_data->n_core_clks,
> +				   phy_drd->core_clks);
> +
> +	return 0;
> +}
> +
> +static const char * const exynosautov920_regulator_names[] = {
> +	"avdd075_usb", "avdd18_usb20", "avdd33_usb20", };
> +
> +static const struct phy_ops exynosautov920_usbdrd_phy_ops = {
> +	.init		= exynosautov920_usbdrd_phy_init,
> +	.exit		= exynosautov920_usbdrd_phy_exit,
> +	.power_on       = exynosautov920_usbdrd_phy_power_on,
> +	.power_off      = exynosautov920_usbdrd_phy_power_off,
> +	.owner		= THIS_MODULE,
> +};
> +
> +static const struct exynos5_usbdrd_phy_config phy_cfg_exynosautov920[] = {
> +	{
> +		.id		= EXYNOS5_DRDPHY_UTMI,
> +		.phy_isol	= exynos5_usbdrd_phy_isol,
> +		.phy_init	= exynos850_usbdrd_utmi_init,
> +	},
> +};
> +
> +static const struct exynos5_usbdrd_phy_drvdata exynosautov920_usbdrd_phy
> = {
> +	.phy_cfg		= phy_cfg_exynosautov920,
> +	.phy_ops		= &exynosautov920_usbdrd_phy_ops,
> +	.pmu_offset_usbdrd0_phy	=
> EXYNOSAUTOV920_PHY_CTRL_USB20,
> +	.clk_names		= exynos5_clk_names,
> +	.n_clks			= ARRAY_SIZE(exynos5_clk_names),
> +	.core_clk_names		= exynos5_core_clk_names,
> +	.n_core_clks		= ARRAY_SIZE(exynos5_core_clk_names),
> +	.regulator_names	= exynosautov920_regulator_names,
> +	.n_regulators		=
> ARRAY_SIZE(exynosautov920_regulator_names),
> +};
> +
>  static const struct exynos5_usbdrd_phy_config phy_cfg_gs101[] = {
>  	{
>  		.id		= EXYNOS5_DRDPHY_UTMI,
> @@ -2260,6 +2388,9 @@ static const struct of_device_id
> exynos5_usbdrd_phy_of_match[] = {
>  	}, {
>  		.compatible = "samsung,exynos990-usbdrd-phy",
>  		.data = &exynos990_usbdrd_phy
> +	}, {
> +		.compatible = "samsung,exynosautov920-usbdrd-phy",
> +		.data = &exynosautov920_usbdrd_phy
>  	},
>  	{ },
>  };
> diff --git a/include/linux/soc/samsung/exynos-regs-pmu.h
> b/include/linux/soc/samsung/exynos-regs-pmu.h
> index 71e0c09a49eb..4923f9be3d1f 100644
> --- a/include/linux/soc/samsung/exynos-regs-pmu.h
> +++ b/include/linux/soc/samsung/exynos-regs-pmu.h
> @@ -688,4 +688,6 @@
>  #define GS101_GRP2_INTR_BID_UPEND
> 	(0x0208)
>  #define GS101_GRP2_INTR_BID_CLEAR				(0x020c)
> 
> +/* exynosautov920 */
> +#define EXYNOSAUTOV920_PHY_CTRL_USB20
> 	(0x0710)
>  #endif /* __LINUX_SOC_EXYNOS_REGS_PMU_H */
> --
> 2.34.1

Thank you.

Regards,
Pritam


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

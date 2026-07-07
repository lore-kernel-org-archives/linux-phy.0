Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA9FDC43602
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 16:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0oZSxATjh+2QxiEaqsG79KapWTFkAO5VApEhhKp21pE=; b=dHmBBhNCqaHODb
	LtjcYbx+Bob9+XvA7kKby2VqdQKrBhF/8LFX//wZDxxi7Lbtnx2pBdPnHZPYrZOrr2yigAE56GMWR
	R/xq9KK9IcKvDVc2gYiDsdaTfN6fU5ubhFj7n402SAfE+QByRR3mH/2juaTsgvzrfdCGVkRVKJ6X4
	ULRrfcx/rcnc1zZRcfj0U96h8MMrcGsG32qY/qo+dYZRfw6FetJ5ThCvzp9PDFGt4DWIO0FXKXWj6
	Zb0UPnIQukwDk9vTvEZUnKlDvPE/ShcFaUlLp8kPYX7TzI0MI16H/nt3D8TbR+kh+6M/kzk55KtiI
	ifK8/9rCexCSSiUDNo8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh8S5-0000000FRGq-1knt;
	Tue, 07 Jul 2026 16:15:17 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh8S1-0000000FRFu-33MU
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 16:15:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783440911;
	bh=e8ufgerAfARsokorUa9usFydgSZd4W0BX082w6Cpe9g=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=j/89V5udi+J0D1/DMhkgGtE2jSOwhtbwlWmfnr6Q3kKrklaMLbj1f4gR7L2vw8D3A
	 H/b+RxP+qqzGAf45MgIKCkq1LRRRGhm3h2dvAx/ZdhmuLJnH1jGVbATGbMH51ma2VC
	 Tr1fkPM9KwBLeC9f5RCiFB8dhUNGy1jyTdpiqLL9l/0JzaBek48/ZSdPxWniOjuKEw
	 bSyReZfvfWjYWvHy7Vhe7d+CwecSMmiG1rsrOi8WT7gAW5ZCMkIl2KmsC+UGCvYwbT
	 CQ7IAx8SoG9KJb34m/litZjfLNPzXj+fjmEhn5KkXWiCqkeefnAlHlJeZjLtCTlAZJ
	 OJ+Y8djzIq/bg==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id DF96B17E0114;
	Tue, 07 Jul 2026 18:15:10 +0200 (CEST)
Message-ID: <d075acd2-c873-489c-a0b6-dcdeeffcdbab@collabora.com>
Date: Tue, 7 Jul 2026 18:15:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 03/12] phy: phy-mtk-dp: Allow probing with devicetree
 match
To: sashiko-reviews@lists.linux.dev
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com,
 linux-phy@lists.infradead.org, conor+dt@kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, robh@kernel.org
References: <20260707154245.198361-1-angelogioacchino.delregno@collabora.com>
 <20260707154245.198361-4-angelogioacchino.delregno@collabora.com>
 <20260707160646.813771F000E9@smtp.kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260707160646.813771F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_091513_953112_B6DC8FB7 
X-CRM114-Status: GOOD (  26.03  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 7/7/26 18:06, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 3 potential issue(s) to consider:
> 
> New issues:
> - [High] Hardcoded `PHY_OFFSET` causes out-of-bounds register accesses or resource conflicts when the PHY is probed as a standalone devicetree node.
> - [High] Hardware registers are accessed in `mtk_dp_phy_configure()` while the PHY device is runtime-suspended, causing a system crash or silent loss of configuration.
> 
> Pre-existing issues:
> - [High] Dereferencing `dev->platform_data` before checking if it is NULL leads to a kernel crash.
> --
> 
> --- Patch [3]: [PATCH v3 03/12] phy: phy-mtk-dp: Allow probing with devicetree match ---
> commit 710ab5488fd0b66b2ea62388b977a4308f99a0c6
> Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> 
> phy: phy-mtk-dp: Allow probing with devicetree match
> 
> Make it possible to decouple the registration of the DisplayPort
> PHY driver from the DisplayPort IP driver by adding a devicetree
> match to probe the PHY. In order to retain compatibility with older
> devicetrees, the legacy code was moved in a mtk_dp_phy_legacy_probe()
> function.
> 
>> diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy-mtk-dp.c
>> index bf7b3a95e72d2..d241004e28286 100644
>> --- a/drivers/phy/mediatek/phy-mtk-dp.c
>> +++ b/drivers/phy/mediatek/phy-mtk-dp.c
> [ ... ]
>> +static int mtk_dp_phy_legacy_probe(struct platform_device *pdev, struct mtk_dp_phy *dp_phy)
>> +{
>> +	struct device *dev = &pdev->dev;
>> +	struct phy *phy;
>> +	int ret;
>> +
>> +	dp_phy->regmap = *(struct regmap **)dev->platform_data;
>> +	if (!dp_phy->regmap)
>> +		return dev_err_probe(dev, -EINVAL, "No platform data available\n");
> 
> [Severity: High]
> This is a pre-existing issue, but does casting and dereferencing
> dev->platform_data before checking if it is NULL lead to a kernel crash?
> 
> If the driver is bound to a device without platform data via sysfs, this
> unvalidated pointer will be dereferenced before the check for
> !dp_phy->regmap can execute.
> 
> [ ... ]
>>   static int mtk_dp_phy_probe(struct platform_device *pdev)
>>   {
>>   	struct device *dev = &pdev->dev;
> [ ... ]
>>   	dp_phy = devm_kzalloc(dev, sizeof(*dp_phy), GFP_KERNEL);
>>   	if (!dp_phy)
>>   		return -ENOMEM;
>>   
>> -	dp_phy->regmap = regs;
>> +	dp_phy->dev = dev;
>> +
>> +	/* If there's no devicetree, go for legacy pdev probe */
>> +	if (!dev->of_node)
>> +		return mtk_dp_phy_legacy_probe(pdev, dp_phy);
>> +
>> +	base = devm_platform_ioremap_resource(pdev, 0);
>> +	if (IS_ERR(base))
>> +		return PTR_ERR(base);
>> +
>> +	dp_phy->regmap = devm_regmap_init_mmio(dev, base, &mtk_dp_phy_regmap_cfg);
> 
> [Severity: High]
> Since the driver hardcodes PHY_OFFSET (0x1000) into its register macros like
> MTK_DP_PHY_DIG_PLL_CTL_1, will this independent regmap cause out-of-bounds
> accesses if the devicetree maps the PHY node to its true physical base?
> 
> If the devicetree instead sets the PHY node's reg to the parent DP IP base to
> counteract this offset, won't this cause devm_platform_ioremap_resource() to
> fail with -EBUSY due to resource conflicts between the PHY driver and the DP
> IP driver?
> 

All of that is exactly why there's a "legacy probe" and a "devicetree probe"
mechanism. It's either one or the other, and the legacy one is there only for
retro compatibility purposes.

If the devicetree sets the PHY node's reg to something unrelated this is not
going to work; it's obvious, and should not even be evaluated as an option.

Magic 8 ball case again?

>> +	if (IS_ERR(dp_phy->regmap))
>> +		return PTR_ERR(dp_phy->regmap);
>> +
>> +	ret = devm_pm_runtime_enable(dev);
>> +	if (ret)
>> +		return ret;
> 
> [Severity: High]
> By enabling runtime PM here, could mtk_dp_phy_configure() access hardware
> registers while the PHY device is runtime-suspended?
> 
> The consumer driver calls phy_configure() without calling phy_power_on().
> The PHY framework takes a runtime PM reference during .init and .reset,
> but explicitly drops it right before returning, and does not take a reference
> during .configure.
> 
> When the consumer calls phy_configure(), it writes directly to hardware via
> regmap_write() and regmap_update_bits() while the device PM usage count
> is zero. Can this crash the system or cause silent loss of configuration?
> 

That won't happen because as I explained before, the PHY needs to be powered
on with phy_power_on() which calls runtime_pm_get_sync().

In any case, an unpowered PHY will cause a silent loss of configuration with
no SError nor any other crash.

>> +
>>   	phy = devm_phy_create(dev, NULL, &mtk_dp_phy_dev_ops);
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

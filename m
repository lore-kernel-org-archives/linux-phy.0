Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2CA2C44501
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 16:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m80DuzuHo5l56/U6WKnIM4nISfgEw+bbgj+3J0Rvdco=; b=XP1kRu4s7tq1e5
	JL7QzF0wpDoeTAP03NTz8F9X07NsWhzp3wOs8n69bfFjj6CbjJL7ZjLHzRW1Iv9WshHlsabqwQHwq
	uUaAosnW4VWjxPsUyrnMXk3QNMQZVsqpeDwcAKolXINePqbzqSrNaD2+4jM5zLjbY5DGqWWU8ehAh
	+Oj9yh+0agvy6vbE/d7zRUq0L55kUDTlpeO5zMvJgQTs34rP/ejKU41W//+OGigpXq4S22IzjMdMj
	WpT8qvcemODsXpTZPL1n4Y7Rt4qNEgfFUetT3/FzQ7Rg4Mncx/saVMstZc9Fs8Xouuj4SnNGO8+9x
	FTFEHwFi1sD1GES6C4nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh8Ks-0000000FQa2-25zU;
	Tue, 07 Jul 2026 16:07:50 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh8Kq-0000000FQZS-0hUG
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 16:07:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783440466;
	bh=rswlpAED6vR9rN0AkFmT6GGYwiGSI3RJQYeK/PxCBJo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Q+MPiMDlLZHfWrfTuFiFDNuRsxSdKxsnk26mkphmGLuD95L7jp79zzd2dWgPb37nx
	 906xMpVVDcp2vfmF2N1VrKTg2e9fQ61Za1FKTv+H+th+2HmGWZRFTFTMSjavOKO384
	 y8VMi/Hv7uhoNH/yMVHJbyAecqptJT3OWGCEFP/TnzaqFsU1pEIy4uzqdNu63wwH/h
	 DeehDP2uoS2Qj2RzllmjsIe7enoAUhVmgAwZLikhQIgy4N7IvZGd6GvS+q3y17fgLP
	 uBIhaHHwmCdYQpaP07zPafmPLGt1SjqISR9Y1kPhoKTfwGHIhqswEiyUMkkvShFwdD
	 znfuqaWjaXIww==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C0D6317E0076;
	Tue, 07 Jul 2026 18:07:45 +0200 (CEST)
Message-ID: <f5382d15-f4d4-4276-93d5-f9bbb9071f01@collabora.com>
Date: Tue, 7 Jul 2026 18:07:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 04/12] phy: phy-mtk-dp: Migrate register offsets to SoC
 specific pdata
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, olteanv@gmail.com, dri-devel@lists.freedesktop.org,
 neil.armstrong@linaro.org, robh@kernel.org, devicetree@vger.kernel.org,
 vkoul@kernel.org, linux-phy@lists.infradead.org
References: <20260707154245.198361-1-angelogioacchino.delregno@collabora.com>
 <20260707154245.198361-5-angelogioacchino.delregno@collabora.com>
 <20260707155630.4F32C1F000E9@smtp.kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260707155630.4F32C1F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_090748_379226_9B951C35 
X-CRM114-Status: GOOD (  28.38  )
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

On 7/7/26 17:56, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 4 potential issue(s) to consider:
> 
> New issues:
> - [High] Register accesses are performed in `mtk_dp_phy_configure()` while the device's PM runtime state is suspended, risking system hangs.
> - [Medium] Missing validation of `device_get_match_data()` return value can lead to a NULL pointer dereference.
> - [Low] Invalid compound literal initialization for the 'off_dig_lane' array member causes a compilation error.
> 
> Pre-existing issues:
> - [High] The legacy probe path unconditionally dereferences `dev->platform_data` before validating that it is not NULL.
> --
> 
> --- Patch [4]: [PATCH v3 04/12] phy: phy-mtk-dp: Migrate register offsets to SoC specific pdata ---
> commit c49d221e57bf6a9816b6ce4e691a20564bc66896
> Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> 
> phy: phy-mtk-dp: Migrate register offsets to SoC specific pdata
> 
> In preparation for adding support for newer SoCs and for adding
> more capabilities to this driver in an efficient manner, migrate
> all of the hardcoded register offsets to SoC specific pdata and
> assign that for both DT and platform probing.
> 
>> diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy-mtk-dp.c
>> index d241004e28286..20974650d9409 100644
>> --- a/drivers/phy/mediatek/phy-mtk-dp.c
>> +++ b/drivers/phy/mediatek/phy-mtk-dp.c
>> @@ -111,9 +173,12 @@ static int mtk_dp_phy_init(struct phy *phy)
>>   static int mtk_dp_phy_configure(struct phy *phy, union phy_configure_opts *opts)
>>   {
>>   	struct mtk_dp_phy *dp_phy = phy_get_drvdata(phy);
>> +	const struct mtk_dp_phy_pdata *pdata = dp_phy->pdata;
>>   	u32 val;
>>   
>>   	if (opts->dp.set_rate) {
>> +		const u32 reg_bit_rate = pdata->regs_dig_glb[DP_PHYD_BIT_RATE];
>> +
> 
> [ ... ]
> 
>> -		regmap_write(dp_phy->regmap, MTK_DP_PHY_DIG_BIT_RATE, val);
>> +		regmap_write(dp_phy->regmap, pdata->off_dig_glb + reg_bit_rate, val);
>>   	}
>>   
>> -	regmap_update_bits(dp_phy->regmap, MTK_DP_PHY_DIG_PLL_CTL_1,
>> +	regmap_update_bits(dp_phy->regmap,
>> +			   pdata->off_dig_glb + pdata->regs_dig_glb[DP_PHYD_PLL_CTL_1],
>>   			   TPLL_SSC_EN, opts->dp.ssc ? TPLL_SSC_EN : 0);
> 
> [Severity: High]
> Since phy_configure() is not wrapped by phy_pm_runtime_get_sync() in the
> PHY core, and the consumer driver may not call phy_power_on() before this
> point, the PHY PM runtime usage counter might remain 0 during
> mtk_dp_phy_configure().
> 
> If the PHY power domain is turned off, will these unclocked regmap_write()
> and regmap_update_bits() calls cause the system to hang?
> 
> Should there be PM runtime protection around these register accesses?
> 

This PHY needs to be powered on with its full power_on sequence before being able
to be accessed, and anyway the user is taking care of this.
phy_power_on() will take care of calling phy_pm_runtime_get_sync() so there's
absolutely no problem with that.

>>   
>>   	return 0;
>>   }
> 
> [ ... ]
> 
>> @@ -170,12 +241,19 @@ static void mtk_dp_phy_legacy_remove_lookup(void *data)
>>   	phy_remove_lookup(phy, "dp", dev_name(dp_phy->dev));
>>   }
>>   
>> +static const struct mtk_dp_phy_pdata mt8195_dp_phy_data;
>> +
>>   static int mtk_dp_phy_legacy_probe(struct platform_device *pdev, struct mtk_dp_phy *dp_phy)
>>   {
>>   	struct device *dev = &pdev->dev;
>>   	struct phy *phy;
>>   	int ret;
>>   
>> +	/*
>> +	 * If legacy platform driver probe, assume this is MT8195 or compatible
>> +	 * with a devicetree that was not migrated to the new, proper bindings.
>> +	 */
>> +	dp_phy->pdata = &mt8195_dp_phy_data;
>>   	dp_phy->regmap = *(struct regmap **)dev->platform_data;
> 
> [Severity: High]
> This is a pre-existing issue, but dev->platform_data is unconditionally
> dereferenced here before it is checked for NULL.
> 
> If this legacy probe path is triggered without platform_data provided (for
> example, via the sysfs new_device interface), won't this cause an immediate
> NULL pointer dereference?
> 

The only other alternative is to remove the legacy probe and break compatibility
with older devicetrees, so, no, that's that.

>>   	if (!dp_phy->regmap)
>>   		return dev_err_probe(dev, -EINVAL, "No platform data available\n");
> 
> [ ... ]
> 
>> @@ -235,6 +313,8 @@ static int mtk_dp_phy_probe(struct platform_device *pdev)
>>   	if (ret)
>>   		return ret;
>>   
>> +	dp_phy->pdata = device_get_match_data(dev);
>> +
> 
> [Severity: Medium]
> If a user binds the mediatek-dp-phy driver via sysfs to a platform device
> that doesn't match the driver's compatible strings, device_get_match_data()
> will return NULL.
> 
> Does this need a NULL check before storing it in dp_phy->pdata?
> 
> Without validation, subsequent PHY operations like mtk_dp_phy_init() will
> dereference the NULL pointer and crash.

Does this really happen, anyway?!?!?!?!? :-)

> 
>>   	phy = devm_phy_create(dev, NULL, &mtk_dp_phy_dev_ops);
>>   	if (IS_ERR(phy))
>>   		return dev_err_probe(dev, PTR_ERR(phy),
> 
> [ ... ]
> 
>> @@ -249,8 +329,15 @@ static int mtk_dp_phy_probe(struct platform_device *pdev)
>>   	return 0;
>>   }
>>   
>> +static const struct mtk_dp_phy_pdata mt8195_dp_phy_data = {
>> +	.off_dig_glb = 0x1000,
>> +	.off_dig_lane = (const u16[]) { 0x1100, 0x1200, 0x1300, 0x1400 },
> 
> [Severity: Low]
> Is this compound literal initialization valid for an array struct member?
> 

It's valid. I see no warnings nor errors during build.

> Compiling this with GCC or Clang may throw an invalid initializer error
> because C99 requires array members to be initialized directly with
> brace-enclosed lists rather than compound literal expressions.
> 
>> +	.regs_dig_glb = mt8195_phy_dig_glb_regs,
>> +	.regs_dig_lane = mt8195_phy_dig_lane_regs,
>> +};
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

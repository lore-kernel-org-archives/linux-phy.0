Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29081C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 16:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=72zZW/0zW7qYnMEtvD33D2UR4fe+UiNbRUPvmhQSL7A=; b=G3CH3zMfln05Jx
	RfofJN3uHiPOIU+vjPVw2SaIJ4b+HqnjOcXBAH2TDFzYWptujQ5J2P/lhsKGYTAV2iZsfGvvxY2wD
	BS3qTpvxKrVkRpEqX1LIxQuUJbBG3DYip9B4t+HpS5LDFYEFZ9+3g9rBMUH8eFKYigArD1gI2vUP/
	qtZNokeK3o+yuGAGRSnPHJxSezWK7xoOJ9UVa09qi6oa6Cr9t3E4HODSPpIZHbPxLsPwfDIe9QIfj
	UHgVYWvGRtLJiwaOpMO3AU4T5vZOVhDtQ5gcXnLTTlTCNqswkrEf8BaYCxSuph/IJ3Tr6/j4RKB/z
	WRvpK7jSrB5lwKRmA/zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh8Tr-0000000FRPa-2p1J;
	Tue, 07 Jul 2026 16:17:07 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh8Tk-0000000FROW-0RPO
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 16:17:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783441018;
	bh=ndr39EnnDNyaVg4yg1bwCupKHr8Ke/XoGQGTOTChPKE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=PsIkaeUfrvGxQz+sgpc04CLNz5da5Y1PslciCx8uYjStfb3i9x3w3EQ5ylIUI/dMq
	 vl6wkPIsQjRN56V+acJLJw+Ly+J/gSkEJAb8aaCJcFb650saonn5htIRydBSMoYqd+
	 0BmrwBQqljHbajnnuY0uP/XQyjYKJ7Mi/nJ0Kgd8EmmPU/Es4gHuDqAyNEEi2SzYiL
	 JAQutMXtnkaoQbiguUkCzXYRIHqVaxjmzcNA0zK59rypR8cwdTNC2GdccBMbcu5QQj
	 JtA5a1V99CHVLiaw3VCJollvKxoz/ZqgPZPCBjv8C9kkl9RqCTEJfcMtUTWtmJydqa
	 j+WUi6cZGE6Uw==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E311017E0795;
	Tue, 07 Jul 2026 18:16:57 +0200 (CEST)
Message-ID: <69813d90-e419-4433-bc7a-948ee8345b40@collabora.com>
Date: Tue, 7 Jul 2026 18:16:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 12/12] phy: phy-mtk-dp: Add support for MT8196 eDP PHY
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, neil.armstrong@linaro.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, robh@kernel.org, olteanv@gmail.com,
 vkoul@kernel.org
References: <20260707154245.198361-1-angelogioacchino.delregno@collabora.com>
 <20260707154245.198361-13-angelogioacchino.delregno@collabora.com>
 <20260707160507.4759F1F000E9@smtp.kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260707160507.4759F1F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_091702_406923_3B91C8AF 
X-CRM114-Status: GOOD (  21.79  )
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

On 7/7/26 18:05, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [High] Missing NULL check for the result of `device_get_match_data(dev)` before dereferencing it.
> --
> 
> --- Patch [12]: [PATCH v3 12/12] phy: phy-mtk-dp: Add support for MT8196 eDP PHY ---
> commit 171cadff965a41b7aba8d81fbb60622f2a8e1a97
> Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> 
> phy: phy-mtk-dp: Add support for MT8196 eDP PHY
> 
> The MT8196 SoC features an updated PHY IP compared to the older
> ones, and there is one that is specific to Embedded DisplayPort.
> This commit adds support for the eDP PHY found in the MediaTek MT8196 SoC
> and all of its variants.
> 
>> diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy-mtk-dp.c
>> index f5aadc5fdc42c..5decc29c77cb3 100644
>> --- a/drivers/phy/mediatek/phy-mtk-dp.c
>> +++ b/drivers/phy/mediatek/phy-mtk-dp.c
> 
> [ ... ]
> 
>> @@ -805,8 +838,39 @@ static const struct mtk_dp_phy_pdata mt8195_dp_phy_data = {
>>   	},
>>   };
>>   
>> +static const struct mtk_dp_phy_pdata mt8196_edp_phy_data = {
>> +	.off_ana_glb = 0x400,
> 
> [ ... ]
> 
>> +	.driving_params = (const u32[]) {
>> +		[0] = 0,
>> +		[1] = 0,
>> +		[2] = 0,
>> +		[3] = MT8196_DRIVING_PARAM_3_DEFAULT,
>> +		[4] = MT8196_DRIVING_PARAM_4_DEFAULT,
>> +		[5] = MT8196_DRIVING_PARAM_5_DEFAULT,
>> +		[6] = MT8196_DRIVING_PARAM_6_DEFAULT,
>> +		[7] = MT8196_DRIVING_PARAM_7_DEFAULT,
>> +		[8] = MT8196_DRIVING_PARAM_8_DEFAULT
>> +	},
>> +};
>> +
>>   static const struct of_device_id mtk_dp_phy_of_match[] = {
>>   	{ .compatible = "mediatek,mt8195-dp-phy", .data = &mt8195_dp_phy_data },
>> +	{ .compatible = "mediatek,mt8196-edp-phy", .data = &mt8196_edp_phy_data },
>>   	{ /* sentinel */ }
>>   };
> 
> [Severity: High]
> If the driver is forcefully bound to a device via the sysfs bind interface,
> and the device has an of_node but its compatible string does not match any
> entry in the driver's of_match_table, device_get_match_data(dev) will return
> NULL.
> 
> This NULL pointer is stored in dp_phy->pdata:
> 
> drivers/phy/mediatek/phy-mtk-dp.c:mtk_dp_phy_probe() {
>      ...
> 	dp_phy->pdata = device_get_match_data(dev);
> 
> 	if (IS_REACHABLE(CONFIG_NVMEM)) {
> 		ret = mtk_dp_phy_get_calibration_data(dp_phy);
>      ...
> }
> 
> And is unconditionally dereferenced here:
> 
> drivers/phy/mediatek/phy-mtk-dp.c:mtk_dp_phy_get_default_cal_data() {
>      ...
> 	const struct mtk_dp_phy_pdata *pdata = dp_phy->pdata;
> 	int i;
> 
> 	dp_phy->ana_bias_r = pdata->ana_bias_r;
>      ...
> }
> 
> Should device_get_match_data() be checked for NULL before continuing in
> mtk_dp_phy_probe() to prevent a potential kernel panic?
> 

Oh just shut up, Sashiko! :-)

Too many paranoid checks proposed, are we trying to slow down Linux by a factor
of 1000 with all the defensive coding?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

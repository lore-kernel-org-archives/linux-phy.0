Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46C4FC43327
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 13:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JAjlY5KRsc8sldeBNdsXeIy7olqAihHjicyNKgnGLDw=; b=Q0GzrPzgDWLwvr
	gzViwJ7u53TqGxOorC6zFANlwBI0gIWH4tvySrXAdzGp4vye6Jg3FrBkcK3EHyfwjUJUPKbcuprFk
	bVd8fUX+F+WV/3eaV4u8KW+w5iGLEYrGeZuWNbMbOeURDpnh1jmHYbFgHv9WQ0WDhuEBvr14R4WUN
	XBI0N49w+QnpM0zMbNEsGSRl7Fe4plGWPWTSCIFkvL0VxsFnL0cHdxoVaPPZnavSO9P2S5lYsuvel
	VPHfieU/0aye5WwCnHDqnMuiUW6tzU5y9zyfoW9vYiT3RtXws7yvnZ3WT/Xdu1u+Z5fLOepXUdPuX
	uguRNFdil7xu7qRKRPXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weudR-0000000271V-034y;
	Wed, 01 Jul 2026 13:05:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weudQ-0000000271A-28FU
	for linux-phy@bombadil.infradead.org;
	Wed, 01 Jul 2026 13:05:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=3Cpt7TsRoCcxJjBZZ4ah7yiqqVbAX9WLdSh0EnP0FG0=; b=EIyzowdWcdh184yiVMlKn4aKEY
	ko4F/B7r+HHa5KHFboSddqGn12a2etPri5RWmsSHM7k8yrnIufDRWIPVhKqcW+AnXW9uKrYjw39+I
	QPP+GFAol9aspNU8xdnfw4Ms4g/s1AVcn5Ou1HroOVElbwor67sTZo2yMg2StJrdZkrKFec+vdENR
	XWsqFt73CGa6469ZuQVZymqt9eY8yhldciajriMzxk6H2yqwUtCGpNgmX207tZWY2mgXJ81mqu+3/
	7y5OKIc7Txtz6SL22o8gay9ba1qqN7nf5tOOfuvVPM8BjXu9tPtDYllvGC9rkC1ILPb0qzPqIRhYO
	EVE4DY2Q==;
Received: from bali.collaboradmins.com ([148.251.105.195])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1weudN-00000002nwi-1ylR
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 13:05:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782911143;
	bh=2TFsYZO4NySggQT0nmGGX5Zrgtoi302hD0gNKtxiFAg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=JJ+tc6u11BKVPiwEWEuktqapukuGl57AoCrzsbNrc5x11ylUWDBwbT1xqkuWLxr5z
	 apc8zzb+9cMdrxr2LYEy55AZ9341QjIMu72qrsRiUGlmZM8VeseHlNm9asv2GiPyMl
	 FSmoLiT8+JXdgqpwYozAFzKUHMv/CHfEXwmakUHBDqkPaqBmoHXSCcUL7xT8M+ENeJ
	 DwS7OskuMhi02YSACSKsrRq1WbQHntX4MC7B12FbOS/5Yl0/gBFRCr8jl/kRfH148o
	 CnIZjr5Hq68kvNu3ovtzoGXbGzRCElDkFlR6QfsHP8j/x6iJM+CcJ2QKwc7RWMqLhz
	 OyjM2UgG9fH+Q==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9BDDA17E0114;
	Wed,  1 Jul 2026 15:05:42 +0200 (CEST)
Message-ID: <92153ec5-f848-4a83-b470-c29ac974c7b9@collabora.com>
Date: Wed, 1 Jul 2026 15:05:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/12] phy: phy-mtk-dp: Rename regs to regmap in struct
 mtk_dp_phy
To: sashiko-reviews@lists.linux.dev
Cc: linux-phy@lists.infradead.org, neil.armstrong@linaro.org,
 dri-devel@lists.freedesktop.org, conor+dt@kernel.org, robh@kernel.org,
 olteanv@gmail.com, devicetree@vger.kernel.org, vkoul@kernel.org
References: <20260701122008.19509-1-angelogioacchino.delregno@collabora.com>
 <20260701122008.19509-3-angelogioacchino.delregno@collabora.com>
 <20260701122658.307E21F000E9@smtp.kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260701122658.307E21F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_140545_607979_32531368 
X-CRM114-Status: GOOD (  30.30  )
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

On 7/1/26 14:26, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> 
> Pre-existing issues:
> - [High] Missing NULL check for `dev->platform_data` before dereferencing.
> - [High] Missing `remove` callback to clean up PHY lookup leads to a memory leak and use-after-free.
> --
> 
> commit a1a96e429cf3345472aae1b06f6ffe5b31edee81
> Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> 
> phy: phy-mtk-dp: Rename regs to regmap in struct mtk_dp_phy
> 
> In preparation to perform further cleanups and to extend the driver to
> support more SoCs, rename the regs member to regmap to improve readability,
> as this is a common name across many kernel drivers for a struct regmap.
> 
>> diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy-mtk-dp.c
>> index d7024a1443358..bf7b3a95e72d2 100644
>> --- a/drivers/phy/mediatek/phy-mtk-dp.c
>> +++ b/drivers/phy/mediatek/phy-mtk-dp.c
> [ ... ]
>> @@ -176,7 +176,7 @@ static int mtk_dp_phy_probe(struct platform_device *pdev)
> 
> [Severity: High]
> This is a pre-existing issue, but is it possible for dev->platform_data to be
> NULL here?
> 
> Earlier in mtk_dp_phy_probe(), dev->platform_data is dereferenced directly
> without a check:
> 
> drivers/phy/mediatek/phy-mtk-dp.c:mtk_dp_phy_probe() {
> 	...
> 	struct regmap *regs;
> 
> 	regs = *(struct regmap **)dev->platform_data;
> 	if (!regs)
> 	...
> }
> 
> If the driver is manually bound via sysfs (or otherwise instantiated without
> platform data), dev->platform_data will be NULL.
> 
> Should the code validate that dev->platform_data is not NULL before
> dereferencing it to avoid a kernel panic?
> 

No, that's not crashing it, because there's a NULL check anyway just after that.

> [Severity: High]
> This isn't a bug introduced by this patch, but does this driver leak the
> phy_lookup struct and leave a dangling pointer if it gets unbound?
> 
> In mtk_dp_phy_probe(), when !dev->of_node is true, a lookup entry is
> registered:
> 
> drivers/phy/mediatek/phy-mtk-dp.c:mtk_dp_phy_probe() {
> 	...
> 	if (!dev->of_node)
> 		phy_create_lookup(phy, "dp", dev_name(dev));
> 
> 	return 0;
> }
> 
> However, mtk_dp_phy_driver does not have a .remove callback to call
> phy_remove_lookup():
> 
> drivers/phy/mediatek/phy-mtk-dp.c:
> static struct platform_driver mtk_dp_phy_driver = {
> 	.probe = mtk_dp_phy_probe,
> 	.driver = {
> 		.name = "mediatek-dp-phy",
> 	},
> };
> 
> If the driver is unbound, the phy_lookup struct is leaked and remains linked
> in the global phys list. Since the phy struct gets freed by the
> device-managed subsystem, subsequent device probes iterating the PHY lookup
> list would trigger a use-after-free.
> 
> Could a .remove callback be added to unregister the lookup and prevent this?
> 

That's right, but I didn't create this issue. I can fix that in a later commit
just for that, even though this code path is dead when using new style devicetree.

>>   	if (!dp_phy)
>>   		return -ENOMEM;
>>   
>> -	dp_phy->regs = regs;
>> +	dp_phy->regmap = regs;
>>   	phy = devm_phy_create(dev, NULL, &mtk_dp_phy_dev_ops);
>>   	if (IS_ERR(phy))
>>   		return dev_err_probe(dev, PTR_ERR(phy),
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

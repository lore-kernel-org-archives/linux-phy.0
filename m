Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5FBDCD8CA7
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 11:32:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2i9zh1z0nxl0X0UeaBhuV9FzwL6Ypj6vbx1sLeAq8Z4=; b=pRreU17woEay/P
	oQUdc9/0cWO8n4hOAwqJRe7PQ8ipSgQOTnoodkkB3/9q4n8PnlJ4iXpcbGXSnf5tj4nm041nJxITu
	V5+21vxC5vPmJV3gWP6XbBW2junG6ZyC2cpltM0UutlFGFZlVnPIah5he2mOEEEVFZyPSAgK3Ab2n
	+eTpJFOgPUnb4arhvdZAFKQ13Upc/njN+WogqrpIfAit08+4mfALIWPDntjonItLRjvfpqoVwPu3w
	d9ijCWnnIe/5DyDWcbmxIpxMcqZB2I6Ty56lHrVQ1ZnmGBdiXwOL5blgL8LgcTIVPJ2+F3pBMkDG+
	7I1HPrDbhPktU9oB4UGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWYDl-00000003R0U-1KAA;
	Mon, 08 Jun 2026 11:32:45 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWYDi-00000003QzT-1Gmp
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 11:32:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1780918360;
	bh=8yu7h05b28jqK4lpkHvljCNq7zo3omvpfhBiUGzenXg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=SqHjutVZsOWGApanDHQ9DUzLg8HWz+tcyY0LibQT/XWeFa/HzCC8JdVL1ahIgX06O
	 5O3jG1SOrZ9dmTTByXWtnPq3yPSHFhn5rPFnz6bNI/LLCybPYRwxHN15pscoaGMilk
	 +bGfat26HwZNfgWWeV6M8VS0OZrTHLkPArB+xREf/4yLMHnBvhKNVwLF1gY6ePrM05
	 Iu0XNvPSlzPbbh3TXUA6/+xshJ9uR2y5/gqZLk/77qW5Y4oyOW1dKPd2eTxQnH1D64
	 u06vpG5g5zU3PVjeE+8aj3PZoXVafpf2r+E7tpk8XvNmL/36bCo/datMTWhdfCNM4y
	 /4HWoOMnnZmNQ==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id CE94B17E04CA;
	Mon,  8 Jun 2026 13:32:39 +0200 (CEST)
Message-ID: <a4179d92-19b8-422e-938a-395f372fcb26@collabora.com>
Date: Mon, 8 Jun 2026 13:32:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 05/10] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
To: sashiko-reviews@lists.linux.dev
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org,
 neil.armstrong@linaro.org, olteanv@gmail.com
References: <20260608100949.36309-6-angelogioacchino.delregno@collabora.com>
 <20260608105406.C9E051F00893@smtp.kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260608105406.C9E051F00893@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_043242_490976_2A81564E 
X-CRM114-Status: GOOD (  20.02  )
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

On 6/8/26 12:54, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [High] The driver blindly casts `dev->parent` to a `struct spmi_device *` without validating the parent device type, leading to a wild pointer dereference on malformed device trees.
> --
> 
> commit b6b479ab20e3f2d7a7247657ca4bb0a5a70fc75a
> Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> 
> nvmem: qcom-spmi-sdam: Migrate to devm_spmi_subdevice_alloc_and_add()
> 
> This commit migrates the SDAM driver to use devm_spmi_subdevice_alloc_and_add().
> It registers a new SPMI sub-device for SDAM and initializes a regmap with its
> specific base address retrieved from the devicetree.
> 
>> diff --git a/drivers/nvmem/qcom-spmi-sdam.c b/drivers/nvmem/qcom-spmi-sdam.c
>> index 4f1cca6eab71e..4974105dd9632 100644
>> --- a/drivers/nvmem/qcom-spmi-sdam.c
>> +++ b/drivers/nvmem/qcom-spmi-sdam.c
> [ ... ]
>> @@ -110,8 +110,17 @@ static int sdam_write(void *priv, unsigned int offset, void *val,
>>   
>>   static int sdam_probe(struct platform_device *pdev)
>>   {
> [ ... ]
>>   	struct sdam_chip *sdam;
>>   	struct nvmem_device *nvmem;
>> +	struct spmi_device *sparent;
>> +	struct spmi_subdevice *sub_sdev;
>> +	struct device *dev = &pdev->dev;
>>   	unsigned int val;
>>   	int rc;
>>   
>> @@ -119,19 +128,23 @@ static int sdam_probe(struct platform_device *pdev)
>>   	if (!sdam)
>>   		return -ENOMEM;
>>   
>> -	sdam->regmap = dev_get_regmap(pdev->dev.parent, NULL);
>> -	if (!sdam->regmap) {
>> -		dev_err(&pdev->dev, "Failed to get regmap handle\n");
>> -		return -ENXIO;
>> -	}
>> +	sparent = to_spmi_device(dev->parent);
>> +	sub_sdev = devm_spmi_subdevice_alloc_and_add(dev, sparent);
> 
> [Severity: High]
> Does this code assume that the parent device is always a valid SPMI device?
> 

Yes - and that's ok, because this device cannot exist outside of SPMI and will
never be registered on its own without a SPMI parent.

Overcautious coding bloats drivers for no reason.

> If the device tree is malformed and this node is placed under a simple-bus
> instead of an SPMI PMIC, the parent device will not be an spmi_device.
> Because to_spmi_device() uses container_of(), this will result in a bogus
> pointer.
> 
> When that bogus pointer is passed into devm_spmi_subdevice_alloc_and_add(),
> does it cause a wild pointer dereference when accessing sparent->ctrl or
> sparent->usid?
> 
> Prior to this patch, dev_get_regmap(pdev->dev.parent, NULL) would gracefully
> return NULL for malformed hierarchies, but this change appears to introduce
> a potential kernel panic.
> 
>> +	if (IS_ERR(sub_sdev))
>> +		return PTR_ERR(sub_sdev);
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

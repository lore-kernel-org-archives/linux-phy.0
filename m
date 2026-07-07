Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C63C7C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 11:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iDu822gFI58Gg15B+f7uVpJ6w0xYgmvY5ssi5QuhfP0=; b=BUXf5iH1aSxcKJ
	et5hxkvRmJTJUpnKJJpmU9f2OK/28d0/cn6l4C7yPMq6dDalmHkfOODdjZk1jpn26y/cWDDyZlBPZ
	IVPBE6DYexH6I8dJmoLuHkzbZ/TrpLELRaf6r2HcfiztnP9kqfsmQeZZSHnnCR6m9Mm/lJ3Wzc+G6
	ohJ4v+0lmSYsf9/zihrpNog9WkCHS2ML7wM4n7Hsf7icd4DO6MX6zpue3ojN/9yMkmcFnNUwmAAIN
	dOAsUrwMP5ardECuTz3jyBC0wtChtvzITKf/JJRfqf4Wb2MS7roGSMIQF5WVF8YrNU7IM4Q6C+eWe
	Od36JzRSNAia26vqwd8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh4SQ-0000000EuO1-29TF;
	Tue, 07 Jul 2026 11:59:22 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh4SO-0000000EuNN-06AW
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 11:59:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783425558;
	bh=PWdlmJ96Ws5+1lzRRG0wq0bRcbZIhLEF68z4ZD7AisM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=lgfEtItuGXkiITBfLUUWoaJ66xkeEm9pNME5fiBfkbWGDEhJE0CajEupwPPCsv2YQ
	 IhFWDoSOPAYC/CT/qZShP2YgCdHayehceuN2hXHwylAK+kwWpjA3iLzEHVdkBU9kcU
	 Ood7Iy0Ot2vJAOtBzWgvOn/XZXgZJWkXGQ77V0BVrwOVWzJh3uDbTex+MrB/QZJ/UG
	 nsRUmW6GsTxEPGOrurqTmrjEdFucU6eEn82Q2ZgDZfH9AXrgbdmhCshdm+3DGT4Nmc
	 k1oN4r1xpL8g3O5uUKtcA7ONz6MiT1fC6RbXHJgzrBUTtzFyNjkd9ZJmbS9PA1hdMs
	 Q0s4cuPj5n0ow==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D2A0617E0713;
	Tue, 07 Jul 2026 13:59:17 +0200 (CEST)
Message-ID: <f1877e27-cc72-44ce-9ddc-bf3d89932655@collabora.com>
Date: Tue, 7 Jul 2026 13:59:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 05/12] spmi: Implement spmi_subdevice_alloc_and_add()
 and devm variant
To: sashiko-reviews@lists.linux.dev
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com,
 linux-phy@lists.infradead.org
References: <20260707111829.180158-1-angelogioacchino.delregno@collabora.com>
 <20260707111829.180158-6-angelogioacchino.delregno@collabora.com>
 <20260707113101.6CEB81F000E9@smtp.kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260707113101.6CEB81F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_045920_702690_626F3569 
X-CRM114-Status: GOOD (  16.22  )
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

On 7/7/26 13:31, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [High] Combining device allocation and addition into a single `alloc_and_add` function breaks device model configuration semantics for `spmi_bus_type` devices.
> --
> 
> --- Patch [5]: [PATCH v12 05/12] spmi: Implement spmi_subdevice_alloc_and_add() and devm variant ---
> commit 07c884decc8feb83970dc7a2fe54a4fbf80be610
> Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> 
> spmi: Implement spmi_subdevice_alloc_and_add() and devm variant
> 
> This patch adds new functions to manage sub-devices of an SPMI device,
> including spmi_subdevice_alloc_and_add() and spmi_subdevice_remove().
> These are intended to support complex PMICs that feature multiple
> sub-devices addressable via SPMI register ranges.
> 
>> diff --git a/drivers/spmi/spmi.c b/drivers/spmi/spmi.c
>> index 4050f3614dab8..e218c81405458 100644
>> --- a/drivers/spmi/spmi.c
>> +++ b/drivers/spmi/spmi.c
> 
> [ ... ]
> 
>> +struct spmi_subdevice *spmi_subdevice_alloc_and_add(struct spmi_device *sparent)
>> +{
>> +	struct spmi_subdevice *sub_sdev;
>> +	struct spmi_device *sdev;
>> +	int ret;
> 
> [ ... ]
> 
>> +	device_initialize(&sdev->dev);
>> +	sdev->dev.parent = &sparent->dev;
>> +	sdev->dev.bus = &spmi_bus_type;
>> +	sdev->dev.type = &spmi_subdev_type;
>> +
>> +	ret = dev_set_name(&sdev->dev, "%u-%02x.%u.auto",
>> +			   sdev->ctrl->nr, sdev->usid, sub_sdev->devid);
>> +	if (ret)
>> +		goto err_put_dev;
>> +
>> +	ret = device_add(&sdev->dev);
> 
> [Severity: High]
> Does combining allocation and registration into a single function prevent
> callers from properly configuring device properties?
> 
> Since device_add() is called immediately here, the driver core executes bus
> matching and broadcasts the KOBJ_ADD uevent before the caller receives the
> device pointer. This leaves no window to set properties like of_node or
> fwnode.

It's done for simplicity of API usage, and no properties need to be set during
registration of the SPMI subdevice.

> 
> Will this cause the uevent to be sent without a MODALIAS, breaking userspace
> module autoloading and automatic driver probing for these subdevices?
> 

No, and I'm not changing any more single bit of this series, because this series
now is completely fine.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

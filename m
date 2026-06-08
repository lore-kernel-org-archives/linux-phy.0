Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 827F6CD8C9D
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 11:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bjNNKcO0aKIl0D5v1U9KyZt9CvX8vhQfjt42aLAvsMk=; b=t5R6bKatpgvwkn
	6A37jO4zAlQ3YdjyO6fjmvUQMg87pRVRLDWKpKv58ixrVOLnP+C3hAAwIGvzybn4glCUgH4NcDDqM
	DfEOEw8zdDUQgsRDW1Q2FFSNQ2ZOQaOgCJmmcjZm/NfN3XvOcaQpZHIMEzkAE/XSy1bF0L+d42P/S
	k97aocnaqoHLdsxLr9Py62Ik4vCjshqvEIzTJH0OEdIzIK5bvAP48eAF/d/y7PNdUrDYmbY2GhUI5
	7/UpPYix3NcdRZALjZjlX14kiQVHYdWX7s8kgRpztMwEhQPFggvxMNPsv459mcfM6uFfXIMhtdeP4
	kS9a9RBG/xVUWoQ8OTZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWYDk-00000003R09-15hd;
	Mon, 08 Jun 2026 11:32:44 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWYDh-00000003QzH-2IxZ
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 11:32:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1780918359;
	bh=IZdghrqhFdxnYA5CPzg29LgX4lUnk55Tdl8rkFADR94=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ELcQZVEjc94EsnlcUvSCD6unSf6IjKfI4QQwYJX1lmPn1U1ENNXVmpmOKmpuwwNsH
	 8ckBBazVvxESf+1f3BL3eUlEux/gPwo/3/VdbUCgjs6DG4ZjH+2H5yfwUDLOntfy72
	 k3jw2hlKUX0eormt814ZyVutqDnErx5zXTaUfOcijI3vozzMS9mW5djrX1xgUm2djV
	 2mfjX4qQ0Dk6yPj7/2dBtaUZyEsmJQnwxQ5gKWU9Rbtc0UhpHa3/9RV1GcMbB4WLSN
	 40AutIAoYUedLxeV0hv2PlI4z8rAaEeGG6r+u0c1vwf9e9y9CAM7KAZEt4QGusvdfo
	 l3sDhPwqtt+XA==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 2BA8517E0416;
	Mon,  8 Jun 2026 13:32:39 +0200 (CEST)
Message-ID: <321dab9d-26fa-4ea8-97b9-9941f0c9fc3d@collabora.com>
Date: Mon, 8 Jun 2026 13:32:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 08/10] misc: qcom-coincell: Migrate to
 devm_spmi_subdevice_alloc_and_add()
To: sashiko-reviews@lists.linux.dev
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com,
 linux-phy@lists.infradead.org
References: <20260608100949.36309-9-angelogioacchino.delregno@collabora.com>
 <20260608110945.608BD1F00893@smtp.kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260608110945.608BD1F00893@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_043241_747380_27159ACF 
X-CRM114-Status: GOOD (  23.31  )
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

On 6/8/26 13:09, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [High] Unsafe downcast of `dev->parent` to `struct spmi_device` causing out-of-bounds read and kernel panic
> --
> 
> commit eb0fe105cd38bff6269804925b90232e1c422522
> Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> 
> misc: qcom-coincell: Migrate to devm_spmi_subdevice_alloc_and_add()
> 
> This commit updates the qcom-coincell driver to use a dedicated SPMI
> sub-device instead of fetching the regmap from its parent. It creates the
> sub-device using the parent device and initializes a specific regmap to
> handle the base address offsets automatically.
> 
>> diff --git a/drivers/misc/qcom-coincell.c b/drivers/misc/qcom-coincell.c
>> index 3c57f74291476..b0904f441300c 100644
>> --- a/drivers/misc/qcom-coincell.c
>> +++ b/drivers/misc/qcom-coincell.c
>> @@ -71,37 +71,55 @@ static int qcom_coincell_probe(struct platform_device *pdev)
> [ ... ]
>> -	rc = of_property_read_u32(node, "reg", &chgr.base_addr);
>> +	rc = device_property_read_u32(dev, "reg", &qcom_coincell_regmap_config.reg_base);
>>   	if (rc)
>>   		return rc;
>>   
>> +	sparent = to_spmi_device(dev->parent);
>> +	sub_sdev = devm_spmi_subdevice_alloc_and_add(dev, sparent);
> 
> [Severity: High]
> Could this lead to a panic if the parent device is not actually an SPMI
> device?
> 
> If this driver is bound to a device whose parent is a regular platform
> device (for example, via a malformed device tree or a manual sysfs bind),
> dev->parent will not point to a valid spmi_device.
> 

This device cannot exist outside of SPMI and will never be registered on its
own without a SPMI parent.

Overcautious coding bloats drivers for no reason, so this is fine.

> Because to_spmi_device() is a container_of cast, it will blindly cast the
> parent device. When passed to devm_spmi_subdevice_alloc_and_add(), the
> underlying spmi_subdevice_alloc_and_add() function reads sparent->ctrl:
> 
> drivers/spmi/spmi.c:spmi_subdevice_alloc_and_add() {
>      ...
>      sdev->ctrl = sparent->ctrl;
>      ...
> }
> 
> Since the parent is actually a platform_device, this ends up reading the
> memory offset corresponding to platform_dma_mask instead of a valid ctrl
> pointer. Later regmap initialization will dereference this invalid pointer,
> causing an out-of-bounds read.
> 
> The previous dev_get_regmap() approach avoided this by safely searching the
> parent's devres list without relying on a structural cast. Is there a way to
> verify the parent device type before casting?
> 
>> +	if (IS_ERR(sub_sdev))
>> +		return PTR_ERR(sub_sdev);
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

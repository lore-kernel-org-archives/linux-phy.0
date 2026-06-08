Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79E17CD8C9F
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 11:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YAJGouU0U1ha/OY02yRR0vCwcdcrHtMcyTkYHeSiLu4=; b=V/HjfmwGWAoqCz
	pL0ucKjvfdZYkR9BUFiwJUumkyInzGeYxG6UwCmI0QoM6UnB5txm02lUDG1nV+BGgsJzeA3P7tGTU
	PcUkPXtY/Hf9ZBcObrU6oQ+4G0H2nXscNZut3zBMDLYKxQ8ytJi4YcuZGxNJbwP0n7owAsBXj1umb
	8jO/0yNRJlu+oft6eBnMyWa95kUsh8/KqPT6pQTYfmcKoFsWhnLfv0/rGypgekqpXiDvAt89jIvJH
	024zMCC7hv5IZSUN1shcxtyY4ATt2GmObXf8WJQWLCocL7FG250FtvQZXMQKSo3NWFTzUC4s9ztzz
	PTxSsvSGWhBnOt+eJH8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWY8t-00000003QS4-0IMO;
	Mon, 08 Jun 2026 11:27:43 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWY8p-00000003QRH-3N58
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 11:27:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1780918056;
	bh=BVgNL2Scc7HA0dTUomAYlWHRe68aCERMc+uShc4P6Pk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=LD7WP7wxbqQqdESTfN1oyzWZIRb1S7gsJXj7ynpmz2QNSGdJefeqku3XgjPhGxOyo
	 0eY2TnDjcCntL7l092BCMwN7krXhQ2sW8uuBNCD0MQVve/LOjY2lciOcR+4eVeRxTc
	 8onh/qjxUn05AHY15XEJ7bH3lhOmYN/RXgWiTyDuRcUyib1oA53iv14uaAUYqqtjw2
	 T0UsFT7AulfHQpJnxYOmBa4PDJ5LN4hwVE5y/5Yl9J1fvXGxEDctBtk6bgRbUYUsfX
	 SMqhSNtqURF7fR95v/VdvpUHSi5w3+TE3nc7dxRw1NKYGJv5aJTJV+TD9k+gsmtS/0
	 MncFLSoSkf6Fg==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7899217E04BA;
	Mon,  8 Jun 2026 13:27:36 +0200 (CEST)
Message-ID: <c3bb3004-72b0-4559-847c-0ad0353f239e@collabora.com>
Date: Mon, 8 Jun 2026 13:27:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 04/10] spmi: Implement spmi_subdevice_alloc_and_add()
 and devm variant
To: Stephen Boyd <sboyd@kernel.org>, Jonathan Cameron <jic23@kernel.org>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, olteanv@gmail.com,
 neil.armstrong@linaro.org, sashiko-reviews@lists.linux.dev
References: <20260608100949.36309-5-angelogioacchino.delregno@collabora.com>
 <20260608104323.3B15D1F00893@smtp.kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260608104323.3B15D1F00893@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_042740_002512_61748124 
X-CRM114-Status: GOOD (  15.23  )
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

On 6/8/26 12:43, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Low] dev_set_name() uses the '%d' format specifier for a variable of type 'unsigned int', which will cause a -Wformat compiler warning.
> --
> 
> commit 35ac69140b9b2d8a3b0e2aa01fe5f5ac3ffe4d02
> Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> 
> spmi: Implement spmi_subdevice_alloc_and_add() and devm variant
> 
> This commit introduces functions for managing sub-devices of an SPMI
> device, including spmi_subdevice_alloc_and_add() and its devm
> variant. These allow complex PMICs with multiple sub-devices to be
> properly modeled and managed via the SPMI bus.
> 
>> diff --git a/drivers/spmi/spmi.c b/drivers/spmi/spmi.c
>> index 91a40ea8031ad..7945cacf6d655 100644
>> --- a/drivers/spmi/spmi.c
>> +++ b/drivers/spmi/spmi.c
> 
> [ ... ]
> 
>> @@ -428,6 +454,58 @@ struct spmi_device *spmi_device_alloc(struct spmi_controller *ctrl)
>>   }
>>   EXPORT_SYMBOL_GPL(spmi_device_alloc);
>>   
>> +/**
>> + * spmi_subdevice_alloc_and_add(): Allocate and add a new SPMI sub-device
>> + * @sparent:	SPMI parent device with previously registered SPMI controller
>> + *
>> + * Returns:
>> + * Pointer to newly allocated SPMI sub-device for success or error pointer.
>> + */
>> +struct spmi_subdevice *spmi_subdevice_alloc_and_add(struct spmi_device *sparent)
>> +{
>> +	struct spmi_subdevice *sub_sdev;
>> +	struct spmi_device *sdev;
>> +	int ret;
>> +
>> +	sub_sdev = kzalloc(sizeof(*sub_sdev), GFP_KERNEL);
>> +	if (!sub_sdev)
>> +		return ERR_PTR(-ENOMEM);
>> +
>> +	sdev = &sub_sdev->sdev;
>> +	sdev->ctrl = sparent->ctrl;
>> +	sdev->usid = sparent->usid;
>> +
>> +	ret = ida_alloc(&spmi_subdevice_ida, GFP_KERNEL);
>> +	if (ret < 0) {
>> +		kfree(sub_sdev);
>> +		return ERR_PTR(ret);
>> +	}
>> +	sub_sdev->devid = ret;
>> +
>> +	device_initialize(&sdev->dev);
>> +	sdev->dev.parent = &sparent->dev;
>> +	sdev->dev.bus = &spmi_bus_type;
>> +	sdev->dev.type = &spmi_subdev_type;
>> +
>> +	ret = dev_set_name(&sdev->dev, "%u-%02x.%d.auto",
>> +			   sdev->ctrl->nr, sdev->usid, sub_sdev->devid);
> 
> [Severity: Low]
> This isn't a bug, but should this use %u instead of %d for the format
> specifier? The devid field in struct spmi_subdevice is defined as an
> unsigned int, which can cause a -Wformat compiler warning here.
> 

I wonder if this can be fixed while applying please?

Thanks,
Angelo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

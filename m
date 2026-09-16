Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D024C88E77
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 11:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XPwKz7TWr8LhBPsgEOoOV5fiKqryFMziM+k/gjzP30g=; b=huh1ysZ/0rSLmx
	ZfD9B+JFSccjhAorCxI6rMGY5hV2AW13vsDmjouQftK/4NQQwRBK8y4LhJojwLHhILtQrrkWrhXb7
	88PFg4U1OZX+7h244or/ySmhpUsUfdkqcO42qvl1F2w4gsdJ/kRKWj8GkGMNAkUQfRkZtb1saYPNY
	C1e1N1JzPxyqQF6BlxMSBo3KTbnHmV//YG9r27AbSz0TjKi2q3DqvdOi8mqmJWbRi7xTcBljsCPin
	v4JlSXiM15PPgHcJrz7tmySq6P+YrV4Du2AthkqF0UzeK7RvhiMDFxegtpMHilowaKjzp5lF2y8bM
	XMCqsigw7BBNPKkKiSvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6nux-000000095Z6-3xIa;
	Wed, 16 Sep 2026 11:35:11 +0000
Received: from mail-ej2-x10.google.com ([2a00:1450:4864:34::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6nuu-000000095YN-2dhh
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 11:35:09 +0000
Received: by mail-ej2-x10.google.com with SMTP id a640c23a62f3a-c29d33431c8so116417366b.2
        for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 04:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789558506; x=1790163306; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=I+ON5LylyLSRvB3Oy5FN+PptZ1PxOVJXbkytbHhMasY=;
        b=Zo42xbPRwPjBZkxyOV0e/dHRVQTUSZPRpmtxRC74U0yPXJjK/PwZhkzsJbBY+vg+Ra
         FR662u90vPmT9WhcuncULByML4GWGwc7q9P8gIgWfDsvGfm970wVtSvcC22D3bcHXi7/
         wcgfuH1M3CeuKU/bMbGfQtCtb5/lrxDUrYXUbM7ylDgYZu7ZtO89VYi/zkX/uj9c1iBE
         cfTWVGwebgFo3etnC5LyGo17c7T0Tz/2U52VkxRFQ3fy+C+Q3DrwNzFca3IHduAtFb8Q
         /6eyKb2rJlcHFiKBLHLRRSGMvnZINqyBCZcgYYITOyihzyk71DRWrNrjB3r9zB2a87jk
         W6Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789558506; x=1790163306;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=I+ON5LylyLSRvB3Oy5FN+PptZ1PxOVJXbkytbHhMasY=;
        b=Y9pqQaxNI+JxYY4x79RHTfwhz83hSssVVlh2J5cGMRoyObvGpeFq8Dhcc/3mcRp62e
         7OY2FfAvv08biX/mMdxB1OF4X1gZh57eoqgj3rSWySPk2r1GT9J7Ogt8wr9vp30NfvEh
         LwtKwCSGeLZoRay89/d3X/IP01UEnhaWRYWkBUbX9UdzGealQkfOIR9FFV8tWU1b51o8
         2xq1fc/cUfhf2kwuBWawRMeY9Due12yVJe1Z4ev3RLgbzakuqQKAyNTFwsLs8iO3GKgt
         adJtf5tXPndx4r+quPycwh4jjCS/GQYVwwTJOASoVg5vR9G6XQWRfPhJCmeBGDGv4oDF
         0Dmg==
X-Forwarded-Encrypted: i=1; AKwUvBxbSOPyytEUZVXxo0IrzDR4mJ7nlc2wDBlOFKaqYQhQJg2RMq8gJyuCtuk3bvAkwDWTbFoL2oJrQZ8=@lists.infradead.org
X-Gm-Message-State: AFuF++msNOQCIIyFyExfhy/nkPCS/t4/IWsWfN8Lwvq9IQBDF6BIRgmt
	Kiwg0bdLcDMStCqku4heW+msx3JLWNF72G4qb4xxrU2jPu7xzkEgBWL7sm1LmLA60A8=
X-Gm-Gg: AYBFou2Hm+SOvvimGXypRoJ+6X3tlsaCyVyHD2k+mjXdal19aUYNK/WdcIw7DOVz+Nw
	C8srQb9zfDgnZVw2PSaKa1DzGpgIvbSTodAGFIGaKv0reCByfekYXyz0OZS7O8ObFQhWoiZnyGP
	J/Ubh5MqdNO9m7uKyyzdp75zQn+d22c0654ZTN8tvPIA/LRv2nhP5xrryygWyMrR2txTNXjB64i
	rB5IhYi5nWTR6bmc9fGpOZlum18lmH+wCw546bthFiu3zk84ZRHn05BrWereGyYmYuL5lBKnL9h
	jjiOBM+UPL998jUZ8i98Ixi0ZOWj+5Nbirs/0Ex+fkye7T0BQEBRSJgc9isOy5ESKzlZJ8D/XKK
	O4V1dnWNBljxoUHYrbAnpEJB425KOFZ5q29S03kAHhzem9udfOmb2X8KkBHZIZy2DhEn55ELQ69
	l8zWZTP18XXj0YC7H69vopW9mIQMCx5RmvOnJZaj2sQVJPpxLNEJoJRwK2pScJkcrpm7BlnsoVH
	KkX2FRaJqjlQOH9SCcNl4o=
X-Received: by 2002:a17:907:d0b:b0:c25:c54d:d1a2 with SMTP id a640c23a62f3a-c29e5236f43mr142950366b.18.1789558506076;
        Wed, 16 Sep 2026 04:35:06 -0700 (PDT)
Received: from [192.168.0.167] ([109.76.116.194])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c29de0850ccsm117462366b.8.2026.09.16.04.35.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2026 04:35:05 -0700 (PDT)
Message-ID: <92a4b3dd-4661-4a4e-90fd-83249acf0dbe@linaro.org>
Date: Wed, 16 Sep 2026 12:35:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v17 2/5] phy: core: Add phy_get_by_of_node()
To: sashiko-reviews@lists.linux.dev
Cc: vkoul@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 media-ci@linuxtv.org, robh@kernel.org, linux-clk@vger.kernel.org,
 olteanv@gmail.com
References: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-0-e2197a3e2551@linaro.org>
 <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-2-e2197a3e2551@linaro.org>
 <20260906143127.2B5691F00A3A@smtp.kernel.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20260906143127.2B5691F00A3A@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_043508_709051_E631E8D9 
X-CRM114-Status: GOOD (  20.54  )
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

On 06/09/2026 15:31, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Medium] phy_get_by_of_node() misses the legacy usb-nop-xceiv workaround, causing infinite -EPROBE_DEFER loops.
> --
> 
> commit a021b561c8a9bfb36addca720d49ea935b34a131
> Author: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 
> phy: core: Add phy_get_by_of_node()
> 
> This commit introduces phy_get_by_of_node() to allow looking up a phy
> directly by its device node. It refactors the existing lookup logic in
> _of_phy_get() into a new shared helper function called
> _of_phy_get_with_args().
> 
>> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
>> index 89addd732bff3..490a7cde6d40a 100644
>> --- a/drivers/phy/phy-core.c
>> +++ b/drivers/phy/phy-core.c
> [ ... ]
>> @@ -1001,6 +1015,41 @@ struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
>>   }
>>   EXPORT_SYMBOL_GPL(devm_of_phy_get_by_index);
>>   
>> +/**
>> + * phy_get_by_of_node() - lookup and obtain a reference to a phy by device_node
>> + * @np: node containing the phy
>> + *
>> + * Returns the phy associated with the device node or ERR_PTR.
>> + */
>> +struct phy *phy_get_by_of_node(struct device_node *np)
>> +{
>> +	struct of_phandle_args args = { .np = np, .args_count = 0 };
>> +	struct phy *phy;
>> +
>> +	if (!np)
>> +		return ERR_PTR(-EINVAL);
>> +
>> +	mutex_lock(&phy_provider_mutex);
>> +
>> +	phy = _of_phy_get_with_args(&args);
> 
> [Severity: Medium]
> Does this new API miss the legacy compatibility check for usb-nop-xceiv?
> 
> In _of_phy_get(), there is a workaround that returns -ENODEV if the
> device is compatible with "usb-nop-xceiv". Because this workaround was
> left in _of_phy_get() rather than being relocated into the shared
> _of_phy_get_with_args() helper, phy_get_by_of_node() bypasses it
> completely.
> 
> Could this cause drivers looking up a "usb-nop-xceiv" node via this new
> API to receive -EPROBE_DEFER instead of -ENODEV, leading to infinite
> probe deferrals and breaking fallback to the usb-phy subsystem?

I don't agree with this.

The compat string workaround should live where it is used, not be pushed 
down into generic layers where it is not.

No media-graph lookup needs this hack.
> 
>> +
>> +	if (IS_ERR(phy))
>> +		goto out_unlock;
>> +
>> +	if (!try_module_get(phy->ops->owner)) {
>> +		phy = ERR_PTR(-EPROBE_DEFER);
>> +		goto out_unlock;
>> +	}
>> +
>> +	get_device(&phy->dev);
>> +
>> +out_unlock:
>> +	mutex_unlock(&phy_provider_mutex);
>> +
>> +	return phy;
>> +}
>> +EXPORT_SYMBOL_GPL(phy_get_by_of_node);
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55936C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 11:57:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+FqxWLLSBMLvuViqlcWxs8KKAV2eXKcp383gUTRX6jg=; b=Ttn/upptUUvup9
	hIxQTwKklAubiUH8tSdBSd/raUhG3nDKU20MmxOR7QjxJxTgq+dZ8cXvsH6kl1M6BgLTCH9qh4DaI
	nY8uRx6/ROYGxXI0pyv1n/yFGumfneNEsIJRbY3dQ6k20W/7MhGGJx6EYVR34Etzv/LWP66tuH039
	H09MX27Q+8VKOk4zV26M+3cUpRbYWSzYDTjCmFwwSvDuz0XGGIdg7ECk8WrNBTuakyKfIWkq5dy2V
	w+v0ATr9q58PmqAKNsI+d09Q/BdB84qhPyN52rsvkjRFXG7A309yP8l7TKyR3ol5d0lRc0G0MyDe7
	ujEOW3ms/NLVt5iBIrFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh4Qx-0000000EuB2-0TBF;
	Tue, 07 Jul 2026 11:57:51 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh4Qv-0000000EuAR-0dgV
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 11:57:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783425467;
	bh=VHqBskF2miGoUSyz6zaznqC2MdqsOv4v1qlhwctNtPo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Io6doRaBd4/RS/BSjrvq7JNNdKHDBS+5wUEC+wsfq2bTXkc2XoHWEtQFiHGGEKg+c
	 IRQhsn7R347oNbs3KTnzCPBfDICxxZ6+HIQCiJ53pCE26gg/vAaI3zeUVIyvbpT+bV
	 /z1wZCwcE9QmC3etLoDPJCAUHM3DBxCYXrWaC2VRxQiU0Nndtif7iIRKbSn+sx4pGb
	 Gs25diGcV9i/HpW4dKssaz3mwjYswEkRMOBhpLQApoeQvmy2TdIOXPVjH4pT2YG83r
	 tRDt1lN9Cs7J/mOQJoy+x2h3yOCA2P9RWeqvu6U6m4G/sRVw3xgpYCeQL1TyBI0x5a
	 z4jUJtRKTKxBw==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B5EC817E013E;
	Tue, 07 Jul 2026 13:57:46 +0200 (CEST)
Message-ID: <ee5961a8-cc2d-4dbc-a668-3e007f7cd2fa@collabora.com>
Date: Tue, 7 Jul 2026 13:57:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 06/12] spmi: Add helper to get a parent SPMI device
To: sashiko-reviews@lists.linux.dev
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org,
 linux-phy@lists.infradead.org
References: <20260707111829.180158-1-angelogioacchino.delregno@collabora.com>
 <20260707111829.180158-7-angelogioacchino.delregno@collabora.com>
 <20260707112756.DEAAB1F000E9@smtp.kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260707112756.DEAAB1F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_045749_377403_2BC4B481 
X-CRM114-Status: GOOD (  21.52  )
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

On 7/7/26 13:27, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [High] Time-of-check to time-of-use (TOCTOU) race on `dev->parent` can lead to a NULL pointer dereference.
> --
> 
> --- Patch [6]: [PATCH v12 06/12] spmi: Add helper to get a parent SPMI device ---
> commit fb3218d6b528eabdc83ac90ed869685f4b9bd99e
> Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> 
> spmi: Add helper to get a parent SPMI device
> 
> This commit adds a new helper function spmi_get_parent_spmi_device()
> which takes a struct device and returns a pointer to its parent SPMI
> device if one exists, without modifying the reference count.
> 
>> diff --git a/drivers/spmi/spmi.c b/drivers/spmi/spmi.c
>> index e218c81405458..a0a6ea9b1d2db 100644
>> --- a/drivers/spmi/spmi.c
>> +++ b/drivers/spmi/spmi.c
> 
> [ ... ]
> 
>> @@ -433,6 +433,29 @@ struct spmi_device *spmi_find_device_by_of_node(struct device_node *np)
>>   }
>>   EXPORT_SYMBOL_GPL(spmi_find_device_by_of_node);
>>   
>> +/**
>> + * spmi_get_parent_spmi_device() - get the parent SPMI device from current dev
>> + * @dev:        pointer to a subdevice on SPMI bus
>> + *
>> + * Checks if the passed device is a child of an SPMI device and returns a
>> + * handle to the parent SPMI device without incrementing any refcount.
>> + *
>> + * Return: Handle to the parent SPMI device or NULL
>> + */
>> +struct spmi_device *spmi_get_parent_spmi_device(struct device *dev)
>> +{
>> +	struct device *parent;
>> +
>> +	if (dev && dev->parent) {
>> +		parent = dev->parent;
>> +
>> +		if (parent->type == &spmi_dev_type)
> 
> [Severity: High]
> Can a concurrent device topology change (like device_move()) cause a NULL
> pointer dereference here?
> 

That's not happening.

> If dev->parent is modified to NULL between the check in the if condition
> and the assignment to the local parent variable, parent will become NULL
> and this parent->type check will panic.
> 
> Since the compiler is permitted to emit two separate memory loads for
> dev->parent in this sequence, would it be safer to read it exactly once
> into the local variable before checking its validity?
> 

Yes, but it's overcautious, and purely a nitpick. Not severe at all, and I'm not
fixing that as it's still safe.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

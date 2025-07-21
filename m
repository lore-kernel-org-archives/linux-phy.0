Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 995E0C83F25
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 13:50:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wn1mmkJDmlRFRVR1FPXdWI8cFVtaWgJlh0dx6vz9oIY=; b=ldUePFyfu8KkuV
	vSON4ffM2ztyqVVqseVXSIJREz3Qhg4WmdETiaXMe6TRdXVROn95DjXM/S/6R7FpS2h/Ipc6W6nf7
	/9XUxW3IOMz3L71qbeTBHnJb65Z/qFvLXcGnpDM4LnCd/fHnXiG/n7zHIK7O1dMDKUbmJSxkGxLeJ
	7dUdUItL7g1zBr6vtqATeiQUt+atAsZqbvzGcrd8zseNrrYrInjU4jBGD2nzFY8Vk9GA3ckjKm42z
	j+75x1NRLZ/0Id7SynqwJUgswXf9z+WH1/QO7cW14cX+691RDsYDVOUuKPGTEttlQBNh4jl2H0BNC
	fQoXWeSvDgV0T+4JQCfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udquL-0000000HQem-1L6F;
	Mon, 21 Jul 2025 13:50:21 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udq7t-0000000HJxn-1w8i
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 13:00:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1753102815;
	bh=onM7/yXXPy0rj+kktsvtqW+dskVE/IL1W226F8FF398=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=YfBd131RRhLqcHMO/9DBRhnsopOkDpwTVB8S0Lr0U/Ix7wq16RlG2EcpqKPNRnGX9
	 dvGGkzmOcl5DJYdiGk2aTJ60HVxgH4FLoisShh9SbofSB1IxXzGJy+2JKGwesarirp
	 VAgtFpXecyC6q8W8JUTCbfuINLHeCkhkJo2pNPAwLBA3dKePdMDNliDzMNKF0K67T2
	 pkp++VhOPaHmVN600g2Bmyw9pRGB2e6N0SCW4sC/LKZAVrEgzfGQIQ/DPAcp0jF86z
	 3y/C17t2npUbHF19zBvO9crGDXcXIhs2NKye3hUNc/W62M2B2smXPId/s4u4xO0vat
	 XGCXq/JVGT7LQ==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 940C517E0FA8;
	Mon, 21 Jul 2025 15:00:14 +0200 (CEST)
Message-ID: <cb34fd4e-d87a-4a98-b27e-93ecb851e85e@collabora.com>
Date: Mon, 21 Jul 2025 15:00:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/7] spmi: Implement spmi_subdevice_alloc_and_add() and
 devm variant
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: sboyd@kernel.org, jic23@kernel.org, dlechner@baylibre.com,
 nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de,
 gregkh@linuxfoundation.org, srini@kernel.org, vkoul@kernel.org,
 kishon@kernel.org, sre@kernel.org, krzysztof.kozlowski@linaro.org,
 u.kleine-koenig@baylibre.com, linux-arm-msm@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org,
 kernel@collabora.com, wenst@chromium.org
References: <20250721075525.29636-1-angelogioacchino.delregno@collabora.com>
 <20250721075525.29636-2-angelogioacchino.delregno@collabora.com>
 <aH4lwVpaiau1Ick3@smile.fi.intel.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <aH4lwVpaiau1Ick3@smile.fi.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_060017_672607_346D21DB 
X-CRM114-Status: GOOD (  15.47  )
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

Il 21/07/25 13:34, Andy Shevchenko ha scritto:
> On Mon, Jul 21, 2025 at 09:55:19AM +0200, AngeloGioacchino Del Regno wrote:
>> Some devices connected over the SPMI bus may be big, in the sense
>> that those may be a complex of devices managed by a single chip
>> over the SPMI bus, reachable through a single SID.
>>
>> Add new functions aimed at managing sub-devices of a SPMI device
>> spmi_subdevice_alloc_and_add() and a spmi_subdevice_put_and_remove()
>> for adding a new subdevice and removing it respectively, and also
>> add their devm_* variants.
>>
>> The need for such functions comes from the existance of	those
>> complex Power Management ICs (PMICs), which feature one or many
>> sub-devices, in some cases with these being even addressable on
>> the chip in form of SPMI register ranges.
>>
>> Examples of those devices can be found in both Qualcomm platforms
>> with their PMICs having PON, RTC, SDAM, GPIO controller, and other
>> sub-devices, and in newer MediaTek platforms showing similar HW
>> features and a similar layout with those also having many subdevs.
> 
> ...
> 
>>   EXPORT_SYMBOL_GPL(devm_spmi_controller_add);
> 
>> +EXPORT_SYMBOL_GPL(devm_spmi_subdevice_alloc_and_add);
> 
> I am wondering how hard to move these to a dedicated namespace.
> Basically you can define a default namespace, and at the same time
> add import to all (current) users.
> 

I can check if this can be done "relatively easily" (as in, if I can do that
without requiring "a hundred" immutable branches for every subsystem using
SPMI).

If turns out being feasible - I do actually like the idea so yes I'd be pleased
to do that... even though honestly it's completely out of scope for this series.

In case I can't - it's still something that can be done later.

> ...
> 
>> +	dev_set_name(&sdev->dev,
>> +		     "%d-%02x.%d.auto", sdev->ctrl->nr, sdev->usid, sub_sdev->devid);
> 
> No error check?
> 

Heh, whoops, forgot about it :-)

Thanks for catching that - adding the check for v2.

Cheers,
Angelo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

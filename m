Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8868C83F25
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 08:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D8vDn6zo2qXvhzrCiRigEyacZekF/6rJI38uUj4eOM8=; b=i+P27+wuEwSfXE
	5NJbn0eVwzMoieoWK7IV6/4RE73rDlf2Uv59ufmkSeztJVtNfR1N62upZafb0RIR1zMhvrclHgfTP
	u2U6qv8u2KmzzaeibAgPiqa+peR7OcfkxFY8NXM4nL57/oDP8YiqIFZGL28K7aRTun6RM/dBf4e9d
	Etg00RBKvIbqZvLsZhWyzT7OqRtaX0Or6hDUxfq+SBQawuvKf7lmYTk+Qbdnpo7dw6be6cPdXelpK
	yhMnGpC1fdFf7Dl++tdC3tgBG2wr6P8b6hTuOxOF7iBy8U3OT03eE/OhL/0XsMqkwdhGRDGuIiAdy
	b+51Yqmde6DWwWv0hSxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue8SS-00000001qQ9-2dJP;
	Tue, 22 Jul 2025 08:34:44 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue8HL-00000001osi-0mVs
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 08:23:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1753172593;
	bh=N0IwDglj6zSDqLUhBc9b9TtUj63SYVStoAHb/ApAGa8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=T6Z23uPnpPGz0LE3TTjwNcaxdcsZMHNY8/rod19dpxEoFcaVzm6Tzmt7zNWezEc/q
	 8LiN4xJzF0rlqKYeSpr8ruwFD5pv+9hzjLzoBrnvYe8ldcXFebnXhIRLukAeR5ZnS5
	 HX4alCC8uCPyliygXz6lSmWLP5W7KLjb2gjaBrfcs3KXo2bmWNSWNpk/yy2T4snXl9
	 UtxsWmLfEmelygGOfZFcCqf/g8JWGQZbqkhfJQyEDVp6CqE7tTAxolmiyVGDxVSqNu
	 5T6h4YmbmLH7Z8JQpJefVcR10xHil5WgcFKwkf+7BX3vYMOsBRNMA4ZfWJFeL/rC1O
	 z36DYY3p4OsSw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B5F3E17E0D15;
	Tue, 22 Jul 2025 10:23:12 +0200 (CEST)
Message-ID: <d14b616c-3d74-477e-a45f-5b890df4fe46@collabora.com>
Date: Tue, 22 Jul 2025 10:23:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/7] power: reset: qcom-pon: Migrate to
 devm_spmi_subdevice_alloc_and_add()
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
 <20250721075525.29636-4-angelogioacchino.delregno@collabora.com>
 <aH4mWfgQt_Q0O-7S@smile.fi.intel.com>
 <f5d529c3-b898-48ac-8e5a-f587db72dc82@collabora.com>
 <aH51idxbwW1SAExG@smile.fi.intel.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <aH51idxbwW1SAExG@smile.fi.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_012315_371757_BCC5E5C0 
X-CRM114-Status: GOOD (  14.53  )
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

Il 21/07/25 19:14, Andy Shevchenko ha scritto:
> On Mon, Jul 21, 2025 at 03:05:46PM +0200, AngeloGioacchino Del Regno wrote:
>> Il 21/07/25 13:36, Andy Shevchenko ha scritto:
>>> On Mon, Jul 21, 2025 at 09:55:21AM +0200, AngeloGioacchino Del Regno wrote:
> 
> ...
> 
>>>> +	if (!pdev->dev.parent)
>>>> +		return -ENODEV;
>>>
>>> You can start using
>>>
>>> 	struct device *dev = &pdev->dev;
>>>
>>> here and perhaps one may convert the rest to it...
>>>
>>> ...
>>>
>>>>    	error = of_property_read_u32(pdev->dev.of_node, "reg",
>>>
>>> ...including, but not limited to, use of device_property_read_u32(dev, ...) here.
>>>
>>
>> I didn't do that for one single reason: I did not want to add noise to the commits
>> and wanted those to exclusively migrate the drivers to the new API, literally
>> without doing *anything* else unnecessary, even if I have located some almost
>> effortless improvements that I could've done to those drivers.
>>
>> Please - I prefer to keep it this way: these are the first commits that add the
>> usage of the new functions and of the concept of SPMI subdevices, and I really
>> want those to contain just that and nothing else - because I suspect that these
>> will be taken as example and will be read by the next person that is implementing
>> a new SPMI (sub)driver or converting any remaining ones to subdevice.
> 
> You can introduce a temporary variable in this change and use it only in the
> lines you have added/touched. We have similar approach in several drivers.
> Then somebody (not specifically should be you) can move it forward.
> 

Makes sense, okay!

Cheers,
Angelo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

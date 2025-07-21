Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4C0BC83F25
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 14:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lWQqaOCj9NdgmBsXwFpdnyJj79hMgGCizrklj1YcquA=; b=Vbs3TUxQmC9mYU
	glAErTkwePmP7RUb5fgWSqm/9phlMhiEwpDiaCNiWiHeKcRli9qbNXiNmLt8N9t08gGkLq40/z/0D
	bq2IlecoUA481w8Q6phCSqUPA779UjkcWMNOeRUqjpUKho0K2Ip+d5l23U+Ns5G/IrYC201n/efqa
	xY8VjzQQoRaSNcaBC9jKjhkVZvEYRfafgoguw0kJ1lVVz7sPZ8k4tiC18AjqulRZwu0abIfU3Yoxp
	M3RnbMZ3A9/BrXaXk1stQU5PUSN1t7l7G+p1IwVgDb0kLC38ISs11k2OhkG8K4WWEZPXlmqftZA1m
	wPezN7XkmYCA4XkzAYfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udrPw-0000000HVXx-1gjI;
	Mon, 21 Jul 2025 14:23:00 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udqDF-0000000HL1C-3AbO
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 13:05:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1753103148;
	bh=OIlx9pKjKSDXW0QMzNXy7DSCUmg3OANoDgc+VuAixnk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=W8OHWg4falXTWpT++f8ykVlCntZC6vbmYqgYY/tiGhDXWIFu05ZFdblOvZXrJJdru
	 4/zESCMEgCOINCgKuSwEykOIwYwox/q5nuGJX3Yxu8+h45DeY3nnMKteyVksSV0cFE
	 5FOF/u+abbESbi1+tGCXP/MOxdMA6RPvs+6prk9XLLq0bAhfpp0aqXz+xh85s7lxdI
	 XPvnkINMSVf5XAwqqpJprwP16xVrIrrjXw3m2KVx55NOd+iYv+ffyYsIb5NXL2y/1o
	 I3o14c/lHrwGjkV7xiiF+s24rQm8s7s1LguP6vVjsGHOs1zaE7MRmTIz1OvC/WzbJ4
	 OqF5IJBTbQDiw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0E25E17E0CA1;
	Mon, 21 Jul 2025 15:05:47 +0200 (CEST)
Message-ID: <f5d529c3-b898-48ac-8e5a-f587db72dc82@collabora.com>
Date: Mon, 21 Jul 2025 15:05:46 +0200
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
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <aH4mWfgQt_Q0O-7S@smile.fi.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_060549_951836_DCD5CF0C 
X-CRM114-Status: GOOD (  18.77  )
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

Il 21/07/25 13:36, Andy Shevchenko ha scritto:
> On Mon, Jul 21, 2025 at 09:55:21AM +0200, AngeloGioacchino Del Regno wrote:
>> Some Qualcomm PMICs integrates a Power On device supporting pwrkey
>> and resin along with the Android reboot reason action identifier.
>>
>> Instead of using the parent SPMI device (the main PMIC) as a kind
>> of syscon in this driver, register a new SPMI sub-device for PON
>> and initialize its own regmap with this sub-device's specific base
>> address, retrieved from the devicetree.
>>
>> This allows to stop manually adding the register base address to
>> every R/W call in this driver, as this can be, and is now, handled
>> by the regmap API instead.
> 
> ...
> 
>> +	struct regmap_config qcom_pon_regmap_config = {
>> +		.reg_bits = 16,
>> +		.val_bits = 16,
>> +		.max_register = 0x100,
>> +		.fast_io = true
> 
> Please, leave trailing comma in this and other similar cases.
> 

Oki, will do!

>> +	};
> 
> 
>>   	struct qcom_pon *pon;
>>   	long reason_shift;
>>   	int error;
> 
>> +	if (!pdev->dev.parent)
>> +		return -ENODEV;
> 
> You can start using
> 
> 	struct device *dev = &pdev->dev;
> 
> here and perhaps one may convert the rest to it...
> 
> ...
> 
>>   	error = of_property_read_u32(pdev->dev.of_node, "reg",
> 
> ...including, but not limited to, use of device_property_read_u32(dev, ...) here.
> 

I didn't do that for one single reason: I did not want to add noise to the commits
and wanted those to exclusively migrate the drivers to the new API, literally
without doing *anything* else unnecessary, even if I have located some almost
effortless improvements that I could've done to those drivers.

Please - I prefer to keep it this way: these are the first commits that add the
usage of the new functions and of the concept of SPMI subdevices, and I really
want those to contain just that and nothing else - because I suspect that these
will be taken as example and will be read by the next person that is implementing
a new SPMI (sub)driver or converting any remaining ones to subdevice.

Cheers,
Angelo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

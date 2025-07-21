Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6ADB0C83F25
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 13:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PyNQL+tDSzIl6W/L/wsY9/fiZ3c3Xcx6oI8lxnC79ws=; b=KHq1zPz3iSKwei
	u9zCrZsZgE9kJftGZkXv+SjF+CmybAao/MFtDW9dSO/RnLxzsFag0TK5V4UsYjpYuOsDIbFdiVDnp
	vTyepXOZPh8EbqWKAekTbQDmBjHXWPRwa4yVCKnH06WGA3h0Nb6sFpHe8OiVUwqCaayb7ZGTwgdLj
	SLCCNPPxNID9Nq+FxdbZeGzduxBJT6iLrm688hqV3lhVJcf85xp62PqspEezh/EUwpORNqKkSx3dq
	VLYgcFPkqG5iAUyxZgylXIqvFlsVBqicjHVXoXEkSuQpuPYoy2V3TCnsGrPj5hXZHdOKxXAUsvHeB
	WgwN+fOI5nXMiGLo5STw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udqpL-0000000HQ5D-0l0q;
	Mon, 21 Jul 2025 13:45:11 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udpu6-0000000HHdc-0htm
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 12:46:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1753101960;
	bh=WGUQgDlE1s2YTapj41wUMa0BgEKsNgWIMJNz10NotwM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=kSPo9cv75vw9UZ0CR4OLbjZU8t3subAZ5maiKshA0TNSuGgefVTXxIYzo/HTqAlgl
	 LIyQd3zMu9eP/O31LM7EpmNAo7PT495/rRzlRj82cqeKI/VrrXYPFmxeiLrX6PuuIP
	 FCR9FhRLbhFcUXn4dj+LLZYLFUw9GKsIwj9PUOM2iGTpKqPdSIXa/f18ZCZA86UKME
	 +Z9Ijtncdp/ontJplBRxZ1+jGDXvsgzV1EH1u0r6UTWn6d68hOKx4jkrUJoRPRYeOd
	 GyogLDsta52fywRoObfEo9lSGMyOW6s0xxYE1qPFDVgWDaYnWQfFay4V3JnABrkBmc
	 u7FkwJT88NMNw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 53ADF17E0CA1;
	Mon, 21 Jul 2025 14:45:59 +0200 (CEST)
Message-ID: <b06969d2-0c35-44c7-bb2c-162942186c53@collabora.com>
Date: Mon, 21 Jul 2025 14:45:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/7] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
To: Casey Connolly <casey.connolly@linaro.org>, sboyd@kernel.org
Cc: jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
 andy@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 srini@kernel.org, vkoul@kernel.org, kishon@kernel.org, sre@kernel.org,
 krzysztof.kozlowski@linaro.org, u.kleine-koenig@baylibre.com,
 linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pm@vger.kernel.org, kernel@collabora.com, wenst@chromium.org
References: <20250721075525.29636-1-angelogioacchino.delregno@collabora.com>
 <20250721075525.29636-3-angelogioacchino.delregno@collabora.com>
 <e724e6a2-21a8-436a-8809-ce73c0afa433@linaro.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <e724e6a2-21a8-436a-8809-ce73c0afa433@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_054602_365619_BB786D68 
X-CRM114-Status: GOOD (  22.31  )
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

Il 21/07/25 12:44, Casey Connolly ha scritto:
> Hi Angelo,
> 
> On 21/07/2025 09:55, AngeloGioacchino Del Regno wrote:
>> Some Qualcomm PMICs integrate a SDAM device, internally located in
>> a specific address range reachable through SPMI communication.
>>
>> Instead of using the parent SPMI device (the main PMIC) as a kind
>> of syscon in this driver, register a new SPMI sub-device for SDAM
>> and initialize its own regmap with this sub-device's specific base
>> address, retrieved from the devicetree.
>>
>> This allows to stop manually adding the register base address to
>> every R/W call in this driver, as this can be, and is now, handled
>> by the regmap API instead.
> 
> This is honestly a really nice improvement :D>

Thanks! :-D

>> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
>> ---
>>   drivers/nvmem/qcom-spmi-sdam.c | 41 +++++++++++++++++++++++++---------
>>   1 file changed, 30 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/nvmem/qcom-spmi-sdam.c b/drivers/nvmem/qcom-spmi-sdam.c
>> index 4f1cca6eab71..1b80e8563a33 100644
>> --- a/drivers/nvmem/qcom-spmi-sdam.c
>> +++ b/drivers/nvmem/qcom-spmi-sdam.c
>> @@ -9,6 +9,7 @@
>>   #include <linux/nvmem-provider.h>
>>   #include <linux/platform_device.h>
>>   #include <linux/regmap.h>
>> +#include <linux/spmi.h>
>>   
>>   #define SDAM_MEM_START			0x40
>>   #define REGISTER_MAP_ID			0x40
>> @@ -20,7 +21,6 @@
>>   struct sdam_chip {
>>   	struct regmap			*regmap;
>>   	struct nvmem_config		sdam_config;
>> -	unsigned int			base;
>>   	unsigned int			size;
>>   };
>>   
>> @@ -73,7 +73,7 @@ static int sdam_read(void *priv, unsigned int offset, void *val,
>>   		return -EINVAL;
>>   	}
>>   
>> -	rc = regmap_bulk_read(sdam->regmap, sdam->base + offset, val, bytes);
>> +	rc = regmap_bulk_read(sdam->regmap, offset, val, bytes);
>>   	if (rc < 0)
>>   		dev_err(dev, "Failed to read SDAM offset %#x len=%zd, rc=%d\n",
>>   						offset, bytes, rc);
>> @@ -100,7 +100,7 @@ static int sdam_write(void *priv, unsigned int offset, void *val,
>>   		return -EINVAL;
>>   	}
>>   
>> -	rc = regmap_bulk_write(sdam->regmap, sdam->base + offset, val, bytes);
>> +	rc = regmap_bulk_write(sdam->regmap, offset, val, bytes);
>>   	if (rc < 0)
>>   		dev_err(dev, "Failed to write SDAM offset %#x len=%zd, rc=%d\n",
>>   						offset, bytes, rc);
>> @@ -110,28 +110,47 @@ static int sdam_write(void *priv, unsigned int offset, void *val,
>>   
>>   static int sdam_probe(struct platform_device *pdev)
>>   {
>> +	struct regmap_config sdam_regmap_config = {
>> +		.reg_bits = 16,
>> +		.val_bits = 16,
> 
> I believe registers are 8 bits wide, at least on Qualcomm platforms.
> 

I used 16 because usually that's the usual default for SPMI - but if you're sure
about Qualcomm platforms having 8-bits wide registers and you can confirm that,
I can change both of those to 8 in a jiffy.

I anyway have to send a v2 because I forgot an error check - so changing this is
not a problem at all for me.

But.

Before me changing - can you please please please double check and confirm?

If you can also check the register width of the others that I converted, I'd really
appreciate that (I have no datasheets for qcom so it's a bit of a guessing game for
me here... :-P), just so that we get everything right from the get-go ... even if
a mismatch wouldn't really cause issues in the current state of things.

That's because - I just noticed - in qcom-spmi-pmic.c, reg_bits is 16, but val_bits
is 8 (which basically means "the registers are 16-bits wide, but we always only
care about the lower 8 bits).

Thanks again!

Cheers,
Angelo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

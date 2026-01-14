Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C4B6D31A29
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 09:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VU0cVBpC0C6kIzY+8w596BkfEEZiANHH//YRjFupH48=; b=aw0m4COpKZbFr0
	mEVz5vJjbUOo22C/sSMGh2XJ2t9yFiyXq3cefpoWSzNFIYHYs5M3PWBIjuxaeoTIc6D+fUpEMsio0
	VHnA+KD5UYWD19xmVqfJMcETYjBuQi2wT2M6WcuOcTuhD4sAnwHtsbmUN5v6c8JdtukLhTxwJIS9+
	V48OldTytB+PowvddvkJy01FCAdHXIRrihNolczKCX6ZsHYMsMes/nhGh7YiBYIu0ytC4M6MbR6Wc
	xSm9jq9dx22pvYYKMzVk3E/RRlldTE4SY+8gUIoAJaYfBvqbhNGQHuYr4cxAlNnPGHNO7V6d8L24G
	ioo/ZBufDGBQpefBZqIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwnL-00000008SL8-27k8;
	Wed, 14 Jan 2026 09:04:03 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwnI-00000008SKI-2E31
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 09:04:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1768381438;
	bh=Bmm0bfKxZ+xyalDgjLpooMd2+oroWes+csIA7YD0GgI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=X/u2b6SJCtcwt9Bho1PZTO40juQP1tyyx1u38RDQ7fr6ngfDMuar6iImWPTI/oN6j
	 xzTvyj/yGiMtvpRMUcQLHQvyMdud06q2FEBWS6ij055CR/AA1YFcAZ7qTgw6SHD5eh
	 R2DbDxDytSJK6rKK/FSI8O+EFI392WyPQ7/28wHwbbDSDccYA5xYu1TcBoYRqhMD8N
	 N8HYGLbav2Kx+1mVIWh+Ra0T0CMqpAuSYGMP9kcJotJn0imGx0pTmJFkSPcthwuCNd
	 KNkjBohB4PL2HgZNpQ0SqAWj4QNvRNEgeRHU8/0jFgDN3+HL2HNAmMlfDN4V80ae8z
	 1bADCDusEVD0w==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 86CFF17E13C3;
	Wed, 14 Jan 2026 10:03:57 +0100 (CET)
Message-ID: <401c5e7b-ff33-44e8-98a5-8cc6af4f2a87@collabora.com>
Date: Wed, 14 Jan 2026 10:03:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 05/10] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
 andy@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 srini@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org,
 sre@kernel.org, sboyd@kernel.org, krzk@kernel.org,
 dmitry.baryshkov@oss.qualcomm.com, quic_wcheng@quicinc.com,
 melody.olvera@oss.qualcomm.com, quic_nsekar@quicinc.com,
 ivo.ivanov.ivanov1@gmail.com, abelvesa@kernel.org, luca.weiss@fairphone.com,
 konrad.dybcio@oss.qualcomm.com, mitltlatltl@gmail.com,
 krishna.kurapati@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, kernel@collabora.com
References: <20260114083957.9945-1-angelogioacchino.delregno@collabora.com>
 <20260114083957.9945-6-angelogioacchino.delregno@collabora.com>
 <aWdaWY2tWUMllOHH@smile.fi.intel.com>
 <8bf79979-0946-4ed9-b8d4-c442a6e54833@collabora.com>
 <aWdbPze-f_2_5EbL@smile.fi.intel.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <aWdbPze-f_2_5EbL@smile.fi.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_010400_751242_B0AEFACF 
X-CRM114-Status: GOOD (  11.28  )
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

Il 14/01/26 10:00, Andy Shevchenko ha scritto:
> On Wed, Jan 14, 2026 at 09:59:40AM +0100, AngeloGioacchino Del Regno wrote:
>> Il 14/01/26 09:56, Andy Shevchenko ha scritto:
>>> On Wed, Jan 14, 2026 at 09:39:52AM +0100, AngeloGioacchino Del Regno wrote:
>>>> Some Qualcomm PMICs integrate a SDAM device, internally located in
>>>> a specific address range reachable through SPMI communication.
>>>>
>>>> Instead of using the parent SPMI device (the main PMIC) as a kind
>>>> of syscon in this driver, register a new SPMI sub-device for SDAM
>>>> and initialize its own regmap with this sub-device's specific base
>>>> address, retrieved from the devicetree.
>>>>
>>>> This allows to stop manually adding the register base address to
>>>> every R/W call in this driver, as this can be, and is now, handled
>>>> by the regmap API instead.
> 
> ...
> 
>>>> +	struct regmap_config sdam_regmap_config = {
>>>> +		.reg_bits = 16,
>>>> +		.val_bits = 8,
>>>
>>>> +		.max_register = 0x100,
>>>
>>> Are you sure? This might be a bad naming, but here max == the last accessible.
>>> I bet it has to be 0xff (but since the address is 16-bit it might be actually
>>> 257 registers, but sounds very weird).
>>
>> Yes, I'm sure.
> 
> So, what is resided on address 0x100 ?
> 

I don't remember, this is research from around 5 months ago, when I've sent
the v1 of this.

If you really want though, I can incorrectly set max_register to 0xff.

Cheers,
Angelo

>>>> +		.fast_io = true,
>>>> +	};
> 
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

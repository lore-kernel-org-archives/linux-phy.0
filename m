Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5E40D31A2C
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 09:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VtgcWif1wZpoemXzPQiUUHrUQRpYu4Ik7D6sQUc16RY=; b=jqcFrQ8uHOGQE8
	XsXD95ts1ozt6woKIgqP8IqzOT3GFWWWH3ovaD4pVG17zL5bybyFoySatfdG9fDyz6v5bG3k/Qhk9
	jPMQoNSTaYqNw6O4F5/cOoN5KjU7/0R/9hqcpN3LTVSwC37wMtFuweeAWioDLpKgTjkGK8uZlHmA6
	Y8MnIvLqJKaQJxvHmOJ6Xj4aWSVM4NNTXONIyp7bXX1bkbTHSiP0SrDeVN7GWEslNEW70mZO31fXF
	U9O511KIi2bYQKp/ogzTYQaNBRMInCp+7jK4XETjT00mV9rI+ugew7CKeLW4vSy8hgQteK3BMy8dC
	6h4autAeIPVPb+wDdzWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwsy-00000008TWs-2rZi;
	Wed, 14 Jan 2026 09:09:52 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwsv-00000008TVz-2AA9
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 09:09:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1768381787;
	bh=S696D/o/SmDuyHHVUz/db4ZX1yDLl8DiEZX+ZVrJT8A=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=mAi6pcvA+pcWkAnf8KWCQzsHZ/kxE90P+qmo/GY3FotQTzx/2NFnieaDFkPSBSIm3
	 Bme93Ye4yrwZh73GV33CWAMgulP2daIjLMo1fOY2XdktNYhp0VkaJev1vy/E285X6w
	 N2Q+OrR/jUhUSUl9WdSUM2apDpwVIxuLqE6tNRUdt5U5RcaYXoBV2bBm7LXARHt5fb
	 gZvAetbLPlm+x8wcTb8DvjmrcW7wQy9DDY42H6M/h9BWr/Ge3dv/ntjUqy1el1Dm+L
	 GFEP3U3I6IQnKY8944gzImaGwYFNXI/y++qhq41IVerqRXZVcLGB/jpIdW17vZ47J5
	 zULJiOvR66Ylw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id F1DD917E13C3;
	Wed, 14 Jan 2026 10:09:45 +0100 (CET)
Message-ID: <647b4acc-3310-4329-ac7a-77e86bab74a3@collabora.com>
Date: Wed, 14 Jan 2026 10:09:45 +0100
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
 <401c5e7b-ff33-44e8-98a5-8cc6af4f2a87@collabora.com>
 <aWdcy2ouQHtkPd6q@smile.fi.intel.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <aWdcy2ouQHtkPd6q@smile.fi.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_010949_722348_A895E66A 
X-CRM114-Status: GOOD (  11.30  )
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

Il 14/01/26 10:07, Andy Shevchenko ha scritto:
> On Wed, Jan 14, 2026 at 10:03:57AM +0100, AngeloGioacchino Del Regno wrote:
>> Il 14/01/26 10:00, Andy Shevchenko ha scritto:
>>> On Wed, Jan 14, 2026 at 09:59:40AM +0100, AngeloGioacchino Del Regno wrote:
>>>> Il 14/01/26 09:56, Andy Shevchenko ha scritto:
>>>>> On Wed, Jan 14, 2026 at 09:39:52AM +0100, AngeloGioacchino Del Regno wrote:
> 
> ...
> 
>>>>>> +	struct regmap_config sdam_regmap_config = {
>>>>>> +		.reg_bits = 16,
>>>>>> +		.val_bits = 8,
>>>>>
>>>>>> +		.max_register = 0x100,
>>>>>
>>>>> Are you sure? This might be a bad naming, but here max == the last accessible.
>>>>> I bet it has to be 0xff (but since the address is 16-bit it might be actually
>>>>> 257 registers, but sounds very weird).
>>>>
>>>> Yes, I'm sure.
>>>
>>> So, what is resided on address 0x100 ?
>>
>> I don't remember, this is research from around 5 months ago, when I've sent
>> the v1 of this.
>>
>> If you really want though, I can incorrectly set max_register to 0xff.
> 
> Why incorrectly? Can you dig into the datasheet and check, please? We don't
> know what is the 0x100 address means.
> 

I don't have any datasheets for Qualcomm IPs.

Cheers,
Angelo

>>>>>> +		.fast_io = true,
>>>>>> +	};
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2583D31A33
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 09:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lQjZUqa+A7gz1lMlQx3VhAThjBY2DIOGUuDojQk/F3A=; b=rSGQJHMraxs5VN
	Xwvu7IwUWoCQRIlwAQ4hP3KpEe7rScbPwVL1+ogdd+yZQEjTxx3l397OpRmz9KB16XpTic93ceEQP
	I2TgGW/tNT8aO+thjIecNi3cLqSLWNiEi/lSw3tCYO87KhqRsv9XUAbtu54mugMMklYZHkMVwee73
	3iBhIkpdA0zUFiEgu3o/alPsWVDjQ332Ousx0xvglTAiTw0czrbx9VHs12JIloWbF888rWjd6Xbj7
	s8AKCMw6tfu9ytldvs4/mROmUUX5QQatltz7BKjtUI5c5rvgV67MvRqfLzWgXecUdeA1+Ebu/uI6U
	ZEhFLZwdXVuwZBCB9hHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfx9O-00000008Xjr-2k89;
	Wed, 14 Jan 2026 09:26:53 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfx9K-00000008Xh6-1ra5
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 09:26:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1768382804;
	bh=7KqqY0DcTQx2Y9pyI1O7EpopUM96HNm4UmxlbgqHu4U=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jcbOyowt+fl649l9QQhwf3ZG+vjJgky2cuVsOexGOWmqwzSd3QikSmwPf6ZZwouQZ
	 mGfcFK5dIie5qMs8E3SOEnt4Mi5tZY272eZf5fAKQMMlYFKpKfyXAARfITzxFnY7TV
	 I76qHBgnKR3uxPUKB/kZy2GvPOkTREXYa5Uny9YQJEIwH5osSRWx2cBBj6HnaeHnau
	 JcH5VuDYiTK293jRyF3G2F31mdrA4y3xcZ259rv6oTlopJpyq73lV0++qpoHYBit8q
	 p9GoJqmaCE+zHsZyjrEUGlhnc3Dw/FwsxGsPYVIMsn8+gx/aSmm5pUcYbdCqx0LBfa
	 zYc2GYOuM/qQw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 2B31F17E1406;
	Wed, 14 Jan 2026 10:26:43 +0100 (CET)
Message-ID: <8f5c79e0-5f7e-4fe4-b9d7-60375e779892@collabora.com>
Date: Wed, 14 Jan 2026 10:26:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 07/10] phy: qualcomm: eusb2-repeater: Migrate to
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
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org,
 kernel@collabora.com, Abel Vesa <abel.vesa@linaro.org>
References: <20260114083957.9945-1-angelogioacchino.delregno@collabora.com>
 <20260114083957.9945-8-angelogioacchino.delregno@collabora.com>
 <aWdbB4vJ6Z8k0g4s@smile.fi.intel.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <aWdbB4vJ6Z8k0g4s@smile.fi.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_012647_517853_BC5B40B8 
X-CRM114-Status: GOOD (  15.26  )
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

Il 14/01/26 09:59, Andy Shevchenko ha scritto:
> On Wed, Jan 14, 2026 at 09:39:54AM +0100, AngeloGioacchino Del Regno wrote:
>> Some Qualcomm PMICs integrate an USB Repeater device, used to
>> convert between eUSB2 and USB 2.0 signaling levels, reachable
>> in a specific address range over SPMI.
>>
>> Instead of using the parent SPMI device (the main PMIC) as a kind
>> of syscon in this driver, register a new SPMI sub-device for EUSB2
>> and initialize its own regmap with this sub-device's specific base
>> address, retrieved from the devicetree.
>>
>> This allows to stop manually adding the register base address to
>> every R/W call in this driver, as this can be, and is now, handled
>> by the regmap API instead.
> 
> Same comments and actually one more.
> 
> ...
> 
>> +	struct regmap_config eusb2_regmap_config = {
>> +		.reg_bits = 16,
>> +		.val_bits = 8,
>> +		.max_register = 0x100,
>> +		.fast_io = true,
>> +	};
> 
> This is third time of the same. Make it part of SPMI core and export to
> the users. Or are they semantically different like different slices?
> In that case you can export it under generic name like
> 
> 	spmi_default_slice_regmap_config
> 

There are more complicated devices around that I didn't port to the new
spmi subdevices, and I really don't want to make a default for now.

At least some of those need different params (including some MediaTek ones
that are not upstream yet).

Can we please let this in and *then* see how much can be commonized after
the majority of more complicated drivers are migrated in the future?

Regards,
Angelo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

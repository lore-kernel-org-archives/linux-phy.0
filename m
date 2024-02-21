Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 907C4C48BF6
	for <linux-phy@archiver.kernel.org>; Wed, 21 Feb 2024 10:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IcJmyGpWZT1tuU3BfhSz0r1HGJK+/1K+ooWtw4q2r2M=; b=fPbJJ6WJCt+uov
	AJrkRTu+gXE9mj0Zbat56ONbFikOsB3LpcHi51Rku+tIGkLULiHBuE8trvvDHtTmqLoCLDYKjvui4
	0XmTmbqhSheXg4A2UTSL/JV+5BK0VRBiBs9yzfHyeuoMX/VOyi5xR7YEHdXv9oC6k6ebLWuiA79AP
	jhoHNiGEmmW00kbNfKwDeTWDKd6j9vFk6lZoNoJTomnxH5bPDxdTzFP0qjFyB8Sr1gkUByOJOZB5H
	dmQi2etaP189piIWawQ418JutyjauKlJNfm7qTIqDrkjwjR/0Pi1aS+f8bm16g1uMdavN9BPEcjoE
	SQarYAGd7z+dPTIjXCzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rckJs-00000000bLv-0yBe;
	Wed, 21 Feb 2024 10:59:20 +0000
Received: from relay9-d.mail.gandi.net ([2001:4b98:dc4:8::229])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rckJn-00000000bIq-2ukj;
	Wed, 21 Feb 2024 10:59:17 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 23106FF809;
	Wed, 21 Feb 2024 10:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1708513149;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zEHFQ0b81cDkLGXCwktGr5yACT9BYmzY2jUziR5kBWE=;
	b=O2cnQkRkGWcS8AeId+uKeW5crrGFVmgagH9G9AFsXOgr9cYdITOV3qZ7FuVoN8k7d+WuvJ
	pnRsOIxo3yVXZWVIPTLiQNSR171q9h3D/FPpeBY6FCJzbDnihnWWNLnyB6+baU2WvkqGeT
	4XvgzNBTPWtDPBYnc3/VWIzpl59yjELncXzktjt7ydKr5n5QdxeiSwUJWWsqM/y3WIqBOi
	2xdQHYgYfEQNZ7XFePjr4zjIVsMaDmDn3fdPbBd3ewJXLjizpaWX6cxbcvb+DoqGwnO6p2
	RXM1ok5jXdYesnUqM/tetsnKP8xZezDXM3pVm/6OinnHjN+1N6V7oryM6Mrh9g==
Message-ID: <eb37a117-74bd-44fe-b677-89dc7c2aced8@bootlin.com>
Date: Wed, 21 Feb 2024 11:59:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/18] mux: add mux_chip_resume() function
Content-Language: en-US
To: Andy Shevchenko <andy@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Tony Lindgren <tony@atomide.com>,
 Haojian Zhuang <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, Andi Shyti
 <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
 theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com, u-kumar1@ti.com
References: <20240102-j7200-pcie-s2r-v3-0-5c2e4a3fac1f@bootlin.com>
 <20240102-j7200-pcie-s2r-v3-5-5c2e4a3fac1f@bootlin.com>
 <Zc4t82V9czlEqamL@smile.fi.intel.com>
 <f1d2c9b0-238d-4b09-8212-62e00a2192b2@bootlin.com>
 <Zc96Ke_iG_bHIvkP@smile.fi.intel.com>
From: Thomas Richard <thomas.richard@bootlin.com>
In-Reply-To: <Zc96Ke_iG_bHIvkP@smile.fi.intel.com>
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_025916_198398_E4058EA5 
X-CRM114-Status: GOOD (  19.48  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 2/16/24 16:07, Andy Shevchenko wrote:
> On Fri, Feb 16, 2024 at 08:52:17AM +0100, Thomas Richard wrote:
>> On 2/15/24 16:29, Andy Shevchenko wrote:
>>> On Thu, Feb 15, 2024 at 04:17:50PM +0100, Thomas Richard wrote:
> 
> ...
> 
>>>> +int mux_chip_resume(struct mux_chip *mux_chip)
>>>> +{
>>>> +	int global_ret = 0;
>>>> +	int ret, i;
>>>> +
>>>> +	for (i = 0; i < mux_chip->controllers; ++i) {
>>>> +		struct mux_control *mux = &mux_chip->mux[i];
>>>> +
>>>> +		if (mux->cached_state == MUX_CACHE_UNKNOWN)
>>>> +			continue;
>>>> +
>>>> +		ret = mux_control_set(mux, mux->cached_state);
>>>> +		if (ret < 0) {
>>>> +			dev_err(&mux_chip->dev, "unable to restore state\n");
>>>> +			if (!global_ret)
>>>> +				global_ret = ret;
>>>
>>> Hmm... This will record the first error and continue.
>>
>> In the v2 we talked about this with Peter Rosin.
>>
>> In fact, in the v1 (mux_chip_resume() didn't exists yet, everything was
>> done in the mmio driver) I had the same behavior: try to restore all
>> muxes and in case of error restore the first one.
>>
>> I don't know what is the right solution. I just restored the behavior I
>> had in v1.
> 
> Okay, I believe you know what you are doing, folks. But to me this approach
> sounds at bare minimum "unusual". Because the failures here are not fatal
> and recording the first one may or may not make sense and it's so fragile
> as it completely implementation-dependent.

I guess if there is an error, the resume is completely dead so no need
to continue.
If it's okay for Peter I can return on first failure.

Regards,

-- 
Thomas Richard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

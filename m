Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56B0CC46CD2
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jan 2024 16:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZGet+4D/QoxVCveCVq4vbZw8tg+8KTbYPiEpGj9s+I4=; b=Omq+nbWxggGOBs
	Osc9+O4MfPHn5586OZICgwvvIvhSGCnGIkaPWHTPjQIaneyX8JuVGf4/tXDB5MQ0wfeBJYj1zF+Mm
	k5i3GpmpABbP6S54wwAvdJEsZblxZTSNVDkomqjz7M8KqvMAA0ti4XNVx661L/6k+5QTj0YIHdX55
	gPh7gEagGfyGctRBJQ/AglLGMN2ciILzRNua8IMWjjwMgC3tDApEfuPP8eif6eX8F9DUBalLZciWj
	ktggy0ViuttwqlVCFiNAwZNgUhrQfsMyz1rQRtn2wzs0afpjNE/m7JGbxXMKuUXjAef3IPvF1onmx
	vEB12PA1Y64DFrvtmoeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUqv7-0000000HLNP-09ck;
	Tue, 30 Jan 2024 16:25:09 +0000
Received: from relay4-d.mail.gandi.net ([2001:4b98:dc4:8::224])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUqv1-0000000HLMD-0wpd;
	Tue, 30 Jan 2024 16:25:05 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 88403E000D;
	Tue, 30 Jan 2024 16:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1706631898;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZHkqbFk+Vk9oWvO+zXaPrJlPTtbdOjauegS4Logzkxc=;
	b=TpeOY9XwHjybi7vDlZoSJEubrDKOD/C/3lglkP7G//elDe4lrK1vGTAozuHEZQ4rEQV0QV
	Flx7pENaAQoeA8SoDLt8PcmYicrAAYXYxAwigTNFzdysIb6ahwei1RdWUttg8DFN1sgRAM
	/4ND8G2IK8g3pUY6JUog/Z663HyHWnERZ78rVtSngvqy1auUeQ9cuNc/dchqwh0ajmF21u
	MlLLlH0YmN0lWfTOALXCw+P5h5FZpk6iaKN1xwF4Zi1wLWV5Qw7o46kY5TxQTzcrd4HLMb
	z2AKrPREptUMw40VXgqsoTS2IOZJbW29lc787rqvmYUVxdFmpR+Q6ad7tGQpEg==
Message-ID: <344da0db-55ef-4445-8e14-9c2f53e0c33c@bootlin.com>
Date: Tue, 30 Jan 2024 17:24:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/15] mux: add mux_chip_resume() function
Content-Language: en-US
To: Peter Rosin <peda@axentia.se>, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Haojian Zhuang
 <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, Andi Shyti
 <andi.shyti@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Tom Joseph <tjoseph@cadence.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
 theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com, u-kumar1@ti.com
References: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com>
 <20240102-j7200-pcie-s2r-v2-4-8e4f7d228ec2@bootlin.com>
 <6568893d-13c7-ef1f-9c3f-88de0701c7aa@axentia.se>
From: Thomas Richard <thomas.richard@bootlin.com>
In-Reply-To: <6568893d-13c7-ef1f-9c3f-88de0701c7aa@axentia.se>
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_082503_590456_107DDDDF 
X-CRM114-Status: GOOD (  24.54  )
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

On 1/30/24 09:25, Peter Rosin wrote:
> Hi!
> 
> 2024-01-26 at 15:36, Thomas Richard wrote:
>> The mux_chip_resume() function restores a mux_chip using the cached state
>> of each mux.
>>
>> Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
>> ---
>>  drivers/mux/core.c         | 27 +++++++++++++++++++++++++++
>>  include/linux/mux/driver.h |  1 +
>>  2 files changed, 28 insertions(+)
>>
>> diff --git a/drivers/mux/core.c b/drivers/mux/core.c
>> index 775816112932..896f74b34eb8 100644
>> --- a/drivers/mux/core.c
>> +++ b/drivers/mux/core.c
>> @@ -215,6 +215,33 @@ void mux_chip_free(struct mux_chip *mux_chip)
>>  }
>>  EXPORT_SYMBOL_GPL(mux_chip_free);
>>  
>> +/**
>> + * mux_chip_resume() - restores the mux-chip state
>> + * @mux_chip: The mux-chip to resume.
>> + *
>> + * Restores the mux-chip state.
>> + *
>> + * Return: Zero on success or a negative errno on error.
>> + */
>> +int mux_chip_resume(struct mux_chip *mux_chip)
>> +{
>> +	int ret, i;
>> +
>> +	for (i = 0; i < mux_chip->controllers; ++i) {
>> +		struct mux_control *mux = &mux_chip->mux[i];
>> +
>> +		if (mux->cached_state != MUX_CACHE_UNKNOWN) {
>> +			ret = mux_control_set(mux, mux->cached_state);
>> +			if (ret < 0) {
>> +				dev_err(&mux_chip->dev, "unable to restore state\n");
>> +				return ret;
> 
> I'm don't know what is expected of the core resume code on error,
> but is it ok to return on first failure? Is it not better to try
> to restore all muxes and return zero if all is well or the first
> failure when something is up?
> 
> But maybe the resume is completely dead anyway if there is any
> failure? In that case the above early return is fine, I guess...
> 

In the first iteration of this series (when it was done in mmio driver),
it restored all muxes and returned zero or the first failure.
I don't know why I changed the behaviour.
For me it's better to try to restores all muxes.

-- 
Thomas Richard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

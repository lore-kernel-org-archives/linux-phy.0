Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D9A0C48BF6
	for <linux-phy@archiver.kernel.org>; Wed, 21 Feb 2024 14:19:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C2+du99/Hd+leuAM+VLZElFGHko07e+ft1J/11agB50=; b=amTsa3WDSw8/GA
	be2xX1mE3lO8K5ggPF/GUH3PYD+n5MSR2SnKEeXqolpgk6FmztCFJCz3WFTGcZvKNzP0dcPHMsAeR
	n3Qw3NdnvT99kXlbedMFeAPVCPPNf/PWB5CJfUS3p540doJ7Wx5XrEAXyRwUwT7OPYnkRSNjKbiVF
	bkqmiuZNMYUHpphDVK4Sl72rV+k49Xi1XJEyT8NYNUTPJUpbmBchYRv3WGp/SG7G/N2pYnVqBgpMX
	czGq7HVH8vezTwimik1cKUHjjwA4NLuP5oYQkNL+Mg6ML9ia1FqGMerUyXq7hY975jmxt8bx7XJfl
	JF4mNsWQWxFgILAQPm9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcnRe-00000001Egt-32tA;
	Wed, 21 Feb 2024 14:19:34 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcnRa-00000001Ef3-3Y1K;
	Wed, 21 Feb 2024 14:19:32 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 334A660005;
	Wed, 21 Feb 2024 14:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1708525167;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=djgIwKG8h1E1vBHOq7Yx/ZY0Ehwdq+Fa2OAPhHy5Bg0=;
	b=BH3RU58z7cr7I5bVawgKgfnYC5GysBok+JTGHq7LVbJ85EirfpHA2o2XLzRR+7UrXVwEfR
	/wZa6tcSK+DMxgMWmUsnNDaOR0N1r8YgkoRdYceug+1Yk4JmUTFRDvRCA3/cymZ9XpUHr/
	vd1WaoQ4pQTMeRzCHOJKwuvBlu9/+rOifdvv6q5fqfzwFEr1d5o71iFGgd3kc3AOzFnAO1
	A1snWfe4kw4sZl4URubjBTzCzQTc4uqweCPYbYIuoPmUagYG9LKMcqiXTtnvElDi8wKgo0
	I0H6nXBonAHEME2N7LD4uGH31cYGjo3LmMOeUpuFAYUSps2nLsFC7ihsE8gNUA==
Message-ID: <b0220b02-5058-42ec-ba06-251caa4813dc@bootlin.com>
Date: Wed, 21 Feb 2024 15:19:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 02/18] pinctrl: pinctrl-single: remove dead code in
 suspend() and resume() callbacks
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
 <20240102-j7200-pcie-s2r-v3-2-5c2e4a3fac1f@bootlin.com>
 <Zc4tedAhqYX3bQcw@smile.fi.intel.com>
 <78add459-a96a-46c6-83ff-e2657d4d3db4@bootlin.com>
 <Zc96dSff5Y-dufrJ@smile.fi.intel.com>
 <a2c3c5b9-79a3-4793-892c-b1ab79b71c7d@bootlin.com>
 <ZdX28EJ9LtDWfVmH@smile.fi.intel.com>
From: Thomas Richard <thomas.richard@bootlin.com>
In-Reply-To: <ZdX28EJ9LtDWfVmH@smile.fi.intel.com>
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_061931_185308_CD4FEA50 
X-CRM114-Status: GOOD (  15.76  )
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

On 2/21/24 14:13, Andy Shevchenko wrote:
> On Wed, Feb 21, 2024 at 12:01:43PM +0100, Thomas Richard wrote:
>> On 2/16/24 16:08, Andy Shevchenko wrote:
>>> On Fri, Feb 16, 2024 at 08:59:47AM +0100, Thomas Richard wrote:
>>>> On 2/15/24 16:27, Andy Shevchenko wrote:
>>>>> On Thu, Feb 15, 2024 at 04:17:47PM +0100, Thomas Richard wrote:
>>>>>> No need to check the pointer returned by platform_get_drvdata(), as
>>>>>> platform_set_drvdata() is called during the probe.
>>>>>
>>>>> This patch should go _after_ the next one, otherwise the commit message doesn't
>>>>> tell full story and the code change bring a potential regression.
>>>>
>>>> Hello Andy,
>>>>
>>>> I'm ok to move this patch after the next one.
>>>> But for my understanding, could you explain me why changing the order is
>>>> important in this case ?
>>>
>>> Old PM calls obviously can be called in different circumstances and these
>>> checks are important.
>>>
>>> Just squash these two patches to avoid additional churn and we are done.
>>
>> You mean invert the order instead of squash.
> 
> Either would work, but see how much churn in terms of changing just changed
> lines it adds.

OK thanks.

I'll squash the two patches. And I'll add a comment which explains that
I dropped some dead code.

Regards,

-- 
Thomas Richard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

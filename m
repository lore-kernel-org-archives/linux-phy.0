Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF6ADC48BC3
	for <linux-phy@archiver.kernel.org>; Wed, 21 Feb 2024 11:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vQqwkpQHShwjHtZqoBO0MISfKJV3KkSwq7YkyFbeXkk=; b=GyYPGSsAKwdmyY
	qD3XCjxugbvcOZnlCTxmOzF93cRAy1Mp/l28dOblkM4pgkpvEmnut6E2sPNHnDAjxvWT2GmLgVt0c
	llLNBdp8wLD3EZASoHU1xJgvzd7QCi2eeG5LnY4cz13v5Bbf/cFGGRg91qoHrqkE8ZmPPAtWEyVFC
	3XDIxkk2TAiF9WwinoxXnABukgIsyKbuXVOTLLS3I+LUov+td5CnRSgi1YsBGxtUlL7RZ2XZwKv6F
	/h9VS+WVXM7lKYVKLplZ2y8uk4LSLVUjWNzHKU7C7eaUReO/tnUUcPZrQJ994qQFBBF/Q/McCmul7
	h9PKeazalcjb28CP0E4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rckMM-00000000c5f-2JcY;
	Wed, 21 Feb 2024 11:01:54 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rckMJ-00000000c3k-1vde;
	Wed, 21 Feb 2024 11:01:53 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 441241BF209;
	Wed, 21 Feb 2024 11:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1708513307;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vInAPH5p+e8119+v06ulfZ5lvJvXTu8ss9P3JzvQTHY=;
	b=XN2ZfXNc0o0/ZL9aDDvYuX0tX/X+cAUOjEyPjjYOeuCHaYl1rlDr1Zo2s5XyriovJpzcap
	5ZjBJwOO30nd09Epax4Smr0EKKs2MnvZ6Q3CHnOyYM6NwMgAUWRW4U6CmpYsOp6wOCBm6e
	Y4luy+dNbIH4qMXu7QFPc4ol2jaCvPTZ9WhoCrLsokTohJ569FN6n4JNHtW33M7bro/a6F
	PKuVY4qRveAwriMN481ITaN546VAyU3LywwhyzfSs6aURNBCIxVNE/C/trMpsclq4Q7hAZ
	Jc3HcZu+GwQDdXz9UFfQrUzBF5NmVJHPQyOh6pylNe/TMxTyGPghV8PG2xYDpA==
Message-ID: <a2c3c5b9-79a3-4793-892c-b1ab79b71c7d@bootlin.com>
Date: Wed, 21 Feb 2024 12:01:43 +0100
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
From: Thomas Richard <thomas.richard@bootlin.com>
In-Reply-To: <Zc96dSff5Y-dufrJ@smile.fi.intel.com>
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_030151_695333_E0E2B989 
X-CRM114-Status: GOOD (  14.43  )
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

On 2/16/24 16:08, Andy Shevchenko wrote:
> On Fri, Feb 16, 2024 at 08:59:47AM +0100, Thomas Richard wrote:
>> On 2/15/24 16:27, Andy Shevchenko wrote:
>>> On Thu, Feb 15, 2024 at 04:17:47PM +0100, Thomas Richard wrote:
>>>> No need to check the pointer returned by platform_get_drvdata(), as
>>>> platform_set_drvdata() is called during the probe.
>>>
>>> This patch should go _after_ the next one, otherwise the commit message doesn't
>>> tell full story and the code change bring a potential regression.
>>
>> Hello Andy,
>>
>> I'm ok to move this patch after the next one.
>> But for my understanding, could you explain me why changing the order is
>> important in this case ?
> 
> Old PM calls obviously can be called in different circumstances and these
> checks are important.
> 
> Just squash these two patches to avoid additional churn and we are done.

You mean invert the order instead of squash.

-- 
Thomas Richard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FED8C54E67
	for <linux-phy@archiver.kernel.org>; Wed, 20 Mar 2024 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ezPcbcOshQ5klG2A0siY62QOZL1zvHYiMIx2oC/UHzs=; b=hz5UmzJSQbOYk+
	Y+KY8S5tTmh4ExhHC/F5HCaUFV1dgBTo3CWgSgnzC041/dZqTEQ7tGPi+j0MEKhuP+XQXCITa/7qT
	2sbvF1tkk7Rrby2qybezXpvkaYYXnCjtdC4yJ7s74fUaZizj7qAydH2PoQHmbs3dP20FODDmtpmeW
	QrAdt5WwVre4v4ckCINU86LnjD4vMDTN+2CRgbaONiP4UE8BZoEiauqDOQabicPzedRCtzQXX2lw3
	MWGr7PLNHUVOpVSn5toSJApOByDyba/A9L8iKhpLVVzjUj0ID6mdGWzoWyqCHjDuH74yGqL9CYgkZ
	wOlcgk7HGCR2lArHcNcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmrS1-0000000GDYA-0xCb;
	Wed, 20 Mar 2024 08:37:33 +0000
Received: from relay2-d.mail.gandi.net ([2001:4b98:dc4:8::222])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmrRw-0000000GDUA-0lfx;
	Wed, 20 Mar 2024 08:37:30 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 45FB44000B;
	Wed, 20 Mar 2024 08:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1710923843;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=STDUP9Qpyn6byZT3Ex4nieAzKGvpxzwoBCLFYRcWYac=;
	b=YZcI3zZ6pCAGbOyaL4vujc3a8ofF3MTLoqFnqYp2nnh6+aION1xaleoyRffG047ewxT09f
	sAbNU86SW5htuCuTQnymVuuwp/9TS+uJ854aCbULiTNRZLut0QO6yurLmTxiWbboBE3Vzm
	idoVKgot7+G7goramB7nNFKAjUuPNJ3KWJB3N0XiT3x8T/NUECF7n64SH3OfaKGlZBGilc
	Rtwp2GMx7wArlXzCFnyM+RVp2pEedhtJy6oDAuH60kBFJK9byFbZNVdqce+2o4QoBChdg2
	WTV5ompOrojR4xHgMsWPjDHilcSja1wX1gZ5i3z5sqYkp3un611thZiP4rQbCg==
Message-ID: <feb63292-8739-41b2-9503-c83a6fd930fd@bootlin.com>
Date: Wed, 20 Mar 2024 09:37:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 02/18] pinctrl: pinctrl-single: move suspend()/resume()
 callbacks to noirq
Content-Language: en-US
To: Dhruva Gole <d-gole@ti.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Haojian Zhuang
 <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>,
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
 theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com, u-kumar1@ti.com,
 Andy Shevchenko <andy.shevchenko@gmail.com>
References: <20240102-j7200-pcie-s2r-v4-0-6f1f53390c85@bootlin.com>
 <20240102-j7200-pcie-s2r-v4-2-6f1f53390c85@bootlin.com>
 <20240320074431.6yzao3jlyaxuii7c@dhruva>
From: Thomas Richard <thomas.richard@bootlin.com>
In-Reply-To: <20240320074431.6yzao3jlyaxuii7c@dhruva>
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240320_013728_682217_CE8C26D8 
X-CRM114-Status: GOOD (  14.11  )
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

On 3/20/24 08:44, Dhruva Gole wrote:
> Hi,
> 
> On Mar 04, 2024 at 16:35:45 +0100, Thomas Richard wrote:
>> The goal is to extend the active period of pinctrl.
>> Some devices may need active pinctrl after suspend() and/or before
>> resume().
>> So move suspend()/resume() to suspend_noirq()/resume_noirq() in order to
>> have active pinctrl until suspend_noirq() (included), and from
>> resume_noirq() (included).
>>
>> The deprecated API has been removed to use the new one (dev_pm_ops struct).
>>
>> No need to check the pointer returned by dev_get_drvdata(), as
>> platform_set_drvdata() is called during the probe.
>>
>> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>> Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
>> Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
>> ---
> 
> I was planning to do this but didn't see particular benefit to it. Do
> you see the benefit on your specific device? Can you help me understand
> how? Not against the patch, just curious.

Hello Dhruva,

We need this patch to support suspend to ram for the PCIe on J7200.
In root complex mode, a gpio is used to reset endpoints.
This gpio shall be managed during suspend_noirq and resume_noirq stages.
On J7200 this gpio is on a gpio expander.
So we need this patch to restore pinctrl to be able to do i2c accesses
in noirq stages.

Best Regards,

-- 
Thomas Richard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

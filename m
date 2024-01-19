Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 922D0C4725D
	for <linux-phy@archiver.kernel.org>; Fri, 19 Jan 2024 17:01:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sEc4rKtGbpw1JFm7g/d2gdDIPFao/JaoAU85+d9mJjU=; b=2ou1ET3WxlWfe1
	FgnLy1bGGQ5nEnE/BWJNq+FkN/zoBFSJrtXbLijDO+6salCXIIxK/ngXNxTZIhdOuB0Uk1C7T0yDr
	ObHM8fRKoEM2GM9hVuw+InMX7UP+u0JeyXMjJ/FmP/dN+KXSgekuCFhT1elc1NXLkoLTFRc50LFZz
	FVYxIKgJvjBzuCY4LePll4E7PgMgQamXhQOYb8XXfPGBDZusJddP70jzc2lhi8KoZQx7ps5g68ojG
	sjg/Mwp8QEonX0yNjiUUajYtf2Y5xBwF4eqYbjCsCDd70yUBMLxjnKBFxkogepJ9gMOmNnax02sdd
	NJ4RLZ6Ce8/XSygJLiww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQsFZ-006CTB-0p;
	Fri, 19 Jan 2024 17:01:49 +0000
Received: from relay3-d.mail.gandi.net ([2001:4b98:dc4:8::223])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQsFV-006CSG-20;
	Fri, 19 Jan 2024 17:01:47 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 6628760008;
	Fri, 19 Jan 2024 17:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1705683698;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eVdcjZzigbSsBwmQGgrwuVfPvylwPhfnV7FRBwbX2os=;
	b=n5Ys6O1a3pgFCD8YPEUweyidUInNABWxqlfLFXid906sTYe60ORvrlbK71CBI/isWeSzOn
	bAJZB48SCZkaCy9IZUrW0gzUBsB+RqFunoD5ps9A3m1I2jeEiVpTmZLudBp9Pcb4asmMWY
	NHMtmXg7wIHSoS6+BWV8qu4wJNhKLPJ8B87VkQd5BjefZ2ZuMnXsAP+0y8c+fmbzp+yEG5
	bw/R/xpdxdvtVzf7gdyey4cBWrQclUNI4U1nSLKOh2tjtre/PiK8Vsnw3l10nkVUp5hlDf
	GMNYIsamhO2Xv3ZeBmLJvyKpy9JyUf2jfZ7mDmgdt0eehFhUNHQs9hTxKH5rWg==
Message-ID: <31c42f08-7d5e-4b91-87e9-bfc7e2cfdefe@bootlin.com>
Date: Fri, 19 Jan 2024 18:01:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/14] gpio: pca953x: move suspend/resume to
 suspend_noirq/resume_noirq
Content-Language: en-US
To: Tony Lindgren <tony@atomide.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
 Haojian Zhuang <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, Andi Shyti
 <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Tom Joseph <tjoseph@cadence.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
 theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com, u-kumar1@ti.com
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com>
 <20240102-j7200-pcie-s2r-v1-1-84e55da52400@bootlin.com>
 <20240116074333.GO5185@atomide.com>
From: Thomas Richard <thomas.richard@bootlin.com>
In-Reply-To: <20240116074333.GO5185@atomide.com>
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_090145_945366_E3B7A3F0 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
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

Hello Tony,

On 1/16/24 08:43, Tony Lindgren wrote:
> * Thomas Richard <thomas.richard@bootlin.com> [240115 16:16]:
>> Some IOs can be needed during suspend_noirq/resume_noirq.
>> So move suspend/resume callbacks to noirq.
> 
> So have you checked that the pca953x_save_context() and restore works
> this way? There's i2c traffic and regulators may sleep.. I wonder if
> you instead just need to leave gpio-pca953x enabled in some cases
> instead?
> 

Yes I tested it, and it works (with my setup).
But this patch may have an impact for other people.
How could I leave it enabled in some cases ?

Regards,

-- 
Thomas Richard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43497C47258
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jan 2024 08:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qde15NHxEVGdebTwZkiRJu6LYc+hCJJyDA2jHoa1y4E=; b=BZz0hOdgvFRE/k
	cJlOAL/HmG1OHbTlVfZMMRrb0tZCJJDlennm3QWOethCwKjkF9V7qNOieiVALj24AsCryFsStNFJp
	WKc9AWNAFPfPaPPSShUCf8WwvEaqP7gIFoh3bcxqd0fge0cY1tNRlBZRgU8AEtf7RgKcQ3C7XRi7B
	TAnKRCdSB9XQhIqmx4eWQwGvHxFV/ZUdLgu3/EA6F/NAdz7ql69kzzDFoMH1Apg+C+wBAUiZoDcp/
	3Wb7GSaqockt2meNd4WeogPm7426ZB3u/sjdJELKSe9eFNt+XR6H+UgwvtxNnGwFkX8zDi8IApiqD
	jdinZzEC8eOMava2UyXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSC17-00FWII-2n;
	Tue, 23 Jan 2024 08:20:21 +0000
Received: from relay3-d.mail.gandi.net ([2001:4b98:dc4:8::223])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSC13-00FWHh-3C;
	Tue, 23 Jan 2024 08:20:20 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 48FE360005;
	Tue, 23 Jan 2024 08:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1705998012;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hRb7TeIHk44yo6aUmwYhCI2i2ouU8zTc+wLvrMIpmr4=;
	b=aBl1u3WK+HzKOi12YlfomEPiXE7oEjgKgdx9VA4kJ607Zqrod7ESeoT2g8JjsJyFYARVSn
	8hqbBf0oCB1OO9XCYJ3b6msx1ODtd6kQ7Vay/Tdi6BA24BUi5FaTbbtBFHkTplj3lzkmZl
	bfkxBc0hTEk1hKVRwHEWMpi11uw5zt683rJdppYxfmIKeTti0ptM74oGMWiRGnDs77h6Y/
	kbZbcbW1GElFkmmQFze0Nrx4jgK01qfw99AtNBOnhPsRX/dUlhYpmcp6GJ9B8UcDZaBhSi
	Gn0nD1t7Ef5dFHw/aG5RzE8T4P2ifgrIZMFb4h1Tx4a20+06K+UVKPoynRFrQg==
Message-ID: <d005e3c5-08b3-4a4f-b1ed-e02bde82c2f9@bootlin.com>
Date: Tue, 23 Jan 2024 09:20:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/14] phy: ti: phy-j721e-wiz: make wiz_clock_init
 callable multiple times
Content-Language: en-US
To: Vinod Koul <vkoul@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Haojian Zhuang
 <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, Andi Shyti
 <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
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
 <20240102-j7200-pcie-s2r-v1-5-84e55da52400@bootlin.com>
 <Za9oR8BpoufCRNIw@matsya>
From: Thomas Richard <thomas.richard@bootlin.com>
In-Reply-To: <Za9oR8BpoufCRNIw@matsya>
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_002018_339292_9B49219F 
X-CRM114-Status: UNSURE (   5.35  )
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

>>  
>> -	ret = wiz_clock_init(wiz, node);
>> +	ret = wiz_clock_init(wiz, node, true);
> 
> You are calling it one once? So what am I missing

In patch 6/14, wiz_clock_init is called in resume_noirq callback:

ret = wiz_clock_init(wiz, node, false);

Regards

-- 
Thomas Richard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

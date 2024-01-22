Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E272C47DAF
	for <linux-phy@archiver.kernel.org>; Mon, 22 Jan 2024 14:24:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hvw9A3mjTtO+Bd0cR+k/CQl/IFJ8om6/f4P0LpoHCL0=; b=CAcT9nGVLw5H+H
	+qNLAehLvC7tbKCtZ84slvT8Nicpq6ZpKOMy5VXeEjN/JfiD5g5xzbo266mvNbJYFkt5EULdrRy4+
	r2Q9vZAGnhYiVZ0TN5iASmhfis/8CrIIt2pO0x9VUIkZqQy3gR/pxidXRrZ64TLDrQ9hkYyYA3s0k
	tEjIH/Bkx/LESZbPuy7XbsN7LvMqrYX3dyQm2dAuL2A0fuEs1lOedOmDSCvlsi/3XEs6T2HOaYzr+
	wGFbJ8Da1DPO9k/Wz9J1TTHCoJjezj0ecO4R8D1JGer/UCHT2iQNjdzB8Kd+es0QQPUMvNGBL9IjC
	260l21AWl9fmZjv/qjpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRvDh-00CO0L-31;
	Mon, 22 Jan 2024 14:24:13 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRvDe-00CNzX-1d;
	Mon, 22 Jan 2024 14:24:12 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 562831BF20E;
	Mon, 22 Jan 2024 14:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1705933445;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PrbPm4U9gTUgFkdJBeExNHbmpdtsVHY66VNg0wV3TpI=;
	b=UCjldjGAg35lVQBN0mR/Ja8PzHUW42EQboTIr9Q5NKy+PB/D28qdW1oOc4F5ZQ3/MGfsKu
	2+wCbOhAspaJUoKrzJXTj/fpGlUEHwLMZPqVrE5VeUo0u6ZMn3a9uXf+5m0B3LZ5rDpsYh
	nhBuF/hIsEIUuVeCO7HY3X/NFUT+J3fCfoSqZv/FjddnaMfhqTbIG/s8958X5CdNcqGfQC
	K9b1ACXRkYKCZ36n5YKaTaDCLOCEimcQEo1ghUhX1cw2kqbbnHBXEbejobqdkdGMVh5wdW
	uYszU+SivBh3bBHK9O5iK8tf9oPdXsGCgOTYpLJ6gYFt0l2TZEXtlOPMvgZImw==
Message-ID: <71c7e797-feaa-4285-9399-327b24308a34@bootlin.com>
Date: Mon, 22 Jan 2024 15:24:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/14] phy: cadence-torrent: add suspend and resume
 support
Content-Language: en-US
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Haojian Zhuang
 <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>,
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
References: <20240116182244.GA101245@bhelgaas>
From: Thomas Richard <thomas.richard@bootlin.com>
In-Reply-To: <20240116182244.GA101245@bhelgaas>
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_062410_847215_9283E841 
X-CRM114-Status: GOOD (  11.59  )
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

Hello,

On 1/16/24 19:22, Bjorn Helgaas wrote:
> On Mon, Jan 15, 2024 at 05:14:52PM +0100, Thomas Richard wrote:
>> Add suspend and resume support.
>> The alread_configured flag is cleared during suspend stage to force the
>> phy initialization during the resume stage.
> 
> s/alread_configured/already_configured/
> 
> Wrap to fill 75 columns.  Add a blank line if you intend two
> paragraphs.
> 
> I don't know whether there's a strong convention in drivers/phy, but I
> see several commit logs that capitalize "PHY".  "Phy" is not a
> standard English word, so I think the capitalization makes it easier
> to read.
> 

Yes indeed, PHY is used in lots of commit logs.
So I guess I can use it.

Regards,

-- 
Thomas Richard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

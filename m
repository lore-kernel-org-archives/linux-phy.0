Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A98EFC48260
	for <linux-phy@archiver.kernel.org>; Fri, 16 Feb 2024 09:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y10jD7MqhJD/wa+pHlmnHeqzfDEi1FTRcs+9lCChSHs=; b=hRrovbS7uBmk6I
	rUgSUB8K0/V7UFUbELoCpBpYjFDzLttTAJVWiF+4wl01gMgpeHlPziubbB155h0JTCCSP87YZc0w4
	oaihOjcKYQbyv/3RUTyWCZ6aADtApP+KGdRIVqaeCgQFusiillq/mz/uuoa/wxZSn0MKVY6NnPkao
	7ObXUtzyhdfw4dkxuGCvT3p3UbvCDDGH1CDVizEP6qDn0yvMdO4Th67MpBLWTBEhBFRWV3Q46O8AT
	YQ3ReEBmGbrBuZIZ3HFrFo1GUuYSWOsaLl/Znk8JAtlzS0hLQJs4Jn687rBqJGDCEmhS0CeaNeEvE
	2ZEszOps4EvdGvsxLuhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rau9i-00000001fIn-1XC9;
	Fri, 16 Feb 2024 09:05:14 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rau9e-00000001fH2-26B5;
	Fri, 16 Feb 2024 09:05:11 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 41G94eJE042556;
	Fri, 16 Feb 2024 03:04:40 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1708074280;
	bh=qKnEBzEkahRZQGyLlG5caVJAX0ujkHEkHCnhmcHnJss=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=Ga1ELh13Fmc4SCWCtqOcJOvkxzdlZcoRb+2I2ZtdsBOn+CHXoQZBCTZqXQO27M3GE
	 m+QAAFnGAOnJiRL3AGE3v/YrTKt/Tddb7d18CVJad8VrRKNSSCBFxqe1xJTGhfaXX1
	 N+K101UbOoQH2ziHXxgx59QU6QLKo1rC7coWs7q8=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 41G94ecD023131
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 16 Feb 2024 03:04:40 -0600
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 16
 Feb 2024 03:04:40 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 16 Feb 2024 03:04:40 -0600
Received: from localhost (uda0492258.dhcp.ti.com [172.24.227.9])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 41G94drM059981;
	Fri, 16 Feb 2024 03:04:40 -0600
Date: Fri, 16 Feb 2024 14:34:39 +0530
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Andy Shevchenko <andy@kernel.org>,
        Thomas Richard
	<thomas.richard@bootlin.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>, Tony Lindgren <tony@atomide.com>,
        Haojian Zhuang <haojian.zhuang@linaro.org>,
        Vignesh R <vigneshr@ti.com>, Aaro
 Koskinen <aaro.koskinen@iki.fi>,
        Janusz Krzysztofik <jmkrzyszt@gmail.com>,
        Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>,
        Kishon
 Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof
 =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        <linux-gpio@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-omap@vger.kernel.org>,
        <linux-i2c@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-pci@vger.kernel.org>, <gregory.clement@bootlin.com>,
        <theo.lebrun@bootlin.com>, <thomas.petazzoni@bootlin.com>,
        <u-kumar1@ti.com>, <s-vadapalli@ti.com>
Subject: Re: [PATCH v3 08/18] phy: ti: phy-j721e-wiz: split wiz_clock_init()
 function
Message-ID: <14429802-b4d8-4a3e-88ea-a9fc55d2251c@ti.com>
References: <20240102-j7200-pcie-s2r-v3-0-5c2e4a3fac1f@bootlin.com>
 <20240102-j7200-pcie-s2r-v3-8-5c2e4a3fac1f@bootlin.com>
 <Zc4xJtLl3zo_YrBC@smile.fi.intel.com>
 <Zc76d4B4hjTC3xum@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Zc76d4B4hjTC3xum@matsya>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_010510_640554_7B4CE59A 
X-CRM114-Status: GOOD (  17.25  )
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

On 24/02/16 11:32AM, Vinod Koul wrote:
> On 15-02-24, 17:43, Andy Shevchenko wrote:
> > On Thu, Feb 15, 2024 at 04:17:53PM +0100, Thomas Richard wrote:
> > > The wiz_clock_init() function mixes probe and hardware configuration.
> > > Rename the wiz_clock_init() to wiz_clock_probe() and move the hardware
> > > configuration part in a new function named wiz_clock_init().
> > > 
> > > This hardware configuration sequence must be called during the resume
> > > stage of the driver.
> > 
> > ...
> > 
> > (Side note, as this can be done later)
> > 
> > >  	if (rate >= 100000000)
> > 
> > > +		if (rate >= 100000000)
> > 
> > > +	if (rate >= 100000000)
> > 
> > I would make local definition and use it, we may get the global one as there
> > are users.
> > 
> > #define HZ_PER_GHZ	1000000000UL
> 
> Better to define as:
> #define HZ_PER_GHZ 1 * GIGA

The variable "rate" is being compared against 100 MHz and not 1 GHz.
The driver already has the following macros defined:
#define REF_CLK_19_2MHZ         19200000
#define REF_CLK_25MHZ           25000000
#define REF_CLK_100MHZ          100000000
#define REF_CLK_156_25MHZ       156250000

So would it be acceptable to change it to:
	if (rate >= REF_CLK_100MHZ)
instead?

Regards,
Siddharth.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

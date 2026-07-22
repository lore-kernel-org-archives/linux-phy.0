Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E5ADC4452D
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 07:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=On+DICbanjgyLIoH6kJylkt0OT/v32elJGRr9kZz1Ho=; b=KoC9ZmBL5rE9ax
	u2Am89nl7vSAXzzWbBudrAvRu9vqf/WFpl37AwVkE4xPaHntvbLnypLTDtFLzgnn7TdnqfEvWVtB2
	gah/TjIyKG/br/4lFdIdeShppY70W4SdJQuryrbviZ+qRnYtp0OHd2V64840EJ30vrQ39JqoLTX+w
	KAHBYUFCsW3TZ8N/wNeUYEkf3WLCP7GOMWLTOvVt80En0Nk3Madgaa0VW+pYaAUtGXRQbtx1NA1q8
	VRCYUp2dTPPTxFLbL8X4NgyBGrjyEL0KMvmM09xOaX1ITMRACfjmgpmPzh/VBItzH1QuXitHu2XRp
	22tcEBBPLiniABntKDqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmQwn-0000000B1LR-3k6f;
	Wed, 22 Jul 2026 07:00:53 +0000
Received: from pi.codeconstruct.com.au ([203.29.241.158] helo=codeconstruct.com.au)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmQwk-0000000B1Kg-2Eav;
	Wed, 22 Jul 2026 07:00:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1784703648;
	bh=C55jJmDfmGi6xpILXoNlr/fLTzAI61lVTFq8ZnYY1Ss=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=L4ROw7WmxD0DtmLKlIjP2iYeD33ovUCxgEUFLf71Ovsb1jkdAagvaoppTpL0ATlN/
	 NQXSxgO8Nx0vj91tGSZACMYqo0NGJ+fjv53HUK4niolcSHps04ETXjiB3gAVNRsF96
	 qOPyznz4DllyhGchKA14oBLQWTmX4FGnhNWfq0jhv8Xwa2AWGmNxRC4bjV/cb33QT+
	 HY+1jeTBEB1Sr4YCBUbGGsTcUVhcHpP42qJ49UeT5ZZ73Fz3bA7Ol7p2wA2SQ7UVr7
	 z/AExnCM14rq2P04jrvVGWPQ8lk/f7vTzM5DCJQYAyOMi6iRR7j0wp/wy4H90Du5iV
	 S1bCyb8/Aycmw==
Received: from [192.168.68.117] (unknown [180.150.112.11])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 23BB465B37;
	Wed, 22 Jul 2026 15:00:47 +0800 (AWST)
Message-ID: <ca289e45bbde8e8a2f823a1660aa0a8f88e94bc4.camel@codeconstruct.com.au>
Subject: Re: [PATCH v2 2/3] phy: add AST2700 usb3.2 phy driver
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Ryan Chen <ryan_chen@aspeedtech.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Joel Stanley	 <joel@jms.id.au>, Philipp Zabel
 <p.zabel@pengutronix.de>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
 "devicetree@vger.kernel.org"
	 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	 <linux-arm-kernel@lists.infradead.org>, "linux-aspeed@lists.ozlabs.org"
	 <linux-aspeed@lists.ozlabs.org>, "linux-kernel@vger.kernel.org"
	 <linux-kernel@vger.kernel.org>
Date: Wed, 22 Jul 2026 16:30:46 +0930
In-Reply-To: <TY2PPF5CB9A1BE6AE5B658D558EBDF24450F2F82@TY2PPF5CB9A1BE6.apcprd06.prod.outlook.com>
References: <20260116-upstream_usb3phy-v2-0-0b0c9f3eb6f4@aspeedtech.com>
		 <20260116-upstream_usb3phy-v2-2-0b0c9f3eb6f4@aspeedtech.com>
	 <ddb133ca1a3be605ee776b2276c1907c9ad32491.camel@codeconstruct.com.au>
	 <TY2PPF5CB9A1BE6AE5B658D558EBDF24450F2F82@TY2PPF5CB9A1BE6.apcprd06.prod.outlook.com>
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_000050_859616_AFF7F1F3 
X-CRM114-Status: GOOD (  15.56  )
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

On Wed, 2026-07-15 at 05:55 +0000, Ryan Chen wrote:
> 
> > 
> > > +	}
> > > +
> > > +	/* Wait for USB3 PHY internal SRAM initialization done */
> > > +	ret = readl_poll_timeout(aspeed_phy->regs + PHY3S00, val,
> > > +				 val & PHY3S00_INIT_DONE,
> > > +				 USEC_PER_MSEC, 10 * USEC_PER_MSEC);
> > > +	if (ret) {
> > > +		dev_err(aspeed_phy->dev, "SRAM init timeout\n");
> > > +		goto err_assert_reset;
> > > +	}
> > > +
> > > +	val = readl(aspeed_phy->regs + PHY3S00);
> > > +	val |= PHY3S00_SRAM_BYPASS;
> > > +	writel(val, aspeed_phy->regs + PHY3S00);
> > 
> > According to the datasheet PHY3S00[15] (PHY3S00_INIT_DONE above)
> > indicates that the PHY internal SRAM initialisation is complete. The datasheet
> > reports the SRAM is used for configuration of calibration among other things.
> > PHY3S00[6] instructs the PHY that software has completed loading the
> > configuration data into SRAM, however PHY3S00_SRAM_BYPASS (PHY3S00[7])
> > tells the PHY to load configuration from "hard wired" values.
> > 
> > Is it necessary to wait for SRAM initialisation to complete if we're bypassing it?
> > Or are there other side-effects involved in the setting of PHY3S00[15]?
> 
> Yes, it is necessary to wait SRAM initial, the driver polls PHY3S00[15].
> It reports that the boot loader in the PCS has finished initialising the 
> SRAM (loading the contents into the PCS), and that initialisation has
> to complete before sram_bypass (PHY3S00[7]) may be asserted. 
> 

Can you improve the comment then to make it clear that the wait is
necessary despite the bypass?

Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

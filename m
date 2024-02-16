Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFC6FC48260
	for <linux-phy@archiver.kernel.org>; Fri, 16 Feb 2024 07:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7S1Zk1HvpzoYnpGnGReAyioGWGlpyaROifQaQRGjYM8=; b=VZ0sdpKKBPKhsg
	v1Sg5fSVd6jQ4Dxa1E90qfRYTVTceevX58rtc1ynoZgpeB9L2fx8ioUJQg3Xc++rCLxT13W+Fem19
	E4UqtRXhEMoqrt1Uw1jIAKhgn5pN2m9ea8RbgLKF1/nRJarU4cne0ahRo5VL9n4GML+ZG/3foj0hk
	kaQF1mJy7rIephf1KQqSjgUNwyDTrmeNEP0ssB6p1Jbpe0YB4ZvnWM1X9pnuIyz/cxsZuagQVga6A
	kITor74Akh2ACDAZIBdKvkp0+luWCeI1lz1g2wO3HgH/KVa4NhhscivTmlP0WYRm5Xt+NLVDcYWnR
	hSnZQgDcJaFNeTATMx6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rasmD-00000001OSU-1ysW;
	Fri, 16 Feb 2024 07:36:53 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rasm9-00000001ORm-0CNK;
	Fri, 16 Feb 2024 07:36:51 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 4FD8924000B;
	Fri, 16 Feb 2024 07:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1708069005;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OceffZlD1lIRrksGFR8T20wExx5FlLvt5rO7c2PaCW0=;
	b=GTRnjZLfmc2MBgiM1Zf60+hsxmEgvJSAgGfpD3EUcdMGy67ksahC4u4bWw6gKe4BQLm9hS
	LSV9/i/SxXWbTXIqhaVJny94dwU7J7Isx8fOfAUKJFhgAgoCYOrmGsMTESGCeDB6JTGFIx
	q5CjZxup1yTajZRgaH2xgPhKjnLk2R2zInVEGgxJpobpIO5whKDl979ttmSKs20EC9Fekb
	QbuTDbEJbLinNt/aR2Gd7PolhTTx71myPFc0Qrt8WHYyWBLbc6YElGLJ1iqsVEV3vjBB/k
	Cm9HzvOLZsKgKefbLRhMbBSa+TJXzKMTB3VgMlVA5smCpuKtnfYMNLZP2B8axw==
Message-ID: <e009fda0-3dd1-4834-8dce-73756c1e32f6@bootlin.com>
Date: Fri, 16 Feb 2024 08:36:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 14/18] phy: cadence-torrent: add suspend and resume
 support
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
 <20240102-j7200-pcie-s2r-v3-14-5c2e4a3fac1f@bootlin.com>
 <Zc4x7kvFfBI2sb_E@smile.fi.intel.com>
From: Thomas Richard <thomas.richard@bootlin.com>
In-Reply-To: <Zc4x7kvFfBI2sb_E@smile.fi.intel.com>
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_233649_527641_2C2816D9 
X-CRM114-Status: GOOD (  11.17  )
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

On 2/15/24 16:46, Andy Shevchenko wrote:
>> +static int cdns_torrent_phy_suspend_noirq(struct device *dev)
>> +{
>> +	struct cdns_torrent_phy *cdns_phy = dev_get_drvdata(dev);
>> +	int i;
> 
> Why signed?

In the for loop below, the i variable is compared to
cdns_phy->nsubnodes, which is an int.

https://elixir.bootlin.com/linux/latest/source/drivers/phy/cadence/phy-cadence-torrent.c#L360

> 
>> +	reset_control_assert(cdns_phy->phy_rst);
>> +	reset_control_assert(cdns_phy->apb_rst);
>> +	for (i = 0; i < cdns_phy->nsubnodes; i++)
>> +		reset_control_assert(cdns_phy->phys[i].lnk_rst);
>> +
>> +	if (cdns_phy->already_configured)
>> +		cdns_phy->already_configured = 0;
>> +	else
>> +		clk_disable_unprepare(cdns_phy->clk);
>> +
>> +	return 0;
>> +}
>> +
>> +static int cdns_torrent_phy_resume_noirq(struct device *dev)
>> +{
>> +	struct cdns_torrent_phy *cdns_phy = dev_get_drvdata(dev);
>> +	int node = cdns_phy->nsubnodes;
>> +	int ret, i;
> 
> Ditto>

Same reason

>> +	ret = cdns_torrent_clk(cdns_phy);
>> +	if (ret)
>> +		goto clk_cleanup;
>> +
>> +	/* Enable APB */
>> +	reset_control_deassert(cdns_phy->apb_rst);
>> +
>> +	if (cdns_phy->nsubnodes > 1) {
>> +		ret = cdns_torrent_phy_configure_multilink(cdns_phy);
>> +		if (ret)
>> +			goto put_lnk_rst;
>> +	}
>> +
>> +	return 0;
>> +
>> +put_lnk_rst:
>> +	for (i = 0; i < node; i++)
>> +		reset_control_assert(cdns_phy->phys[i].lnk_rst);
>> +	reset_control_assert(cdns_phy->apb_rst);
>> +	clk_disable_unprepare(cdns_phy->clk);
>> +clk_cleanup:
>> +	cdns_torrent_clk_cleanup(cdns_phy);
>> +	return ret;
>> +}
> 
-- 
Thomas Richard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D5ECC48BEB
	for <linux-phy@archiver.kernel.org>; Fri, 16 Feb 2024 07:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FPob7rQehdUYmyv242QFVoOXi1M0Batsu6J4SELtu4s=; b=xdmorFlGLL6LKK
	3gYL1o1J5Nc3mq8SBB+plQNCgtvV1/ibdb15T7NEU1ZeTQIseqN/tx1Bh7kgJLXzx3XeM20M9+/M9
	tox22yvTOpAwbTeqqYWPoCm2bAuU6s3WbqWhsunwSIeXAPkjZngRAEXWF7e6910il3UTjgi5EKThY
	T1BFwp4K0f3hgL4ZANn2mhwPk3X8d9b7itY1kw9+VYxCHm1gCAU+Nv8VCePKgSmHSEY1geVE8aIDD
	Ih2WMDwnEHrAW7dqdz7IsEd53Y1QGnxSedgHPjcuANCQp1+nSk7vcaMuU2TlZcLZ0bSIv0chI2loP
	LhIl+5a7cSDXguwgBXGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rat1K-00000001QSD-0DhO;
	Fri, 16 Feb 2024 07:52:30 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rat1G-00000001QQy-47Tt;
	Fri, 16 Feb 2024 07:52:28 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 6DA131C0005;
	Fri, 16 Feb 2024 07:52:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1708069942;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VVeiECxEmwSLffzbtwy2YG4CyEm4W66/wRiP637DW7E=;
	b=psvjRJ16HrEu/GqFLLL7wMMfKBPT08MCl4ar0FAhJ0EKI6MP0fdlU9/TMRf2aJcPbYuHTT
	Y/XaWJ5OWcn2Ggc41n+8jK67j9PIuW99NYEcgM6cqWyWbdDssXoZ47Z7/Z2Iy53x05h9Eb
	B3p8wByuOej2VhFVfrmVTvV/uJNYxSvZtxPhi08Uq7ysqNY/mn4KsAxzwT0Vnpk33SKyAH
	9YgXPL9T+KdVxh3hEjjdo9kwWrADnu9szuZSYl+ofMyLx2D0BOytKOrgIrdNHN1q9n9t2b
	+MsYZsZV4HOyhZnFWK6rQfV+wPw8aelkKg/RHraSCGZQOpQOZcJmL1zXzqpfMA==
Message-ID: <f1d2c9b0-238d-4b09-8212-62e00a2192b2@bootlin.com>
Date: Fri, 16 Feb 2024 08:52:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/18] mux: add mux_chip_resume() function
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
 <20240102-j7200-pcie-s2r-v3-5-5c2e4a3fac1f@bootlin.com>
 <Zc4t82V9czlEqamL@smile.fi.intel.com>
From: Thomas Richard <thomas.richard@bootlin.com>
In-Reply-To: <Zc4t82V9czlEqamL@smile.fi.intel.com>
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_235227_191379_A4F01718 
X-CRM114-Status: GOOD (  18.78  )
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

On 2/15/24 16:29, Andy Shevchenko wrote:
> On Thu, Feb 15, 2024 at 04:17:50PM +0100, Thomas Richard wrote:
>> The mux_chip_resume() function restores a mux_chip using the cached state
>> of each mux.
> 
> ...
> 
>> +int mux_chip_resume(struct mux_chip *mux_chip)
>> +{
>> +	int global_ret = 0;
>> +	int ret, i;
>> +
>> +	for (i = 0; i < mux_chip->controllers; ++i) {
>> +		struct mux_control *mux = &mux_chip->mux[i];
>> +
>> +		if (mux->cached_state == MUX_CACHE_UNKNOWN)
>> +			continue;
>> +
>> +		ret = mux_control_set(mux, mux->cached_state);
>> +		if (ret < 0) {
>> +			dev_err(&mux_chip->dev, "unable to restore state\n");
>> +			if (!global_ret)
>> +				global_ret = ret;
> 
> Hmm... This will record the first error and continue.

In the v2 we talked about this with Peter Rosin.

In fact, in the v1 (mux_chip_resume() didn't exists yet, everything was
done in the mmio driver) I had the same behavior: try to restore all
muxes and in case of error restore the first one.

I don't know what is the right solution. I just restored the behavior I
had in v1.

> 
>> +		}
>> +	}
>> +	return global_ret;
> 
> So here, we actually will get stale data in case there are > 1 failures.

Yes, indeed. But we will have an error message for each failure.

> 
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

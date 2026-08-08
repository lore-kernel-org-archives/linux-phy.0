Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3BEEC55174
	for <linux-phy@archiver.kernel.org>; Sat,  8 Aug 2026 14:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:Cc:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cdI2qknbE6GVFtphcLdqbudQuAuGzpk2zrueiaumSvs=; b=mgechZ9XypeGUn
	xyeEJU9Wr40opurYefvpxeFug6SR6nuWPj3s/JIxwLBvcMONeZqRWOTaoH3wwQ3l/5lM4AmBKa3X6
	mmiUogE3hY0kfYs9ADQzdJ+upkCNWMWYShzO3UNkrF4j/yte/2opIrqn9JeeDMPUyTK9ARkeMsEPD
	f2HI0a3GxCIMRjyBCKOjINl/DpSijd+s64+p6z3wV3UQ+q1SS6DK1ykuWZiOcrK6JEh/wNxICz4ZZ
	CmBXxT4QI//Kq379Ir9gsj/YLFDc2NfqYCUMlXitLUg/kGEcumogdzXUObKBqo3z7080Xo9mdkzeS
	p8H5JLkr0kr3ELjECh6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wshhd-00000009R3a-2ccn;
	Sat, 08 Aug 2026 14:07:09 +0000
Received: from mail-pz2-x00.google.com ([2607:f8b0:4864:3b::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wshhb-00000009R2n-3A05
	for linux-phy@lists.infradead.org;
	Sat, 08 Aug 2026 14:07:08 +0000
Received: by mail-pz2-x00.google.com with SMTP id 41be03b00d2f7-c888c001628so308287a12.0
        for <linux-phy@lists.infradead.org>; Sat, 08 Aug 2026 07:07:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786198027; x=1786802827; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:subject:cc:to:from:message-id:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=zrxXzmuLnBiNnwK74e3uO+cSnorKNXKL/VAH2ROuE74=;
        b=KulHioTedNLhbbSE2yAeS9uAbztHLmpjk2dTQi6/L7PFPYr+lYljKQKcuU/TG1neR1
         nfhbZDRTGyh4jD7+ou06F4nmmm4AgW2BpmHRWhox1TeYW7IJTQJXV/LaV+aVbk/V9aMo
         oFIOMBXUqRqmK34xty2SshH7RFQVMbO3bzHa5ploilCFL2oJffk3RlUr7ASFROpZnNX3
         sPwI/pNsy1PzpMsJnR3+7MJ87Mavr4tZb0HbX2+FrCoKNWQVZY4A0BTR1xTLoHDQ1B3W
         N903MC5X665G2KxB5RrvO2pL0La1rTyNsLQ10xFk0AdO60Lnjcc4s9ICubvdh3Za5Lo1
         9YXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786198027; x=1786802827;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:subject:cc:to:from:message-id:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zrxXzmuLnBiNnwK74e3uO+cSnorKNXKL/VAH2ROuE74=;
        b=Y9LtHj6EKRaSHMI9NfvYlCKDHzbS8ikoiGmSE+gfE5jB85YI4oAFjJaRs3j1GZepcZ
         L74j0ovgJsZPcO3n6pgwHSZOFGvwONO0NoMn9IIeXiOcJexkUzfj6G2ToPykwBhr34ri
         BgnogkpVHivqghy8RqkSHg3rcDmkoY5WCC6/3Cfy5qcIZlozJOCg6xXevl1A0p7tPS3U
         lWVOsjbrwEJA87b3bHwAB+C2du+MV04BZc8zJYiAK6wEBD7pbQM/zUAxhcsQS2WEyncV
         fFQWDEIq1fYutRkjmzbGtvPIESwfouwUcVU7EYdicRa++HSMIAG4hFFbtuBcW+9gSuuf
         RRrw==
X-Forwarded-Encrypted: i=1; AHgh+RpWRoK3wg4I8ad02p78dMMKMTK+e4dL2VKscQxHqG9ev2nfvPZtRLccO/FQEkzoslHXkZ0X5eiN3tQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzmpUesHT17I0cE/+5RXqe0w5tWR/ad3WE8uU1TtIotvmxjuj9T
	7uVj7SbWL5smSswXw97Nkdslp7CUZjcx+kxYwTeTqpKGA1+STn6iTNl5
X-Gm-Gg: AR+sD13btt8mxraZVnMCkueCbuSWH6DE2IvPAVkc4a8J4vVF5NkfBStE07bv4kVV0uw
	boOA6+WfeWuQGtD28qXUTKy9axlcgZoP8QJih8ib+ausvVWgnpUvfAzaKHVitL7ZG/JHkzDI01f
	kuNLilCrISWOBo5+O6jloRCg3/TtXooO644EUMTsvnhwLZsafsnGbhv4z3Yp8oe+VEaMcB82Xle
	Jre+BnKL30Wftr/ukalPb7og9PeeCRmOpLRcZmOL2CkxbtdxCGno8jG/gDTCPhC2yNopWSK0zZa
	H1YSJlxhaM7I84dDewtbO/F0S52nL+Pr2KPubx0lOsxCPXZ4ZVPGpXTIVKHvrd3UCpJKW4o4OSQ
	OGodTGHJ8Su2e2VEu/TFn7XRLVFq56WFK50Qo6NQEhyAhwxPq+nlyzYLa4vcjhwf2tDnMkfcFPw
	MxAPTfwJE+FhFIbbLDTo7q0Ze8vrdGP3HNQpZHsuM=
X-Received: by 2002:a05:6a00:2286:b0:848:76af:db37 with SMTP id d2e1a72fcca58-84f694200b5mr7899614b3a.7.1786198026809;
        Sat, 08 Aug 2026 07:07:06 -0700 (PDT)
Received: from localhost ([2403:2c80:17:1e::20db])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cbe8f372b5bsm1905209a12.25.2026.08.08.07.07.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Aug 2026 07:07:06 -0700 (PDT)
Date: Sat, 08 Aug 2026 22:07:03 +0800
Message-ID: <7b4b8457715c2e447f3b3522e519f0af.codykang.hk@gmail.com>
From: Cody Kang <codykang.hk@gmail.com>
To: Yao Zi <me@ziyao.cc>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Haylen Chu <heylenay@4d2.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, dri-devel@lists.freedesktop.org,
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH RESEND 12/17] drm/spacemit: add Innosilicon DP/eDP
 controller bridge driver
In-Reply-To: <amdPPBOH-Dk4oU7y@pie>
References: <20260725-k3-display-v1-0-6de34d80e86c@gmail.com>
 <20260725-k3-display-v1-12-6de34d80e86c@gmail.com> <amdPPBOH-Dk4oU7y@pie>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260808_070707_794243_4ECD3E3E 
X-CRM114-Status: GOOD (  26.96  )
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

Hi Yao Zi,

On Mon, 27 Jul 2026 12:29:48 +0000, Yao Zi wrote:
> On Sat, Jul 25, 2026 at 12:51:21AM -0400, Cody Kang via B4 Relay wrote:
> > From: Cody Kang <codykang.hk@gmail.com>
> >
> > Add the DP/eDP controller that sits downstream of the Saturn DPU. Two
> > identical instances share one compatible; the eDP-vs-DP role is board
> > wiring, so it is taken from the devicetree: an eDP panel always sits
> > under an aux-bus child node, an external DP connector never does.
> >
> > The link is driven through the generic PHY framework, so the controller
> > never touches a PLL register. The controller's HPD interrupt is gated by
> > the DP pixel clock, which can be off exactly when a plug has to be
> > caught, so the connector is also polled and the interrupt path re-reads
> > the live level when it does fire.
> >
> > Signed-off-by: Cody Kang <codykang.hk@gmail.com>
> > ---
> >  drivers/gpu/drm/spacemit/Kconfig            |   19 +
> >  drivers/gpu/drm/spacemit/Makefile           |    3 +
> >  drivers/gpu/drm/spacemit/spacemit_inno_dp.c | 2443 +++++++++++++++++++++++++++
> >  drivers/gpu/drm/spacemit/spacemit_inno_dp.h |  328 ++++
> >  4 files changed, 2793 insertions(+)
>
> ...
>
> > +static int inno_dp_probe(struct platform_device *pdev)
> > +{
> > +	struct device *dev = &pdev->dev;
> > +	struct device_node *aux_bus_np;
> > +	struct spacemit_dp_dev *dp;
> > +	struct resource *res;
> > +	int ret;
>
> ...
>
> > +	dp->pxclk = devm_clk_get(dev, "pxclk");
> > +	if (IS_ERR(dp->pxclk)) {
> > +		ret = dev_err_probe(dev, PTR_ERR(dp->pxclk),
> > +				    "failed to get pxclk\n");
> > +		return ret;
> > +	}
>
> It seems pxclk is only enabled in probe() and disabled in remove(),
> please consider using devm_clk_get_optional_enabled().

Thanks for the review. You are right that the disable belongs to
devres. I will move the disable to a devm action registered
after the populate.

But the _enabled part of devm_clk_get_optional_enabled() doesn't
fit here: it hands the disable to devres at get time, before the
PHY child is populated, so on unbind pxclk would be disabled only
after the PHY PLL it is parented on is gone, and the clock core
would warn.

I will keep the non-optional getter, since the binding requires
the clocks.

> ...
>
> > +	if (dp->pxclk) {
> > +		ret = clk_prepare_enable(dp->pxclk);
> > +		if (ret) {
> > +			dev_err(dev, "failed to enable pxclk: %d\n", ret);
> > +			goto err_reset;
> > +		}
> > +	}
>
> So this check could be dropped.

Yes, all the if (dp->pxclk) guards are dead code; will drop them
in v2.

> ...
>
> > +	/*
> > +	 * The PHY exposes its PLL as the APMU pixel-clock mux's external
> > +	 * parent.
> > +	 */
> > +	dp->pll_clk = devm_clk_get(dev, "pll");
> > +	if (IS_ERR(dp->pll_clk)) {
> > +		ret = dev_err_probe(dev, PTR_ERR(dp->pll_clk),
> > +				    "failed to get PHY pixel clock\n");
> > +		goto err_clk;
> > +	}
>
> Same for the "pll" clock.

We never enable "pll" ourselves (it is only a parent and rate
target), so it will stay a plain non-optional devm_clk_get().

> > +	if (dp->pxclk) {
> > +		ret = clk_set_parent(dp->pxclk, dp->pll_clk);
> > +		if (ret) {
> > +			dev_err(dev, "failed to route eDP pixel mux to PHY PLL: %d\n", ret);
> > +			goto err_clk;
> > +		}
> > +	}
> > +	 */
> > +	ret = devm_request_threaded_irq(dev, dp->irq, spacemit_dp_irq_handler,
> > +					spacemit_dp_hotplug_event_handler,
> > +					IRQF_NO_AUTOEN, dev_name(dev), dp);
> > +	if (ret) {
> > +		dev_err(dev, "failed to request irq %d: %d\n", dp->irq, ret);
> > +		goto err_clk;
> > +	}
>
> Since 55b48e23f5c4 ("genirq/devres: Add error handling in
> devm_request_*_irq()") devm_request_threaded_irq() automatically throws
> an error message when it fails, so this error message is redundant.

Right, will drop it.

Cody

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

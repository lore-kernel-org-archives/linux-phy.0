Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A0EFC55174
	for <linux-phy@archiver.kernel.org>; Sat,  8 Aug 2026 09:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IKKfN0pjh4irTPwSS70QJlYvOq8JQKdCzq5LXYyVHDM=; b=OfB0kupLKz7Ryb
	i2cXMhVXCJLalxoDjt7FEFEjYLQfuE3u+T4jIooL4AWGHOtdJMbGw+SMoiCfiaXpEQTT/ZQakwL6Q
	VDnzpkw9dPw9Qf708ZTf96ZxL0z9MlcVTLWjYohS3kw9aGWQ8u0rg+0pXOTI0/izIZk5fOfxVR2iP
	wK+a60lDxYbwA3k05UOYDlJZXycmof2A6FaVTKcmC4z5ur8mG467HRGUW/PreAxeJtvGRxSbM4gpt
	G0KjoJziPQnqafHdUyoCC+cjOhhRAAbZK/kdRZp3gQ9Xuv5stvScqH+gvoSMrUllg8Odu25m1kZep
	IYgDCjjUkJjRxVRqjiKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsdfR-00000009EnU-3HcH;
	Sat, 08 Aug 2026 09:48:37 +0000
Received: from mail-pj2-x02.google.com ([2607:f8b0:4864:39::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsdfP-00000009En9-3pZj
	for linux-phy@lists.infradead.org;
	Sat, 08 Aug 2026 09:48:37 +0000
Received: by mail-pj2-x02.google.com with SMTP id 98e67ed59e1d1-3896ccc93b5so142144a91.1
        for <linux-phy@lists.infradead.org>; Sat, 08 Aug 2026 02:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786182514; x=1786787314; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=HuX8DvPqFSCV/Qm9OlvDCFJ10OiDMwD+oDVvHWCPJn0=;
        b=lgLK/dsWY/X4Z/hsK0y7rW962qdx+wDrogdI7ZedwNiUzuTaH9+zNEPyO121AbKMmk
         5On04so4j2U9uSKhmEV4B+WcPG7EgLW245zlA22tmS0MtlGjKYC5U1taTMQsIzgRDfIu
         mq/q1vAOSNxS1I8FZa8+eeRXLWEQBvAMY4lP4EjigJu0U4F0HBnLRaT4VJ1154B9242g
         lVknNZoPce4kb7pHHbJFpZaYsDOW2tTZtAWPKtbKpVv9vyh+QP3BxHlQ2TkWn2CvBRYw
         aBRKjpWW2LTljQxnE3XwDprlho4VFBnz3UoTOUn1jrSw7+XL4fAAfXhtBif3Tgosnece
         K0+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786182514; x=1786787314;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=HuX8DvPqFSCV/Qm9OlvDCFJ10OiDMwD+oDVvHWCPJn0=;
        b=i0aU7U+KL8dsnHbCt3J/XQbPkFZMeBlgLlz/i+UwYjsyBCcVnzc1hC7DaSfyjvw2PQ
         hF9sPsEopNiVIpC9Ppf16RsKwpGK7nRVyJQM39MSChImoEqqoJlqoD4EUq4WuC5UR58e
         ZiTjvVpypylDxYrmqidV8XYelrNBot4Um9ZUWLm5mXZOvxFmTqmZi4EZDOEv22eaU9IL
         T9cgIh06h+RpYl7zRsJlfm/ZeIehFRuCvz0GV6XjoYFvfEatJyMocc8JFbdRBGdxDVQn
         VkW/hzKHz65yEYkuaHe2Buh5UcCZ9WFm9wjDFHrtGJ6TCaW54IXbbHOGzr3coqhZ2y8T
         JoGw==
X-Forwarded-Encrypted: i=1; AHgh+RrFCHoI0NzmTjboC6xRDOxBMqY9JBNbalGR61SC10uJa5wxTyc60N7NmpnNx7NMoYXJ47uvrYB0E2I=@lists.infradead.org
X-Gm-Message-State: AOJu0YwjXjaPi2TaLoN24eypZ8NFkpvcQ9gDUQSkI78xiqe21XfwP+R3
	fquWU9MoADr/TJTlECcXNIuOc6yAd+yW8NAJO6ft3IquQz9BHzbJd+5h
X-Gm-Gg: AR+sD13iY3sowNZInzrcUsRNtLK4a6JJaI1SuiDfPyVi2Vb33boppOZMQuqfr4084Db
	fApqFTEK183uJ/vN0hgW+97mvyYgdnMoFA7TnhcgUDVsvB3urPv3q1Jw+hXYIDqt+ACyT+d6Yez
	pT5wEd0u7Kw3NZdCycReUAIhH7bCX+O3Sit0SDLOtRvIDRfP5PWoqXk+e0Sd6KPmBnoKyFtI0h4
	1G0tkj8PEMWZH7Y1oUU86lJ0ir0KhKZUNXpg6HXBGDKey8EAXb5wY7Pugrv5NNRLXSqnEh9TA09
	7b/fx2yMplczG7BjfaTr0BwCXDqKMYwQ+fjkixh6wcDyrXRYlCdpnm8Wo7ARoeDoZA/iFrdgTkl
	zX28f0va4Zw6V4yZ5G4tNVHzMkU8xTKOhfUtgsI2EayUofxhzTFHN/yUcIf+G27rDri/c/GKJww
	EU5dyI+4O1VIq2oatqYeQXJqMv/QPvDadQa8XOUUC2yvXzCOcFUw==
X-Received: by 2002:a17:90b:4b91:b0:38d:ddc2:7ccb with SMTP id 98e67ed59e1d1-3909d7a4839mr13994758a91.1.1786182513598;
        Sat, 08 Aug 2026 02:48:33 -0700 (PDT)
Received: from localhost ([2403:2c80:17:1e::20db])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-390b13b0c74sm2266456a91.0.2026.08.08.02.48.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Aug 2026 02:48:33 -0700 (PDT)
Date: Sat, 8 Aug 2026 17:48:28 +0800
From: Cody Kang <codykang.hk@gmail.com>
To: sashiko-reviews@lists.linux.dev
Cc: dri-devel@lists.freedesktop.org, vkoul@kernel.org, 
	linux-phy@lists.infradead.org, neil.armstrong@linaro.org, robh@kernel.org, 
	devicetree@vger.kernel.org, olteanv@gmail.com, conor+dt@kernel.org
Subject: Re: [PATCH RESEND 05/17] phy: spacemit: add Innosilicon DP TX PHY
 driver
Message-ID: <gsv53gzsbs4selyf5ws3f77ff7odhf6xsbf62qb6tcftns7ibc@dpop7iwzwvzb>
References: <20260725-k3-display-v1-0-6de34d80e86c@gmail.com>
 <20260725-k3-display-v1-5-6de34d80e86c@gmail.com>
 <20260725050254.9F7091F000E9@smtp.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260725050254.9F7091F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260808_024835_973236_E6B8E6DF 
X-CRM114-Status: GOOD (  41.80  )
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

On Sat, Jul 25, 2026 at 05:02:54AM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 6 potential issue(s) to consider:
> - [High] PHY provider is registered before probe finishes, exposing it to early concurrent access and potential Use-After-Free (UAF) on probe failure.
> - [High] Lack of driver-level synchronization between CCF and PHY frameworks leads to concurrent hardware state corruption.
> - [Medium] The MPLL (main link PLL) is powered on during PHY initialization but is never powered off in the power down sequence.
> - [Medium] Missing hardware state cleanup on error paths in `k3_inno_dp_phy_power_on` leaves the PHY powered on.
> - [Medium] Rate configuration functions unconditionally power on the PLLs, overriding the logical PHY power state.
> - [Medium] PLL programming functions do not poll for hardware lock before proceeding.
> --
> 
> --- Patch [5]: [PATCH RESEND 05/17] phy: spacemit: add Innosilicon DP TX PHY driver ---
> commit 31db74eae7dc59ddc61373dbe3e2c6c1e6966ccd
> Author: Cody Kang <codykang.hk@gmail.com>
> Subject: phy: spacemit: add Innosilicon DP TX PHY driver
> 
> This commit introduces the SpacemiT K3 Innosilicon DisplayPort PHY driver.
> It integrates the PHY as a child of the DP controller, registering a PHY
> provider and exposing the pixel PLL as a clock provider.
> 
> > diff --git a/drivers/phy/spacemit/phy-k3-inno-dp.c b/drivers/phy/spacemit/phy-k3-inno-dp.c
> > new file mode 100644
> > index 0000000000000..9dd62edb7a5af
> > --- /dev/null
> > +++ b/drivers/phy/spacemit/phy-k3-inno-dp.c
> > @@ -0,0 +1,948 @@
> 
> [ ... ]
> 
> > +static int k3_inno_dp_phy_power_on(struct phy *phy)
> > +{
> > +	struct k3_inno_dp_phy *p = phy_get_drvdata(phy);
> > +	u32 lane_en;
> > +	u32 val;
> > +	int ret;
> 
> [ ... ]
> 
> > +	ret = regmap_read_poll_timeout(p->regmap, DPTX_ANA_MPLL, val,
> > +				       val & DPTX_ANA_MPLL_LOCKED,
> > +				       2000, 10 * 1000);
> > +	if (ret) {
> > +		dev_err(p->dev, "DP PHY core PLL lock timed out\n");
> > +		return ret;
> > +	}
> 
> [Severity: Medium]
> If the MPLL or PREPLL fails to lock within 10ms, this immediately returns an
> error without restoring the power down bits or XMIT_EN.
> 
> Since the generic PHY framework does not automatically call phy_power_off()
> when phy_power_on() fails, could this leave the hardware running in an
> inconsistent state and leak power?

Real; will fix in v2: the lock-timeout paths will park the lanes
and the pixel PLL, the same set power_off parks.

> 
> > +
> > +	ret = regmap_read_poll_timeout(p->regmap, DPTX_ANA_PREPLL, val,
> > +				       val & DPTX_ANA_PREPLL_LOCKED,
> > +				       2000, 10 * 1000);
> > +	if (ret)
> > +		dev_err(p->dev, "DP PHY pixel PLL lock timed out\n");
> > +
> > +	return ret;
> > +}
> > +
> > +static int k3_inno_dp_phy_power_off(struct phy *phy)
> > +{
> > +	struct k3_inno_dp_phy *p = phy_get_drvdata(phy);
> > +
> > +	regmap_write_bits(p->regmap, DPTX_PHY_CTRL, DPTX_PHY_CTRL_XMIT_EN, 0);
> > +	usleep_range(2000, 4000);
> > +
> > +	regmap_write_bits(p->regmap, DPTX_ANA_PREPLL, DPTX_ANA_PREPLL_PD,
> > +			  DPTX_ANA_PREPLL_PD);
> > +	usleep_range(2000, 4000);
> > +
> > +	return 0;
> > +}
> 
> [Severity: Medium]
> Does this power down sequence omit the MPLL?
> 
> The k3_inno_dp_phy_power_on() function powers up the MPLL by clearing
> DPTX_ANA_MPLL_PD, but this power_off function does not appear to re-assert
> it. Could this leave the main link PLL running indefinitely when the DP
> controller is suspended or torn down?

Intentional, and it took a board round to prove it: the MPLL also
feeds the 16 MHz AUX reference, and the controller parks the PHY
through power_off on every link drop while AUX still has to serve
EDID, DPCD and panel detection. Parking the MPLL here kills AUX
from bind onward. Will add a comment in v2 saying so.

> 
> [ ... ]
> 
> > +static void k3_inno_dp_phy_program_mpll(struct k3_inno_dp_phy *p,
> > +					const struct k3_inno_dp_mpll_cfg *cfg)
> > +{
> > +	struct regmap *rm = p->regmap;
> 
> [ ... ]
> 
> > +	regmap_write_bits(rm, DPTX_ANA_PREPLL_CTRL, DPTX_ANA_PREPLL_LOCK_BYPEN,
> > +		FIELD_PREP(DPTX_ANA_PREPLL_LOCK_BYPEN, 1));
> > +
> > +	regmap_write_bits(rm, DPTX_ANA_MPLL, DPTX_ANA_MPLL_PD,
> > +		FIELD_PREP(DPTX_ANA_MPLL_PD, 0));
> 
> [Severity: Medium]
> Does unconditionally writing 0 to DPTX_ANA_MPLL_PD override the logical
> power state of the PHY?
> 
> If a DRM driver configures the link rate (calling phy_configure()) while the
> PHY is logically powered off, this will force the PLL to run and
> desynchronize the hardware from the PHY framework's power state.

Not reachable: the PHY has a single consumer, the parent DP
controller, and it only configures rates from the enable path,
never while the PHY is logically off.

> 
> > +	usleep_range(2000, 4000);
> > +}
> 
> [Severity: Medium]
> Is it safe to rely on a fixed 2-4ms sleep here instead of polling
> DPTX_ANA_MPLL_LOCKED?
> 
> The power_on() function polls the locked bit for up to 10ms. A fixed delay
> here might proceed with an unstable clock if the hardware takes longer to
> lock, potentially causing display failures or link training issues.

power_on polls both PLL lock bits after programming; that is the
lock gate for the whole bring-up sequence.

> 
> [ ... ]
> 
> > +static void k3_inno_dp_program_prepll(struct k3_inno_dp_phy *p,
> > +				      const struct k3_inno_dp_prepll_cfg *cfg)
> > +{
> > +	regmap_write_bits(p->regmap, DPTX_ANA_PREPLL, DPTX_ANA_PREPLL_PD,
> > +		FIELD_PREP(DPTX_ANA_PREPLL_PD, 1));
> > +	usleep_range(2000, 4000);
> 
> [Severity: High]
> Is a driver-level lock needed to synchronize access to the PHY registers
> between the CCF and PHY frameworks?
> 
> Since this driver exposes both a clock (via CCF) and a PHY that share the
> same hardware registers, concurrent calls to clk_set_rate() and
> phy_power_on() can interleave.
> 
> If clk_set_rate() begins this multi-step programming sequence, a concurrent
> phy_power_on() could clear the PD bit while the clock is still being
> configured, corrupting the hardware state.

No concurrent callers exist: the single consumer serializes all
clk_set_rate() and phy_power_on/off() calls through its own
modeset path.

> 
> [ ... ]
> 
> > +	regmap_write_bits(p->regmap, DPTX_ANA_PREPLL,
> > +		DPTX_ANA_PREPLL_PCLK_NORMAL,
> > +		FIELD_PREP(DPTX_ANA_PREPLL_PCLK_NORMAL, 1));
> > +	usleep_range(2000, 4000);
> > +
> > +	regmap_write_bits(p->regmap, DPTX_ANA_PREPLL, DPTX_ANA_PREPLL_PD,
> > +		FIELD_PREP(DPTX_ANA_PREPLL_PD, 0));
> 
> [Severity: Medium]
> Similar to the MPLL configuration, does unconditionally clearing
> DPTX_ANA_PREPLL_PD here override the PHY power state if the clock rate is
> set while the PHY is logically off?

Same as the MPLL case above: rates are only set from the enable
path.

> 
> > +	usleep_range(2000, 4000);
> > +}
> 
> [Severity: Medium]
> Is it safe to rely on a fixed delay here instead of polling the
> DPTX_ANA_PREPLL_LOCKED bit, which could lead to proceeding with an unstable
> pixel clock?

Same: power_on polls DPTX_ANA_PREPLL_LOCKED before the sequence
completes.

> 
> [ ... ]
> 
> > +static int k3_inno_dp_phy_probe(struct platform_device *pdev)
> > +{
> > +	struct device *dev = &pdev->dev;
> > +	struct k3_inno_dp_phy *p;
> > +	struct phy_provider *provider;
> > +	struct clk_init_data init = {};
> > +	int ret;
> 
> [ ... ]
> 
> > +	provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> > +	if (IS_ERR(provider))
> > +		return dev_err_probe(dev, PTR_ERR(provider),
> > +				     "failed to register PHY provider\n");
> > +
> > +	/* PHY takes a 24 MHz reference clock */
> > +	p->ref_clk_khz = 24000;
> > +
> > +	/* The APMU pixel-clock mux references this clock by name. */
> > +	of_property_read_string(dev->of_node, "clock-output-names", &init.name);
> > +	if (!init.name)
> > +		init.name = dev_name(dev);
> > +	init.ops = &k3_inno_dp_pxclk_ops;
> > +	init.parent_names = NULL;
> > +	init.num_parents = 0;
> > +	init.flags = 0;
> > +	p->pxclk_hw.init = &init;
> > +
> > +	ret = devm_clk_hw_register(dev, &p->pxclk_hw);
> > +	if (ret)
> > +		return dev_err_probe(dev, ret,
> > +				     "failed to register pixel clock\n");
> 
> [Severity: High]
> Can the PHY provider be accessed by consumers before probe completes
> successfully?
> 
> The PHY provider is registered via devm_of_phy_provider_register() before
> the pixel clock is registered. If devm_clk_hw_register() fails, probe will
> return an error and devres will free the driver context struct.
> 
> If a consumer driver acquires a reference to the PHY during this race
> window, it could retain the reference after probe fails, leading to a
> use-after-free when it attempts PHY operations on the freed pointer.

Taken: will register the PHY and clock providers last in probe
in v2.

Cody


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8C08CE7AA5
	for <linux-phy@archiver.kernel.org>; Fri,  6 Sep 2024 00:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mIevmrbbO4V7Zlw6oDdzK8VrULdSafkCYoHGz3r6I0E=; b=WRjC8hYSSiJDnZ
	xzZ7hv7/Tm3E5PhpHqwJSmw0chA/yzJ9EDrdbtVlAE2n15Q43vaqC35OZbhu++gIqRL5TzCZd2reW
	ImRzCVwK7xu0dXxO8MUc28SDSJTTr/RsCUSb4vutD3cSvKU9jBSbwdUSzQzzBRgtE8P1yVOE9OVk3
	pdwopBha/AxoebkP2xX5j61x6t+bA5Gno9BlYNTp0n9TKYYNiLj30gXKiVnbmuxeJlhAqzkuhkzD2
	GfjpRavWO+5eBQzBfhB7XW5XEzfbKITkGriGT/tDj0yZSoS9KZbCd+kXH2mTSBi39YpTBnc1UHrlJ
	DZ43b2busNQoJwwiwivQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smMoT-0000000AC78-0F30;
	Fri, 06 Sep 2024 00:26:57 +0000
Received: from gw2.atmark-techno.com ([35.74.137.57])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smMoQ-0000000AC4d-2Q8r
	for linux-phy@lists.infradead.org;
	Fri, 06 Sep 2024 00:26:56 +0000
Authentication-Results: gw2.atmark-techno.com;
	dkim=pass (2048-bit key; unprotected) header.d=atmark-techno.com header.i=@atmark-techno.com header.a=rsa-sha256 header.s=google header.b=Q4z/af2V;
	dkim-atps=neutral
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by gw2.atmark-techno.com (Postfix) with ESMTPS id 7FED79A5
	for <linux-phy@lists.infradead.org>; Fri,  6 Sep 2024 09:26:50 +0900 (JST)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-2d9a2b8af50so1976169a91.0
        for <linux-phy@lists.infradead.org>; Thu, 05 Sep 2024 17:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atmark-techno.com; s=google; t=1725582409; x=1726187209; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LGTM8z3drlabx5saFMxcrZbEE2LPwIqPrjtUbOYE5m8=;
        b=Q4z/af2VjKJTIijTYogYfJIKgP7SYqKmRwJDT1Ig2JAnNy9in1HcESGk8Tu1Xbv2dw
         z4EsXvDZv/ZxYflDj1gKTyej/UloRNRETYHgzV9N5JJ78RbAHWEVzrV+N0y4JGKThEmA
         Ck7h2RAg6MIDqZZjUa5/Xkdg5sZS+HoR9JLrAfktVDAPUp/BHn9RvuuCzKrtVYXBrs03
         5NKl0Ujz17/K9K+k3m4yBVQZeEqKF3wH480mYnUwGSUKmXiOb/n5rNMu0ul7amp1zEup
         ESPSHaQHsT9Ou5iJV3F+L7luMssQp8nRaqjJGOzFPSVBAJq2xrvqpzl/fkBoO6eJ/8Pp
         MGvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725582409; x=1726187209;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LGTM8z3drlabx5saFMxcrZbEE2LPwIqPrjtUbOYE5m8=;
        b=tFSgj+veu8RTcd52u4GxkcOlAOWXUPvOen6zteGn/2D1/2oDzSNBjfy37O00LzBqz1
         hwYyhDjGoShOgBN+iIBMc5e9G2rEJngjjTu07WMjXFVrj5OYd8cuDi+NDwT8IrBH8wtl
         vWW6YAEGJdW0fzEfeAXXgPd2N/qplSvHkcuZz3ZWBNhA7j+Xj+bRrcqLLezwZlal9tHa
         e5DGri0SH11gsPa1f0hOTfKlGV/7/htjlLueCFMYRidt+OPkJi72GYBMEiQFRUzQDyp4
         DrlEMvBVkpVuTwqB63ydc+BWL5L9GlXbGUAHJOlgdoDe/wZifWQaKlwat6g+dOceAuKj
         KdQA==
X-Gm-Message-State: AOJu0YwkiKpqB27tR7/ayD/Md/UJeAp3WwPGKQM6CNd0XBvylIkda/4z
	3liQuAvoAl4vse9FfnBKxT9b6zJN2ArnJqvK15FSzjL3zorCFVSNoBBztyhA0ocAYcBwCdxwbDT
	He8tVZyUrGU4tJJjk2JF9LOHzUISjrrlT1jqBzvKv7APcdnu6yzmmERZesc9JFl89
X-Received: by 2002:a17:90b:2248:b0:2d3:db91:ee82 with SMTP id 98e67ed59e1d1-2dad513a8d5mr993643a91.40.1725582408960;
        Thu, 05 Sep 2024 17:26:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGssYkvho2wuTiIV5XqLvj+xnJwXtMw7FK+bKNnXv5/kW4P3Qtr4XZhgQnImulOf/HrOPuE7A==
X-Received: by 2002:a17:90b:2248:b0:2d3:db91:ee82 with SMTP id 98e67ed59e1d1-2dad513a8d5mr993625a91.40.1725582408574;
        Thu, 05 Sep 2024 17:26:48 -0700 (PDT)
Received: from localhost (162.198.187.35.bc.googleusercontent.com. [35.187.198.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2dadc091116sm150733a91.46.2024.09.05.17.26.47
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Sep 2024 17:26:48 -0700 (PDT)
Date: Fri, 6 Sep 2024 09:26:36 +0900
From: Dominique Martinet <dominique.martinet@atmark-techno.com>
To: Adam Ford <aford173@gmail.com>
Cc: linux-phy@lists.infradead.org, linux-imx@nxp.com, festevam@gmail.com,
	frieder.schrempf@kontron.de, aford@beaconembedded.com,
	Sandor.yu@nxp.com, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Lucas Stach <l.stach@pengutronix.de>,
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH V6 4/5] phy: freescale: fsl-samsung-hdmi: Use closest
 divider
Message-ID: <ZtpMPCHBnEgtkBWp@atmark-techno.com>
References: <20240904233100.114611-1-aford173@gmail.com>
 <20240904233100.114611-5-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240904233100.114611-5-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_172655_102665_72860F0E 
X-CRM114-Status: GOOD (  35.98  )
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


(sorry I meant to send this yesterday but I'm being forced to adjust my
mail pipeline with work and gmail and it didn't go out -- trying
again. Sorry if it actually did go through. Hopefully I didn't misfire
anything else yesterday...)

Adam Ford wrote on Wed, Sep 04, 2024 at 06:30:32PM -0500:
> Currently, if the clock values cannot be set to the exact rate,
> the round_rate and set_rate functions use the closest value found in
> the look-up-table.  In preparation of removing values from the LUT
> that can be calculated evenly with the integer calculator, it's
> necessary to ensure to check both the look-up-table and the integer
> divider clock values to get the closest values to the requested
> value.  It does this by measuring the difference between the
> requested clock value and the closest value in both integer divider
> calucator and the fractional clock look-up-table.
> 
> Which ever has the smallest difference between them is returned as
> the cloesest rate.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> Signed-off-by: Dominique Martinet <dominique.martinet@atmark-techno.com>

b4 (or whatever you're using) probably picked that up from the patch I
included in my reply to this patch, this sob should go away.



> diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> index 4b13e386e5ba..9a21dbbf1a82 100644
> --- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> +++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> @@ -547,6 +547,16 @@ static unsigned long phy_clk_recalc_rate(struct clk_hw *hw,
>  	return phy->cur_cfg->pixclk;
>  }
>  
> +static u32 fsl_samsung_hdmi_phy_get_closest_rate(unsigned long rate,
> +						 u32 int_div_clk, u32 frac_div_clk)
> +{
> +	/* The int_div_clk may be greater than rate, so cast it and use ABS */
> +	if (abs((long)rate - (long)int_div_clk) < (rate - frac_div_clk))

I still think `rate - frac_div_clk` might not always hold in the future
(because there is no intrinsic reason we'd pick the smaller end in case
of inexact match and a future improvement might change this to the
closest value as well), so I'll argue again for having both use abs(),
but at least there's only one place to update if that changes in the
future now so hopefully whoever does this will notice...

> +		return int_div_clk;
> +
> +	return frac_div_clk;
> +}
> +
>  static long phy_clk_round_rate(struct clk_hw *hw,
>  			       unsigned long rate, unsigned long *parent_rate)
>  {
> @@ -563,6 +573,7 @@ static long phy_clk_round_rate(struct clk_hw *hw,
>  	for (i = ARRAY_SIZE(phy_pll_cfg) - 1; i >= 0; i--)
>  		if (phy_pll_cfg[i].pixclk <= rate)
>  			break;
> +

(unrelated)

>  	/* If the rate is an exact match, return it now */
>  	if (rate == phy_pll_cfg[i].pixclk)
>  		return phy_pll_cfg[i].pixclk;
> @@ -579,8 +590,7 @@ static long phy_clk_round_rate(struct clk_hw *hw,
>  	if (int_div_clk == rate)
>  		return int_div_clk;
>  
> -	/* Fall back to the closest value in the LUT */
> -	return phy_pll_cfg[i].pixclk;
> +	return fsl_samsung_hdmi_phy_get_closest_rate(rate, int_div_clk, phy_pll_cfg[i].pixclk);
>  }
>  
>  static int phy_clk_set_rate(struct clk_hw *hw,
> @@ -594,27 +604,37 @@ static int phy_clk_set_rate(struct clk_hw *hw,
>  
>  	/* If the integer divider works, just use it */

I found this comment a bit confusing given the current flow as of this
patch. Might make more sense immediately before the if?


>  	int_div_clk = fsl_samsung_hdmi_phy_find_pms(rate * 5, &p, &m, &s) / 5;
> +	calculated_phy_pll_cfg.pixclk = int_div_clk;
> +	calculated_phy_pll_cfg.pll_div_regs[0] = FIELD_PREP(REG01_PMS_P_MASK, p);
> +	calculated_phy_pll_cfg.pll_div_regs[1] = m;
> +	calculated_phy_pll_cfg.pll_div_regs[2] = FIELD_PREP(REG03_PMS_S_MASK, s-1);
> +	phy->cur_cfg = &calculated_phy_pll_cfg;
>  	if (int_div_clk == rate) {
>  		dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: using integer divider\n");
> -		calculated_phy_pll_cfg.pixclk = int_div_clk;
> -		calculated_phy_pll_cfg.pll_div_regs[0] = FIELD_PREP(REG01_PMS_P_MASK, p);
> -		calculated_phy_pll_cfg.pll_div_regs[1] = m;
> -		calculated_phy_pll_cfg.pll_div_regs[2] = FIELD_PREP(REG03_PMS_S_MASK, s-1);
> -		/* pll_div_regs 3-6 are fixed and pre-defined already */

nitpick: might want to keep the above comment?

> -		phy->cur_cfg  = &calculated_phy_pll_cfg;
> +		goto done;
>  	} else {
>  		/* Otherwise, search the LUT */
> -		dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: using fractional divider\n");
> -		for (i = ARRAY_SIZE(phy_pll_cfg) - 1; i >= 0; i--)
> -			if (phy_pll_cfg[i].pixclk <= rate)
> +		for (i = ARRAY_SIZE(phy_pll_cfg) - 1; i >= 0; i--) {
> +			if (phy_pll_cfg[i].pixclk == rate) {
> +				dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: using fractional divider\n");

nitpick: might make sense to print what was picked in case of inexact
match as well, but these are dbg warning so probably fine either way.


overall I find the flow of this function hard to read; it's a bit ugly
flow-wise but jumping in the clock comparison 'if' might help trim this?
(and if we're going out of our way to factor out the diff, maybe the lut
lookup could be as well)

But I'm probably just being overcritical here, it's fine as is if you
pefer your version, just writing down this as an illustration of what I
meant with the above sentence as I'm not sure I was clear -- I'll be
just as happy to consider this series done so we can do more interesting
things :P

{
    u32 int_div_clk, frac_div_clk;
    int i;
    u16 m;
    u8 p, s;
    
    // (I haven't given up on that *5 to move inside this function...)
    int_div_clk = fsl_samsung_hdmi_phy_find_pms(rate, &p, &m, &s);
    if (int_div_clk == rate)
        goto use_int_clk;

    frac_div_clk = fsl_samsung_hdmi_phy_find_lut(rate, &i);
    // (not convinced that check actually brings much, but it's not like
    // it hurts either)
    if (frac_div_clk == rate)
        goto use_frac_clk;
    
    if (fsl_samsung_hdmi_phy_get_closest_rate(rate, int_div_clk,
                                              frac_div_clk) == int_div_clk) {
use_int_clk:
        dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: using integer divider\n");
        calculated_phy_pll_cfg.pixclk = int_div_clk;
        calculated_phy_pll_cfg.pll_div_regs[0] = FIELD_PREP(REG01_PMS_P_MASK, p);
        calculated_phy_pll_cfg.pll_div_regs[1] = m;
        calculated_phy_pll_cfg.pll_div_regs[2] = FIELD_PREP(REG03_PMS_S_MASK, s-1);
        /* pll_div_regs 3-6 are fixed and pre-defined already */
        phy->cur_cfg  = &calculated_phy_pll_cfg;
    } else {
use_frac_clk:
        dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: using fractional divider\n");
        phy->cur_cfg = &phy_pll_cfg[i];
    }
    return fsl_samsung_hdmi_phy_configure(phy, phy->cur_cfg);
}

-- 
Dominique

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7583EE0209
	for <linux-phy@archiver.kernel.org>; Wed, 11 Sep 2024 05:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SvIrs56ZCx2xSWA4+Twzd1pTdu0da2+/exexA9YRgI4=; b=nd5XAAUimwltsk
	Bb9HT7vvUu2gcGrYC6/1U7u7m10514CG5mehDpxk5GAtFebdhtYfo1xVHGj7OsYsmogKbflBFk23a
	R3ZloKQ8zvB30kO0Ynj4aKgHaFQj4zcD7A9HjoSGCbr41dySGfSMbQRynOhbmxmiKsF5pOYsCbwY1
	HtR234vnM8JAfF4Gj1fTVoVLD61611b6H0srKumQ1z2TEKqdOdtf5W7MuKxCUx4UgyD8LMbBh1bde
	hr6Yugxa0h4lA8tfjxJnSpCsCk+EJN+TbKK58tI23OAJK2w/bZlYn6RaCbMm7P1+u3pOvPVlL6MuF
	nsxDcthikMdg620zmcbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soFt8-000000088kY-0ZB5;
	Wed, 11 Sep 2024 05:27:34 +0000
Received: from gw2.atmark-techno.com ([35.74.137.57])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soFt5-000000088jT-3g27
	for linux-phy@lists.infradead.org;
	Wed, 11 Sep 2024 05:27:33 +0000
Authentication-Results: gw2.atmark-techno.com;
	dkim=pass (2048-bit key; unprotected) header.d=atmark-techno.com header.i=@atmark-techno.com header.a=rsa-sha256 header.s=google header.b=R0WvlzNM;
	dkim-atps=neutral
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by gw2.atmark-techno.com (Postfix) with ESMTPS id EE47D8D5
	for <linux-phy@lists.infradead.org>; Wed, 11 Sep 2024 14:27:30 +0900 (JST)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-205514676a6so70705355ad.3
        for <linux-phy@lists.infradead.org>; Tue, 10 Sep 2024 22:27:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atmark-techno.com; s=google; t=1726032450; x=1726637250; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0Uj/IGL3QgYv6zsXXN0ddxeWgiJjwVJ25z60ECrnpg4=;
        b=R0WvlzNM4Wqt6RbJzyETNI1+cCw6s8bFRHcs7gn8Ap1kMLXEtRPcV2+0PJvr3s5iUA
         4phlEUyDqBsYDaKXs4PRrRUhgFtRYd50Zb/efrIW47msXeo5uNDtPNVgFjANYJQQDcaa
         T7tDOtVU970fTONvWEGMOruFeWKiOvmZ8UwSbG6y4alKovrpv34GFIkKbOmxQpqTIjiX
         cr8e1SvhwJESbITOsnNGLvory0ypyXlyDYHhNbc8klN4zpzZqsSTzmb//bebrnwUTLti
         7D+b+0lrMDXprpt9oa2gJLeWMW6yh+WLNFgqZL8G8wWb1Ix3v3xXBwcBiupD67guUnsJ
         TSOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726032450; x=1726637250;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Uj/IGL3QgYv6zsXXN0ddxeWgiJjwVJ25z60ECrnpg4=;
        b=taFafbX0/DwsDwbw/xz2HhEiKRTzaOYJozWQZYVkJc/gSJzIrJ0ihI8Ns0siLUFI+K
         OPXRH/L1Tjc+hxUfyHpi6WYjx6U7gH1s+EYO5incWd4N5twR3cYIsAVilfsMss7QPP0/
         BV63wfjy69NtDORVhqT9oOOhYg/of5T/h0kFq7QRcroxs4gsP76IEAIv3nQ128BXhc3w
         55JW54f8Erp2i/9XpbqC+EV/1GG9iCLa6t6MVvuse+4u2rq0KQ94lN6BqDzUcTvfRxAV
         DPLqgDw2SlokqWT02nPZSbm+56MFXi0ZTdMk87gVYhEfGYuelCb2E2G60eM2K3gq6mrF
         rSBQ==
X-Gm-Message-State: AOJu0Yy215P2aqQXsQ6SoU38mGtkGv5F3OCsk+7EA0SM5c1NM1Hu6/cC
	MuEsvYGm57cKhIClzOkKmkK3CfYZTPQezGN98Ly3jyKwuKN/fLyJhuBo5JibOomahqpJRDnA7wB
	PF7JZ/aK7yO9X1sJ15EiaaNRlc8AHzVbxx9CRDNlZWBBDK0+MJK3xMvFRtB/48nWg
X-Received: by 2002:a17:902:d492:b0:206:9caf:1e00 with SMTP id d9443c01a7336-2074c5e11c5mr48674265ad.25.1726032449914;
        Tue, 10 Sep 2024 22:27:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHPUGzThfUzlWxMeUHpc1OnJoW4HlHkAf+m5Cm7pn1mQaYlB/gP65X++hlSKjwtRilI1kNH4w==
X-Received: by 2002:a17:902:d492:b0:206:9caf:1e00 with SMTP id d9443c01a7336-2074c5e11c5mr48673895ad.25.1726032449486;
        Tue, 10 Sep 2024 22:27:29 -0700 (PDT)
Received: from localhost (162.198.187.35.bc.googleusercontent.com. [35.187.198.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2dadc014a58sm9511223a91.17.2024.09.10.22.27.29
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Sep 2024 22:27:29 -0700 (PDT)
Date: Wed, 11 Sep 2024 14:27:17 +0900
From: Dominique Martinet <dominique.martinet@atmark-techno.com>
To: Adam Ford <aford173@gmail.com>
Cc: linux-phy@lists.infradead.org, linux-imx@nxp.com, festevam@gmail.com,
	frieder.schrempf@kontron.de, aford@beaconembedded.com,
	Sandor.yu@nxp.com, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Lucas Stach <l.stach@pengutronix.de>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V7 4/5] phy: freescale: fsl-samsung-hdmi: Use closest
 divider
Message-ID: <ZuEqNVWSPXXR1YHM@atmark-techno.com>
References: <20240911012838.944630-1-aford173@gmail.com>
 <20240911012838.944630-5-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240911012838.944630-5-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_222732_048171_19767590 
X-CRM114-Status: GOOD (  31.89  )
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

Adam Ford wrote on Tue, Sep 10, 2024 at 08:28:10PM -0500:
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
> the closest rate.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>

Thank you for the rework,

Reviewed-by: Dominique Martinet <dominique.martinet@atmark-techno.com>
Tested-by: Dominique Martinet <dominique.martinet@atmark-techno.com>

> ---
> V7:  Because of the previous patch refactoring, the flow of this patch
>      changed quite a bit to use more help functions and goto statements
>      to hopefully make the code flow better and improve comment
>      readability.  Because of the change, I removed s-o-b and r-b,
>      and t-b tags.
> 
> V6:  Simplify the calculation of the closest rate and fix
>      a situation where the integer divider values may not be properly
>      setup before they are used.
>      Fixup some comments
> V5:  No Change
> V4:  New to series
> ---
>  drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 40 ++++++++++++++------
>  1 file changed, 28 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> index 49317a96f767..67a28aac9c45 100644
> --- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> +++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> @@ -577,6 +577,16 @@ static void fsl_samsung_hdmi_calculate_phy(struct phy_config *cal_phy, unsigned
>  	/* pll_div_regs 3-6 are fixed and pre-defined already */
>  }
>  
> +static u32 fsl_samsung_hdmi_phy_get_closest_rate(unsigned long rate,
> +						 u32 int_div_clk, u32 frac_div_clk)
> +{
> +	/* The int_div_clk may be greater than rate, so cast it and use ABS */
> +	if (abs((long)rate - (long)int_div_clk) < (rate - frac_div_clk))
> +		return int_div_clk;
> +
> +	return frac_div_clk;
> +}
> +
>  static long phy_clk_round_rate(struct clk_hw *hw,
>  			       unsigned long rate, unsigned long *parent_rate)
>  {
> @@ -624,27 +634,33 @@ static int phy_clk_set_rate(struct clk_hw *hw,
>  		goto use_fract_div;
>  
>  	/*
> -	 * If the rate from the fractional divder is not exact, check the integer divider,
> +	 * If the rate from the fractional divider is not exact, check the integer divider,
>  	 * and use it if that value is an exact match.
>  	 */
>  	int_div_clk = fsl_samsung_hdmi_phy_find_pms(rate, &p, &m, &s);
> +	fsl_samsung_hdmi_calculate_phy(&calculated_phy_pll_cfg, int_div_clk, p, m, s);
>  	if (int_div_clk == rate) {
> -		dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: integer divider rate = %u\n",
> -				   int_div_clk);
> -
> -		fsl_samsung_hdmi_calculate_phy(&calculated_phy_pll_cfg, int_div_clk, p, m, s);
> -		phy->cur_cfg  = &calculated_phy_pll_cfg;
> -		return fsl_samsung_hdmi_phy_configure(phy, phy->cur_cfg);
> +		goto use_int_div;
>  	}
>  
>  	/*
> -	 * If neither the fractional divder nor the integer divder can find an exact value
> -	 * fall back to using the fractional divider
> +	 * Compare the difference between the integer clock and the fractional clock against
> +	 * the desired clock and which whichever is closest,
>  	 */
> +	if (fsl_samsung_hdmi_phy_get_closest_rate(rate, int_div_clk,
> +						  fract_div_phy->pixclk) == fract_div_phy->pixclk)
> +		goto use_fract_div;
> +
> +use_int_div:
> +	dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: integer divider rate = %u\n", int_div_clk);
> +	phy->cur_cfg  = &calculated_phy_pll_cfg;
> +	goto end;
> +
>  use_fract_div:
> -	phy->cur_cfg = fract_div_phy;
> -	dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: using fractional divider rate = %u\n",
> -			   phy->cur_cfg->pixclk);
> +	 phy->cur_cfg = fract_div_phy;
> +	 dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: using fractional divider rate = %u\n",
> +		   phy->cur_cfg->pixclk);
> +end:
>  	return fsl_samsung_hdmi_phy_configure(phy, phy->cur_cfg);
>  }
>  

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

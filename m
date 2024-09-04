Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53FAACD3431
	for <linux-phy@archiver.kernel.org>; Wed,  4 Sep 2024 08:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ovvlDKoIoYRwOvr+vIMtKihVLJou41RLN82GBN7K+8s=; b=3T7rGnEdydFtSw
	sy0NUxbsBDGmxXEpud7DsQARNhHNuYdULJP8H8AEUNK+lokroudmPihPMfQQwxJchWtfmEjahfAyd
	UvvYUzULm4lUBrTGy5JHL68VOleufTE0d8Ux4Nbir5y3795ZNvRwKxzdNOJuSzeBpspXF3NgYIDxV
	IKEx6DB4VtrMRn5ivYQbkTPpd98OkjfD1wA2hj5BK+rfHBiWOzPnvdyk1l7npQSdpdrR7QgJoXyNX
	GfCkCKEArc8afDYjnGu/zOC8JHOSoN05t1JA6ZOzK0RYDhSVOMhfeAwnfseOb92fPvLz/5aGCa6P2
	qBdbCIliawSBMGZ8+IEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sllWL-00000003S18-0HNb;
	Wed, 04 Sep 2024 08:37:45 +0000
Received: from gw2.atmark-techno.com ([35.74.137.57])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sllNr-00000003PBL-2HA1
	for linux-phy@lists.infradead.org;
	Wed, 04 Sep 2024 08:29:00 +0000
Authentication-Results: gw2.atmark-techno.com;
	dkim=pass (2048-bit key; unprotected) header.d=atmark-techno.com header.i=@atmark-techno.com header.a=rsa-sha256 header.s=google header.b=fqUdTmVK;
	dkim-atps=neutral
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by gw2.atmark-techno.com (Postfix) with ESMTPS id 4460196A
	for <linux-phy@lists.infradead.org>; Wed,  4 Sep 2024 17:28:56 +0900 (JST)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2058d0e6269so27213845ad.1
        for <linux-phy@lists.infradead.org>; Wed, 04 Sep 2024 01:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atmark-techno.com; s=google; t=1725438535; x=1726043335; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=A9BCwc1u246SzIEfXsEg7Wl2dUEH2B7BGFR7ylaNFJA=;
        b=fqUdTmVKAsJrMgNxIe3fsB5jSXejZ+2SItAYp7JC0JSnYCb+EQiY674bPMe7vMcg0d
         D9FFDfEyKOF6iL0bHA1mCLMPsaBCzsNrbk6x1UXAVkRDCSH9C5iuNVEOUpomqeDHETac
         suyf7ivH90vj5dHXtfzVOwCIr0Fc2o296pzJOC6syr4Cm+3GSRsoIIBxKKs+KqfEldxb
         VS23t7BgRUFGeKjX0IlLq9rgIpbxJIAEDV1gUI0FddPklQYToZjLyv5fH6fCzjkCst1j
         pXVaPxoWm0s4Crl41WA2J7Xl27zxbwyTFM/16mAbPqFhUD2QlDQMM5EkGQ2G7qTyWcea
         yo0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725438535; x=1726043335;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A9BCwc1u246SzIEfXsEg7Wl2dUEH2B7BGFR7ylaNFJA=;
        b=d2/hcGyMm0hbDbeGkdJ438tZYL2eKPov+l2ob29hT84JQhZHxY/9El8n9W/dWWXthv
         SsE+yQrYuO2Coo5BAiHVkDTqm6PLq/lzKYtoD6NvN3okloIF8mn9gg8TqdFIChqhDKIp
         mWRKRFP5NxvKIfsXjmrH94ftv8XMwcEUAnurnC5VhF8M7FdrFEorivxZNhcl5TCAdrQz
         zvdJ9M0pax3DdNYoyAPAJVyTYGfvzUPJ5Lu0mBWG7uDCVYMk44JboddnGQynbbCMEwm7
         Ba2x0k+yfsGnqlIrQx3yDtIj6LAYb27P9FwVPcM38AUAINUpkBOte6WaKs1TGpgjtycS
         azrA==
X-Gm-Message-State: AOJu0Yx4L40Rzk+pgFYIhSxn0PAfC+uW8CQEB8p0tByvN3ya8LH+RmUY
	HUyCYEbsRW2idglEF/TTiNkuz8VZkTsAOz+TbB2mjd4Wb/ah7R1fsOiGakpjF5+Kl029us/h//N
	MX/t5LEDJ5XDgHYQy2IZuZubxy0dT/nfUpAfc15Nz6g2O6prNHw/YqYCXrH9yQ7g9
X-Received: by 2002:a17:903:1209:b0:1fa:1dd8:947a with SMTP id d9443c01a7336-2050c40deccmr203498545ad.46.1725438534981;
        Wed, 04 Sep 2024 01:28:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGS+b8OnFANk61nL2CTN2tYlqnFgqCAT2QKrc70UflP7I3lRMwNJQtrzMre3KtyFh164q8eyA==
X-Received: by 2002:a17:903:1209:b0:1fa:1dd8:947a with SMTP id d9443c01a7336-2050c40deccmr203498305ad.46.1725438534560;
        Wed, 04 Sep 2024 01:28:54 -0700 (PDT)
Received: from localhost (76.125.194.35.bc.googleusercontent.com. [35.194.125.76])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-206aea3864csm9133635ad.141.2024.09.04.01.28.53
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Sep 2024 01:28:54 -0700 (PDT)
Date: Wed, 4 Sep 2024 17:28:42 +0900
From: Dominique Martinet <dominique.martinet@atmark-techno.com>
To: Adam Ford <aford173@gmail.com>
Cc: linux-phy@lists.infradead.org, linux-imx@nxp.com, festevam@gmail.com,
	frieder.schrempf@kontron.de, aford@beaconembedded.com,
	Sandor.yu@nxp.com, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Lucas Stach <l.stach@pengutronix.de>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH V4 3/5] phy: freescale: fsl-samsung-hdmi: Support dynamic
 integer
Message-ID: <ZtgaOlHi93b_py7T@atmark-techno.com>
References: <20240903013113.139698-1-aford173@gmail.com>
 <20240903013113.139698-4-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240903013113.139698-4-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_012859_716113_06133090 
X-CRM114-Status: GOOD (  30.64  )
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

Adam Ford wrote on Mon, Sep 02, 2024 at 08:30:45PM -0500:
> There is currently a look-up table for a variety of resolutions.
> Since the phy has the ability to dynamically calculate the values
> necessary to use the intger divider which should allow more
> resolutions without having to update the look-up-table.
> 
> If the lookup table cannot find an exact match, fall back to the
> dynamic calculator of the integer divider.
> 
> Previously, the value of P was hard-coded to 1, this required an
> update to the phy_pll_cfg table to add in the extra value into the
> table, so if the value of P is calculated to be something else
> by the PMS calculator, the calculated_phy_pll_cfg structure
> can be used instead without having to keep track of which method
> was used.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>

I've rechecked this series with abs() added in the later patch and this
looks fine; all modes I tried properly synced up with my monitor.
(except one but I don't see set_rate() being called for it so it's
something else)

(On a semi-unrelated note on my backport I get a "PLL failed to lock"
message for the first sync only, but everything seems to work regardless
even if there is no further set_rate(), so I'll pretend I didn't see
that... the old code just has a 20ms wait without any check so it's not
like it was any better... anyway that's unrelated to this serie)

I'm also confident enough set_rate() won't be called in parallel with
different rates for my device so I'm fine with the new global, letting
others complain if that's a problem for them.


So, feel free to add this to all 5 patches:
Test-by: Dominique Martinet <dominique.martinet@atmark-techno.com>

Just one style nitpick:

> @@ -453,29 +541,70 @@ static unsigned long phy_clk_recalc_rate(struct clk_hw *hw,
>  static long phy_clk_round_rate(struct clk_hw *hw,
>  			       unsigned long rate, unsigned long *parent_rate)
>  {
> +	u32 int_div_clk;
>  	int i;
> +	u16 m;
> +	u8 p, s;
> +
> +	/* If the clock is out of range return error instead of searching */
> +	if (rate > 297000000 || rate < 22250000)
> +		return -EINVAL;
>  
> +	/* Check the look-up table */
>  	for (i = ARRAY_SIZE(phy_pll_cfg) - 1; i >= 0; i--)
>  		if (phy_pll_cfg[i].pixclk <= rate)
> -			return phy_pll_cfg[i].pixclk;
> +			break;
> +	/* If the rate is an exact match, return it now */
> +	if (rate == phy_pll_cfg[i].pixclk)
> +		return phy_pll_cfg[i].pixclk;
> +
> +	/*
> +	 * The math on the lookup table shows the PMS math yields a
> +	 * frequency 5 x pixclk.
> +	 * When we check the integer divider against the desired rate,
> +	 * multiply the rate x 5 and then divide the outcome by 5.
> +	 */
> +	int_div_clk = fsl_samsung_hdmi_phy_find_pms(rate * 5, &p, &m, &s) / 5;

I still think it makes more sense to move the * 5, / 5 and comment
inside fsl_samsung_hdmi_phy_find_pms -- the other caller doesn't have
such the comment so it might look odd depending on where one started
looking.

-- 
Dominique

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

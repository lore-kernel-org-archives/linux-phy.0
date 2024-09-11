Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73D43EE0209
	for <linux-phy@archiver.kernel.org>; Wed, 11 Sep 2024 05:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q5cr7is+57brPYOIwaaH06Tejm7/VOMG0eI5AtYU7fc=; b=smU5tjPytijr3z
	7m+R0zJtCLHG6YVO8klOrIDj8G78vIA+sZuCofTExHPdLAVg4CfBSjB9gOsBS9E9ineAigkvnvMCJ
	EG/h6DXCNpSF5aZmvuzh4MHhy55kuwOK7f4PSlgL2jRLntaXMxzfbq0GyR0ojm/zKvkTcudY7edjN
	z9xffOimYw8jTaFWbrl2iNupK5m2wJpTcmO5AF5Rv05DQ0a7Aa+pxYOoy3qwNnjfAhxxnqpQBgHbM
	kMXl9MoZ5+w7Q1fYgJ89ZVw+76ALbF8sT7cb1ay2vYlOsPThnfD/rG1QKsYk53dGAYDIv2Ax0AQdC
	QgDVFSgExfSD+cz/He0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soFpD-000000088Of-0h6C;
	Wed, 11 Sep 2024 05:23:31 +0000
Received: from gw2.atmark-techno.com ([35.74.137.57])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soFpA-000000088No-0hog
	for linux-phy@lists.infradead.org;
	Wed, 11 Sep 2024 05:23:29 +0000
Authentication-Results: gw2.atmark-techno.com;
	dkim=pass (2048-bit key; unprotected) header.d=atmark-techno.com header.i=@atmark-techno.com header.a=rsa-sha256 header.s=google header.b=VDGcemTX;
	dkim-atps=neutral
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by gw2.atmark-techno.com (Postfix) with ESMTPS id 0778E96A
	for <linux-phy@lists.infradead.org>; Wed, 11 Sep 2024 14:23:26 +0900 (JST)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-2d87b7618d3so1839227a91.3
        for <linux-phy@lists.infradead.org>; Tue, 10 Sep 2024 22:23:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atmark-techno.com; s=google; t=1726032205; x=1726637005; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4rKrvLsgg5fFp1W35lEovNaFCVsL+TLW+LTBGqI9Hx0=;
        b=VDGcemTXb5536oN92k849bpEVnOvwhpUZbKWHkaDB2pKCLefgc/wl0gAKgJ/Wix3cx
         gfEDy+lB5uAG197+OQ9Uf+xVharRSi8PEJYoQWu2GThPR4otAGPXxhLGPvOizqdtAfcV
         y+vw/RgAh27ulvKx6pRHpWPYmqeK0niU4qeX5yV5wHpRkZHST0/dn+640ttfi9auXkuY
         6J0FjSFqdWEljnaM0Hwk0wxKht5xdDdnxoS5axvmIhXW5vTQE9Z16Cut1eUPEF/Pt5a/
         MMRsPUlSIvhLuQlpWgDmWolRBkD8EQSWaCQyOCOmN9TOqj4avx62SwPx+6jM+eQ700Jk
         fGaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726032205; x=1726637005;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4rKrvLsgg5fFp1W35lEovNaFCVsL+TLW+LTBGqI9Hx0=;
        b=kfaLZe+PtPzkI9TxVtV3abcNGmtRXYCfbdNSloPSPoYjnSiDa9/gImYaMsRiVuDbjl
         lxDPZI0E+2pv2Yiewn6FUlmPBUvguIROVDBstCcAXlSLGzOdAypYdF3R+U18x7vr7A66
         lP5XVWS8ab5v716VPhr8OlQ0BqQFiuc9g/85BA0GPV30dW+nZdmLKgxUPVTk+4CQKhyX
         up2O3wnWvZsLHasED6hs7HkI7+o3TIHpVRVOgTdRFvyKRLkj8yn7xtu2ESMhvDOVZ81k
         E2Eq6GMCI19Unrik+ytC4lKsXAffDwO0amKsrnGtDspRifEhmZTp+z0jRJ8WX3zkeP0P
         lEtg==
X-Gm-Message-State: AOJu0Yz8pFG6FyrICNlBKc/cJK50QnyhnFJpW5pya2W2HbC4JEJp8GCM
	VIgExOJ1p8dX7/biyS6QLLvUWhmRbRv+PrcF6dqYpr/EaddTXQ+LpaJ8n7J3cypkzHHzA616Dlv
	DzI/CIqBubc6UoBGXVw3AlUHCuIo4M4n/P/cXN8HFgPmYUvGbJYYW8vEQGfjkf9C/
X-Received: by 2002:a17:90a:983:b0:2d8:8fe9:b015 with SMTP id 98e67ed59e1d1-2db83083512mr2250653a91.39.1726032204918;
        Tue, 10 Sep 2024 22:23:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGqQIj3JaREdQYsYKYcmjKKHJ7g+pWzJk50vdT2Uw6ikKf2ECT/imB6goWf1DaHFPrCOuXZ1A==
X-Received: by 2002:a17:90a:983:b0:2d8:8fe9:b015 with SMTP id 98e67ed59e1d1-2db83083512mr2250625a91.39.1726032204512;
        Tue, 10 Sep 2024 22:23:24 -0700 (PDT)
Received: from localhost (117.209.187.35.bc.googleusercontent.com. [35.187.209.117])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2dadc0213a7sm9600929a91.18.2024.09.10.22.23.23
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Sep 2024 22:23:24 -0700 (PDT)
Date: Wed, 11 Sep 2024 14:23:12 +0900
From: Dominique Martinet <dominique.martinet@atmark-techno.com>
To: Adam Ford <aford173@gmail.com>
Cc: linux-phy@lists.infradead.org, linux-imx@nxp.com, festevam@gmail.com,
	frieder.schrempf@kontron.de, aford@beaconembedded.com,
	Sandor.yu@nxp.com, Marco Felsch <m.felsch@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Lucas Stach <l.stach@pengutronix.de>,
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH V7 2/5] phy: freescale: fsl-samsung-hdmi: Simplify
 REG21_PMS_S_MASK lookup
Message-ID: <ZuEpQLcDQ8pgMTUB@atmark-techno.com>
References: <20240911012838.944630-1-aford173@gmail.com>
 <20240911012838.944630-3-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240911012838.944630-3-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_222328_350607_FA451E3B 
X-CRM114-Status: GOOD (  19.61  )
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

Adam Ford wrote on Tue, Sep 10, 2024 at 08:28:08PM -0500:
> The value of 'S' is writen to two places, PHY_REG3[7:4] and
> PHY_REG21[3:0].  There is a lookup table which contains
> the value of PHY_REG3.  Rather than using a switch statement
> based on the pixel clock to search for the value of 'S' again,
> just shift the contents of PHY_REG3[7:4] >> 4 and place the value
> in PHY_REG21[3:0].  Doing this can eliminate an entire function.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> Tested-by: Frieder Schrempf <frieder.schrempf@kontron.de>

Reviewed-by: Dominique Martinet <dominique.martinet@atmark-techno.com>
Tested-by: Dominique Martinet <dominique.martinet@atmark-techno.com>

> ---
>  drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 39 ++------------------
>  1 file changed, 4 insertions(+), 35 deletions(-)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> index acea7008aefc..4f6874226f9a 100644
> --- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> +++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> @@ -364,40 +364,6 @@ to_fsl_samsung_hdmi_phy(struct clk_hw *hw)
>  	return container_of(hw, struct fsl_samsung_hdmi_phy, hw);
>  }
>  
> -static void
> -fsl_samsung_hdmi_phy_configure_pixclk(struct fsl_samsung_hdmi_phy *phy,
> -				      const struct phy_config *cfg)
> -{
> -	u8 div = 0x1;
> -
> -	switch (cfg->pixclk) {
> -	case  22250000 ...  33750000:
> -		div = 0xf;
> -		break;
> -	case  35000000 ...  40000000:
> -		div = 0xb;
> -		break;
> -	case  43200000 ...  47500000:
> -		div = 0x9;
> -		break;
> -	case  50349650 ...  63500000:
> -		div = 0x7;
> -		break;
> -	case  67500000 ...  90000000:
> -		div = 0x5;
> -		break;
> -	case  94000000 ... 148500000:
> -		div = 0x3;
> -		break;
> -	case 154000000 ... 297000000:
> -		div = 0x1;
> -		break;
> -	}
> -
> -	writeb(REG21_SEL_TX_CK_INV | FIELD_PREP(REG21_PMS_S_MASK, div),
> -	       phy->regs + PHY_REG(21));
> -}
> -
>  static void
>  fsl_samsung_hdmi_phy_configure_pll_lock_det(struct fsl_samsung_hdmi_phy *phy,
>  					    const struct phy_config *cfg)
> @@ -466,7 +432,10 @@ static int fsl_samsung_hdmi_phy_configure(struct fsl_samsung_hdmi_phy *phy,
>  	for (i = 0; i < PHY_PLL_DIV_REGS_NUM; i++)
>  		writeb(cfg->pll_div_regs[i], phy->regs + PHY_REG(2) + i * 4);
>  
> -	fsl_samsung_hdmi_phy_configure_pixclk(phy, cfg);
> +	/* High nibble of pll_div_regs[1] contains S which also gets written to REG21 */
> +	writeb(REG21_SEL_TX_CK_INV | FIELD_PREP(REG21_PMS_S_MASK,
> +	       cfg->pll_div_regs[1] >> 4), phy->regs + PHY_REG(21));
> +
>  	fsl_samsung_hdmi_phy_configure_pll_lock_det(phy, cfg);
>  
>  	writeb(REG33_FIX_DA | REG33_MODE_SET_DONE, phy->regs + PHY_REG(33));

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

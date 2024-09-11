Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1E2FEE0209
	for <linux-phy@archiver.kernel.org>; Wed, 11 Sep 2024 05:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aBohnPfV03oYX3DCu6NtsTE3HbpdLX3yqdTFpYOomO8=; b=DFp8eV6HyC5Zuv
	EaRMN5fXvcHG1S4cVdlQbsTGIBTzr+8RAET/2uuAcdAayosGk/GrFo4O+TdwbVmf7d3u/b2SN5qM/
	bJixfIw7FmDcpOmYEVd/CqmlqLY+KcbcxkBTLvKYl1ZDEepuabJGHrd8HEVLaSAePBmufp7+CSxEb
	SkY4sKd9gkfZHvWLjacsWMuZ79vTP/bWWcDA9HYUbxRk2ZkvhstZKjMpV8CNElLwct7L1Q7ew6X+J
	32VlE6hj16fC4IgxQj6W5xSpKRAMqPKfJme3PmDneYoCAHM4OQBAwy5HSVd7JOrr9y7792Lhx5InZ
	L1eoNTcXGZzg+Jui9Lfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soGCe-00000008Bq6-1P3O;
	Wed, 11 Sep 2024 05:47:44 +0000
Received: from gw2.atmark-techno.com ([35.74.137.57])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soGCb-00000008Bpd-1r5I
	for linux-phy@lists.infradead.org;
	Wed, 11 Sep 2024 05:47:42 +0000
Authentication-Results: gw2.atmark-techno.com;
	dkim=pass (2048-bit key; unprotected) header.d=atmark-techno.com header.i=@atmark-techno.com header.a=rsa-sha256 header.s=google header.b=HDJk/mOx;
	dkim-atps=neutral
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by gw2.atmark-techno.com (Postfix) with ESMTPS id D519B629
	for <linux-phy@lists.infradead.org>; Wed, 11 Sep 2024 14:47:39 +0900 (JST)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-718ea791e44so4010311b3a.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Sep 2024 22:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atmark-techno.com; s=google; t=1726033659; x=1726638459; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ziNo+jooTu1yLXht0zW8ISeXgllh/gZGxSpk8QzQlRk=;
        b=HDJk/mOxMqHMee8frzPYtqaqxSUOGyXRFUf0E+LeBGm8yFP2I69/UEBgG4gmOIwXu9
         /xiqSnFMjm2JekhlaMWoW9zQqcE1vLKC8+RWkjVuiwPR1oBwCyVH/Sw/HxPO0hrh8Ybt
         qCx1OQiYZGZd1JWtq+JIzeSHJoHdavBR26bLEM/rMRXi/yrH1pcYb4VlwEUgj93ardV4
         i0qOPruix8sJP0eGUeBodUtUCTxJlMPC/kmkbM5NiYaT0vySQfZf9WkmU9xOJ+xqQVar
         yvwPIQM5sBJJEv24LqbcDpjEfEzkMCwMS4nc1w0nJq6JnNfU4BYkwNX7ZjruWpM/PAbq
         C2eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726033659; x=1726638459;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ziNo+jooTu1yLXht0zW8ISeXgllh/gZGxSpk8QzQlRk=;
        b=rtsBFQNKsQve+QMgtNxk3lF8Svd7WOxXp/ipVbIKpV4azxNlF+qASLl1cB8PCHhnf9
         BetrQ3JGhSnOnqrvaV4L7plQ2BEA3WjnGY3d6N7mIABkraQXopaTO1XISpfOeJnXsqEG
         u3FpBcEbkz4Fu04VPx5j0WUQCCUrVbU/rbi6CKkm54UlS8FC/65wwn43dOqciWZT1JMV
         WIeB0ZwFf0tNC3yy4/S2jB9AGshubqiSKX+HJeXeH5KWCtMX4EUvUoms8UZ9HU9YcuDC
         WF4UuQ0F+LmuGSaL1KN58NZYlx/i4vqq5Fi0pu0GRhkPC45YUppI+w0ScxLd+KrUCcCP
         bNSw==
X-Gm-Message-State: AOJu0YxSlOjEfFdol4niJDr7YV6YBYI14WMgQptsvp429Q21STaxHnRD
	60jT8gaKvJ3CSR4SaI6s4t1pDNDx3Hj+khnOtdCf/eZa+A2sQcbpUUd9PpL/calPmv4pGf90zZJ
	6vjFDOaRIkvGm2nCnhaJN+2D5ZFdzJzXbQMefmrfWEwZvg7dL2ln7CyL63LtsWlHX
X-Received: by 2002:a05:6a00:c86:b0:70d:1b17:3c5e with SMTP id d2e1a72fcca58-718e3f9de6cmr21488942b3a.6.1726033658610;
        Tue, 10 Sep 2024 22:47:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFaJlkwR6zNDoYckSY7z8O/8d21hE3Cu0wd56iGZje0FCkeaHsrD2JlwFIpckDYC5/UT7Wkzw==
X-Received: by 2002:a05:6a00:c86:b0:70d:1b17:3c5e with SMTP id d2e1a72fcca58-718e3f9de6cmr21488911b3a.6.1726033657952;
        Tue, 10 Sep 2024 22:47:37 -0700 (PDT)
Received: from localhost (145.82.198.104.bc.googleusercontent.com. [104.198.82.145])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7d8255dc130sm6514668a12.72.2024.09.10.22.47.37
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Sep 2024 22:47:37 -0700 (PDT)
Date: Wed, 11 Sep 2024 14:47:25 +0900
From: Dominique Martinet <dominique.martinet@atmark-techno.com>
To: Adam Ford <aford173@gmail.com>
Cc: linux-phy@lists.infradead.org, linux-imx@nxp.com, festevam@gmail.com,
	frieder.schrempf@kontron.de, aford@beaconembedded.com,
	Sandor.yu@nxp.com, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Lucas Stach <l.stach@pengutronix.de>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V7 5/5] phy: freescale: fsl-samsung-hdmi: Remove
 unnecessary LUT entries
Message-ID: <ZuEu7Qf3WkU8NnJA@atmark-techno.com>
References: <20240911012838.944630-1-aford173@gmail.com>
 <20240911012838.944630-6-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240911012838.944630-6-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_224741_617678_B7ACF218 
X-CRM114-Status: GOOD (  18.22  )
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

Adam Ford wrote on Tue, Sep 10, 2024 at 08:28:11PM -0500:
> The lookup table contains entries which use the integer divider
> instead of just the fractional divider. Since the set and round
> functions check both the integer divider values and the LUT values,
> it's no longer necessary to keep the integer divider values in the
> lookup table, as can be dynamically calcuated.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> Tested-by: Frieder Schrempf <frieder.schrempf@kontron.de>


not that we'd have done anything different if there was something
incoherent, but FWIW I checked re-computing values for these regs match
and there was no problem.

Reviewed-by: Dominique Martinet <dominique.martinet@atmark-techno.com>
Tested-by: Dominique Martinet <dominique.martinet@atmark-techno.com>


> ---
> V7: No Change
> V6: Fix typos in commit message
> V5: No Change
> V4:  New to series
> ---
>  drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 83 +++-----------------
>  1 file changed, 13 insertions(+), 70 deletions(-)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> index 67a28aac9c45..a5ad51425ee3 100644
> --- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> +++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> @@ -69,25 +69,16 @@ static const struct phy_config phy_pll_cfg[] = {
>  	}, {
>  		.pixclk = 23750000,
>  		.pll_div_regs = { 0xd1, 0x50, 0xf1, 0x86, 0x85, 0x80, 0x40 },
> -	}, {
> -		.pixclk = 24000000,
> -		.pll_div_regs = { 0xd1, 0x50, 0xf0, 0x00, 0x00, 0x80, 0x00 },
>  	}, {
>  		.pixclk = 24024000,
>  		.pll_div_regs = { 0xd1, 0x50, 0xf1, 0x99, 0x02, 0x80, 0x40 },
>  	}, {
>  		.pixclk = 25175000,
>  		.pll_div_regs = { 0xd1, 0x54, 0xfc, 0xcc, 0x91, 0x80, 0x40 },
> -	}, {
> -		.pixclk = 25200000,
> -		.pll_div_regs = { 0xd1, 0x54, 0xf0, 0x00, 0x00, 0x80, 0x00 },
> -	}, {
> +	},  {
>  		.pixclk = 26750000,
>  		.pll_div_regs = { 0xd1, 0x5a, 0xf2, 0x89, 0x88, 0x80, 0x40 },
> -	}, {
> -		.pixclk = 27000000,
> -		.pll_div_regs = { 0xd1, 0x5a, 0xf0, 0x00, 0x00, 0x80, 0x00 },
> -	}, {
> +	},  {
>  		.pixclk = 27027000,
>  		.pll_div_regs = { 0xd1, 0x5a, 0xf2, 0xfd, 0x0c, 0x80, 0x40 },
>  	}, {
> @@ -105,18 +96,9 @@ static const struct phy_config phy_pll_cfg[] = {
>  	}, {
>  		.pixclk = 35000000,
>  		.pll_div_regs = { 0xd1, 0x58, 0xb8, 0x8b, 0x88, 0x80, 0x40 },
> -	}, {
> -		.pixclk = 36000000,
> -		.pll_div_regs = { 0xd1, 0x5a, 0xb0, 0x00, 0x00, 0x80, 0x00 },
> -	}, {
> +	},  {
>  		.pixclk = 36036000,
>  		.pll_div_regs = { 0xd1, 0x5a, 0xb2, 0xfd, 0x0c, 0x80, 0x40 },
> -	}, {
> -		.pixclk = 40000000,
> -		.pll_div_regs = { 0xd1, 0x64, 0xb0, 0x00, 0x00, 0x80, 0x00 },
> -	}, {
> -		.pixclk = 43200000,
> -		.pll_div_regs = { 0xd1, 0x5a, 0x90, 0x00, 0x00, 0x80, 0x00 },
>  	}, {
>  		.pixclk = 43243200,
>  		.pll_div_regs = { 0xd1, 0x5a, 0x92, 0xfd, 0x0c, 0x80, 0x40 },
> @@ -132,19 +114,13 @@ static const struct phy_config phy_pll_cfg[] = {
>  	}, {
>  		.pixclk = 50349650,
>  		.pll_div_regs = { 0xd1, 0x54, 0x7c, 0xc3, 0x8f, 0x80, 0x40 },
> -	}, {
> -		.pixclk = 50400000,
> -		.pll_div_regs = { 0xd1, 0x54, 0x70, 0x00, 0x00, 0x80, 0x00 },
>  	}, {
>  		.pixclk = 53250000,
>  		.pll_div_regs = { 0xd1, 0x58, 0x72, 0x84, 0x03, 0x82, 0x41 },
>  	}, {
>  		.pixclk = 53500000,
>  		.pll_div_regs = { 0xd1, 0x5a, 0x72, 0x89, 0x88, 0x80, 0x40 },
> -	}, {
> -		.pixclk = 54000000,
> -		.pll_div_regs = { 0xd1, 0x5a, 0x70, 0x00, 0x00, 0x80, 0x00 },
> -	}, {
> +	},  {
>  		.pixclk = 54054000,
>  		.pll_div_regs = { 0xd1, 0x5a, 0x72, 0xfd, 0x0c, 0x80, 0x40 },
>  	}, {
> @@ -153,10 +129,7 @@ static const struct phy_config phy_pll_cfg[] = {
>  	}, {
>  		.pixclk = 59340659,
>  		.pll_div_regs = { 0xd1, 0x62, 0x74, 0xdb, 0x52, 0x88, 0x47 },
> -	}, {
> -		.pixclk = 59400000,
> -		.pll_div_regs = { 0xd1, 0x63, 0x70, 0x00, 0x00, 0x80, 0x00 },
> -	}, {
> +	},  {
>  		.pixclk = 61500000,
>  		.pll_div_regs = { 0xd1, 0x66, 0x74, 0x82, 0x01, 0x88, 0x45 },
>  	}, {
> @@ -168,10 +141,7 @@ static const struct phy_config phy_pll_cfg[] = {
>  	}, {
>  		.pixclk = 70000000,
>  		.pll_div_regs = { 0xd1, 0x58, 0x58, 0x8b, 0x88, 0x80, 0x40 },
> -	}, {
> -		.pixclk = 72000000,
> -		.pll_div_regs = { 0xd1, 0x5a, 0x50, 0x00, 0x00, 0x80, 0x00 },
> -	}, {
> +	},  {
>  		.pixclk = 72072000,
>  		.pll_div_regs = { 0xd1, 0x5a, 0x52, 0xfd, 0x0c, 0x80, 0x40 },
>  	}, {
> @@ -183,10 +153,7 @@ static const struct phy_config phy_pll_cfg[] = {
>  	}, {
>  		.pixclk = 78500000,
>  		.pll_div_regs = { 0xd1, 0x62, 0x54, 0x87, 0x01, 0x80, 0x40 },
> -	}, {
> -		.pixclk = 80000000,
> -		.pll_div_regs = { 0xd1, 0x64, 0x50, 0x00, 0x00, 0x80, 0x00 },
> -	}, {
> +	},  {
>  		.pixclk = 82000000,
>  		.pll_div_regs = { 0xd1, 0x66, 0x54, 0x82, 0x01, 0x88, 0x45 },
>  	}, {
> @@ -213,10 +180,7 @@ static const struct phy_config phy_pll_cfg[] = {
>  	}, {
>  		.pixclk = 100699300,
>  		.pll_div_regs = { 0xd1, 0x54, 0x3c, 0xc3, 0x8f, 0x80, 0x40 },
> -	}, {
> -		.pixclk = 100800000,
> -		.pll_div_regs = { 0xd1, 0x54, 0x30, 0x00, 0x00, 0x80, 0x00 },
> -	}, {
> +	},  {
>  		.pixclk = 102500000,
>  		.pll_div_regs = { 0xd1, 0x55, 0x32, 0x8c, 0x05, 0x90, 0x4b },
>  	}, {
> @@ -228,19 +192,13 @@ static const struct phy_config phy_pll_cfg[] = {
>  	}, {
>  		.pixclk = 107000000,
>  		.pll_div_regs = { 0xd1, 0x5a, 0x32, 0x89, 0x88, 0x80, 0x40 },
> -	}, {
> -		.pixclk = 108000000,
> -		.pll_div_regs = { 0xd1, 0x5a, 0x30, 0x00, 0x00, 0x80, 0x00 },
> -	}, {
> +	},  {
>  		.pixclk = 108108000,
>  		.pll_div_regs = { 0xd1, 0x5a, 0x32, 0xfd, 0x0c, 0x80, 0x40 },
>  	}, {
>  		.pixclk = 118000000,
>  		.pll_div_regs = { 0xd1, 0x62, 0x34, 0x95, 0x08, 0x80, 0x40 },
> -	}, {
> -		.pixclk = 118800000,
> -		.pll_div_regs = { 0xd1, 0x63, 0x30, 0x00, 0x00, 0x80, 0x00 },
> -	}, {
> +	},  {
>  		.pixclk = 123000000,
>  		.pll_div_regs = { 0xd1, 0x66, 0x34, 0x82, 0x01, 0x88, 0x45 },
>  	}, {
> @@ -261,10 +219,7 @@ static const struct phy_config phy_pll_cfg[] = {
>  	}, {
>  		.pixclk = 140000000,
>  		.pll_div_regs = { 0xd1, 0x75, 0x36, 0xa7, 0x90, 0x80, 0x40 },
> -	}, {
> -		.pixclk = 144000000,
> -		.pll_div_regs = { 0xd1, 0x78, 0x30, 0x00, 0x00, 0x80, 0x00 },
> -	}, {
> +	},  {
>  		.pixclk = 148352000,
>  		.pll_div_regs = { 0xd1, 0x7b, 0x35, 0xdb, 0x39, 0x90, 0x45 },
>  	}, {
> @@ -288,9 +243,6 @@ static const struct phy_config phy_pll_cfg[] = {
>  	}, {
>  		.pixclk = 165000000,
>  		.pll_div_regs = { 0xd1, 0x45, 0x11, 0x84, 0x81, 0x90, 0x4b },
> -	}, {
> -		.pixclk = 180000000,
> -		.pll_div_regs = { 0xd1, 0x4b, 0x10, 0x00, 0x00, 0x80, 0x00 },
>  	}, {
>  		.pixclk = 185625000,
>  		.pll_div_regs = { 0xd1, 0x4e, 0x12, 0x9a, 0x95, 0x80, 0x40 },
> @@ -309,25 +261,16 @@ static const struct phy_config phy_pll_cfg[] = {
>  	}, {
>  		.pixclk = 213000000,
>  		.pll_div_regs = { 0xd1, 0x58, 0x12, 0x84, 0x03, 0x82, 0x41 },
> -	}, {
> -		.pixclk = 216000000,
> -		.pll_div_regs = { 0xd1, 0x5a, 0x10, 0x00, 0x00, 0x80, 0x00 },
>  	}, {
>  		.pixclk = 216216000,
>  		.pll_div_regs = { 0xd1, 0x5a, 0x12, 0xfd, 0x0c, 0x80, 0x40 },
> -	}, {
> -		.pixclk = 237600000,
> -		.pll_div_regs = { 0xd1, 0x63, 0x10, 0x00, 0x00, 0x80, 0x00 },
> -	}, {
> +	},  {
>  		.pixclk = 254000000,
>  		.pll_div_regs = { 0xd1, 0x69, 0x14, 0x89, 0x08, 0x80, 0x40 },
>  	}, {
>  		.pixclk = 277500000,
>  		.pll_div_regs = { 0xd1, 0x73, 0x15, 0x88, 0x05, 0x90, 0x4d },
> -	}, {
> -		.pixclk = 288000000,
> -		.pll_div_regs = { 0xd1, 0x78, 0x10, 0x00, 0x00, 0x80, 0x00 },
> -	}, {
> +	},  {
>  		.pixclk = 297000000,
>  		.pll_div_regs = { 0xd1, 0x7b, 0x15, 0x84, 0x03, 0x90, 0x45 },
>  	},

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

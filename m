Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64849EE57CF
	for <linux-phy@archiver.kernel.org>; Wed, 11 Sep 2024 19:03:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yEtzF7WgOrkhkS1d1oX4bCtINlsPyDsKMAJhU7UZkoo=; b=UQiYaXSaLXHNlc
	BAmYi/z/f/PSQ2zzdvEnVj9ByB+jy0rFT9yhWu688Mj0CJy2Ltsvpv+PXFPUr/VpoOO5owgd4uUNw
	mRMlnhsJ4Bk7dGO/s6HxHrNefWfwCTkpCRZRyErF6GpGVcdpwfUh+va3nP1e3WGLXhpDk3p6eQFSk
	qjBLS+LKPt2StQrxjggFQJdSULsaSEHS9qEaGY5H5rDAeXxUZqPtRsaZPSqIduCz/Uv6QP8FlVANp
	pb33/hwpvN1eml4g1AhqhIOn3MQtuUKC9YMWIroCrqW/RN52Jjvb6GnZC5AQH8H8IpMGlsZxnzTGv
	ivqYE5o0rP8kwfaBvXqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soScg-0000000Ai7N-01Bz;
	Wed, 11 Sep 2024 19:03:26 +0000
Received: from mail.fris.de ([2a01:4f8:c2c:390b::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soScc-0000000Ai6a-0crS
	for linux-phy@lists.infradead.org;
	Wed, 11 Sep 2024 19:03:23 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C9A17BFB13;
	Wed, 11 Sep 2024 21:03:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=dkim;
	t=1726081400; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=8hAaQN3YdzDz72AB4om4zk8jibkIckar9alPg9YCTzs=;
	b=hU3LP7mz10nvzbwY93tL/RA9Jq0tcb/Ajh2jAidLVbd+9bpAQf5CY/QX7V5y1TaCufIErb
	497+js9gQg985AAvxqZNu+CSkSl28978NJwQmhK18Ar2cUGOnd5vT0xBmG5AlG9qBVOjP2
	CcaL5ZhCz4bqo1xllFsNnZOuq/2Jbo22l3RnjKzxLLSQlgr9bPB5t8g3NBt0izb8OLwrVX
	5KyDLTeHpz0gXtymQe/aImjT3sST1F2w0CENDkSkeO3Hq95gdY6Dha5P6cQBQ9bj7nd7JR
	arBB9w/FRBIg3sfxuRxET7Q95OkSh6+swWveU/EW58sQZ1bOZ5/to7+kms+wOw==
Message-ID: <eb648c15-6cb5-43c5-93d6-f91157e542e6@fris.de>
Date: Wed, 11 Sep 2024 21:03:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] Extending PLL LUT for i.MX8MP Samsung HDMI PHY
To: Dominique Martinet <dominique.martinet@atmark-techno.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Adam Ford <aford173@gmail.com>, Lucas Stach <l.stach@pengutronix.de>,
 Marco Felsch <m.felsch@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
References: <20240910181544.214797-1-frieder@fris.de>
 <ZuDjAwPxHeJTvXAp@atmark-techno.com> <ZuEzxw96vRlYJ321@atmark-techno.com>
Content-Language: en-GB, de-DE
From: Frieder Schrempf <frieder@fris.de>
In-Reply-To: <ZuEzxw96vRlYJ321@atmark-techno.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_120322_571855_7BBC3ACF 
X-CRM114-Status: GOOD (  25.74  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 11.09.24 08:08, Dominique Martinet wrote:
> Dominique Martinet wrote on Wed, Sep 11, 2024 at 09:23:31AM +0900:
>> so if I find some time I'll whip some loop to check all other values...
> 
> There were more differences than I thought there'd be (see diff below)
> 
> they're all minor enough to probably not care, but your script finds
> exact values for them so it might be worth updating the regs if we keep
> the table...
> (OTOH these seem to work, and "if it works don't touch it" -- I have no
> further opinion now I've checked, curiosity is sated)

Yeah, that's interesting. A lot of those values seem to be a little off. 
Or my calculation has some problem, but it's unlikely as everything else 
seems to add up so nicely.

The deviations seem very minor, only in the per mill ballpark or even 
lower. I wonder how they got these values initially.

It would still be nice to verify the clocks with some real measurements 
on the hardware level before we change the existing values.

On a side note, there is drivers/gpu/drm/exynos/exynos_hdmi.c which is 
basically for the same kind of PHY, probably an older version of the IP 
core. It also has some LUTs for the PLL registers. But I didn't compare 
them so far.

> 
> Might want to just check 154000000 though, reg6's 0x80 was not set so
> SDC was disabled? and it'd get the integer fraction (153600000) instead
> if I understand this correctly

I think there are two switches. The fractional-N part can be enabled but 
the sigma-delta-part can still be disabled. That's different than having 
the fractional-N completely turned off.

My script doesn't cover this case. It assumes the SDC is always enabled 
if the fractional-N is enabled.

The problem is that I don't know what part of the calculation is the SDC 
value exactly. The reference manual is confusing and probably defective 
in some way in regard to this. So I don't really know when to 
enable/disable the SDC part.

For the 154 MHz this means even with SDC turned off the fractional-N 
part will provide the 400 kHZ to be added to the integer part. At least 
that's how I understand it. I might be wrong.

> 
> ---------
> diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> index a5ad51425ee3..72facc7bd045 100644
> --- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> +++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> @@ -73,7 +73,7 @@ static const struct phy_config phy_pll_cfg[] = {
>   		.pixclk = 24024000,
>   		.pll_div_regs = { 0xd1, 0x50, 0xf1, 0x99, 0x02, 0x80, 0x40 },
>   	}, {
> -		.pixclk = 25175000,
> +		.pixclk = 25177981,
>   		.pll_div_regs = { 0xd1, 0x54, 0xfc, 0xcc, 0x91, 0x80, 0x40 },
>   	},  {
>   		.pixclk = 26750000,
> @@ -82,16 +82,16 @@ static const struct phy_config phy_pll_cfg[] = {
>   		.pixclk = 27027000,
>   		.pll_div_regs = { 0xd1, 0x5a, 0xf2, 0xfd, 0x0c, 0x80, 0x40 },
>   	}, {
> -		.pixclk = 29500000,
> +		.pixclk = 29487500,
>   		.pll_div_regs = { 0xd1, 0x62, 0xf4, 0x95, 0x08, 0x80, 0x40 },
>   	}, {
> -		.pixclk = 30750000,
> +		.pixclk = 30729661,
>   		.pll_div_regs = { 0xd1, 0x66, 0xf4, 0x82, 0x01, 0x88, 0x45 },
>   	}, {
> -		.pixclk = 30888000,
> +		.pixclk = 30848949,
>   		.pll_div_regs = { 0xd1, 0x66, 0xf4, 0x99, 0x18, 0x88, 0x45 },
>   	}, {
> -		.pixclk = 33750000,
> +		.pixclk = 33731250,
>   		.pll_div_regs = { 0xd1, 0x70, 0xf4, 0x82, 0x01, 0x80, 0x40 },
>   	}, {
>   		.pixclk = 35000000,
> @@ -106,13 +106,13 @@ static const struct phy_config phy_pll_cfg[] = {
>   		.pixclk = 44500000,
>   		.pll_div_regs = { 0xd1, 0x5c, 0x92, 0x98, 0x11, 0x84, 0x41 },
>   	}, {
> -		.pixclk = 47000000,
> +		.pixclk = 47005000,
>   		.pll_div_regs = { 0xd1, 0x62, 0x94, 0x95, 0x82, 0x80, 0x40 },
>   	}, {
> -		.pixclk = 47500000,
> +		.pixclk = 47502000,
>   		.pll_div_regs = { 0xd1, 0x63, 0x96, 0xa1, 0x82, 0x80, 0x40 },
>   	}, {
> -		.pixclk = 50349650,
> +		.pixclk = 50355924,
>   		.pll_div_regs = { 0xd1, 0x54, 0x7c, 0xc3, 0x8f, 0x80, 0x40 },
>   	}, {
>   		.pixclk = 53250000,
> @@ -124,16 +124,16 @@ static const struct phy_config phy_pll_cfg[] = {
>   		.pixclk = 54054000,
>   		.pll_div_regs = { 0xd1, 0x5a, 0x72, 0xfd, 0x0c, 0x80, 0x40 },
>   	}, {
> -		.pixclk = 59000000,
> +		.pixclk = 58975000,
>   		.pll_div_regs = { 0xd1, 0x62, 0x74, 0x95, 0x08, 0x80, 0x40 },
>   	}, {
> -		.pixclk = 59340659,
> +		.pixclk = 59264777,
>   		.pll_div_regs = { 0xd1, 0x62, 0x74, 0xdb, 0x52, 0x88, 0x47 },
>   	},  {
> -		.pixclk = 61500000,
> +		.pixclk = 61459322,
>   		.pll_div_regs = { 0xd1, 0x66, 0x74, 0x82, 0x01, 0x88, 0x45 },
>   	}, {
> -		.pixclk = 63500000,
> +		.pixclk = 63437500,
>   		.pll_div_regs = { 0xd1, 0x69, 0x74, 0x89, 0x08, 0x80, 0x40 },
>   	}, {
>   		.pixclk = 67500000,
> @@ -145,25 +145,25 @@ static const struct phy_config phy_pll_cfg[] = {
>   		.pixclk = 72072000,
>   		.pll_div_regs = { 0xd1, 0x5a, 0x52, 0xfd, 0x0c, 0x80, 0x40 },
>   	}, {
> -		.pixclk = 74176000,
> +		.pixclk = 74175824,
>   		.pll_div_regs = { 0xd1, 0x5d, 0x58, 0xdb, 0xA2, 0x88, 0x41 },
>   	}, {
>   		.pixclk = 74250000,
>   		.pll_div_regs = { 0xd1, 0x5c, 0x52, 0x90, 0x0d, 0x84, 0x41 },
>   	}, {
> -		.pixclk = 78500000,
> +		.pixclk = 78487500,
>   		.pll_div_regs = { 0xd1, 0x62, 0x54, 0x87, 0x01, 0x80, 0x40 },
>   	},  {
> -		.pixclk = 82000000,
> +		.pixclk = 81945763,
>   		.pll_div_regs = { 0xd1, 0x66, 0x54, 0x82, 0x01, 0x88, 0x45 },
>   	}, {
> -		.pixclk = 82500000,
> +		.pixclk = 82486555,
>   		.pll_div_regs = { 0xd1, 0x67, 0x54, 0x88, 0x01, 0x90, 0x49 },
>   	}, {
> -		.pixclk = 89000000,
> +		.pixclk = 89075000,
>   		.pll_div_regs = { 0xd1, 0x70, 0x54, 0x84, 0x83, 0x80, 0x40 },
>   	}, {
> -		.pixclk = 90000000,
> +		.pixclk = 89950000,
>   		.pll_div_regs = { 0xd1, 0x70, 0x54, 0x82, 0x01, 0x80, 0x40 },
>   	}, {
>   		.pixclk = 94000000,
> @@ -178,7 +178,7 @@ static const struct phy_config phy_pll_cfg[] = {
>   		.pixclk = 99000000,
>   		.pll_div_regs = { 0xd1, 0x52, 0x32, 0x82, 0x01, 0x88, 0x47 },
>   	}, {
> -		.pixclk = 100699300,
> +		.pixclk = 100711847,
>   		.pll_div_regs = { 0xd1, 0x54, 0x3c, 0xc3, 0x8f, 0x80, 0x40 },
>   	},  {
>   		.pixclk = 102500000,
> @@ -196,16 +196,16 @@ static const struct phy_config phy_pll_cfg[] = {
>   		.pixclk = 108108000,
>   		.pll_div_regs = { 0xd1, 0x5a, 0x32, 0xfd, 0x0c, 0x80, 0x40 },
>   	}, {
> -		.pixclk = 118000000,
> +		.pixclk = 117950000,
>   		.pll_div_regs = { 0xd1, 0x62, 0x34, 0x95, 0x08, 0x80, 0x40 },
>   	},  {
> -		.pixclk = 123000000,
> +		.pixclk = 122918644,
>   		.pll_div_regs = { 0xd1, 0x66, 0x34, 0x82, 0x01, 0x88, 0x45 },
>   	}, {
> -		.pixclk = 127000000,
> +		.pixclk = 126875000,
>   		.pll_div_regs = { 0xd1, 0x69, 0x34, 0x89, 0x08, 0x80, 0x40 },
>   	}, {
> -		.pixclk = 135000000,
> +		.pixclk = 134925000,
>   		.pll_div_regs = { 0xd1, 0x70, 0x34, 0x82, 0x01, 0x80, 0x40 },
>   	}, {
>   		.pixclk = 135580000,
> @@ -214,20 +214,20 @@ static const struct phy_config phy_pll_cfg[] = {
>   		.pixclk = 137520000,
>   		.pll_div_regs = { 0xd1, 0x72, 0x38, 0x99, 0x10, 0x85, 0x41 },
>   	}, {
> -		.pixclk = 138750000,
> +		.pixclk = 138658397,
>   		.pll_div_regs = { 0xd1, 0x73, 0x35, 0x88, 0x05, 0x90, 0x4d },
>   	}, {
> -		.pixclk = 140000000,
> +		.pixclk = 140040000,
>   		.pll_div_regs = { 0xd1, 0x75, 0x36, 0xa7, 0x90, 0x80, 0x40 },
>   	},  {
> -		.pixclk = 148352000,
> +		.pixclk = 148265128,
>   		.pll_div_regs = { 0xd1, 0x7b, 0x35, 0xdb, 0x39, 0x90, 0x45 },
>   	}, {
> -		.pixclk = 148500000,
> +		.pixclk = 148396403,
>   		.pll_div_regs = { 0xd1, 0x7b, 0x35, 0x84, 0x03, 0x90, 0x45 },
>   	}, {
>   		.pixclk = 154000000,
> -		.pll_div_regs = { 0xd1, 0x40, 0x18, 0x83, 0x01, 0x00, 0x40 },
> +		.pll_div_regs = { 0xd1, 0x40, 0x18, 0x83, 0x01, 0x80, 0x40 },
>   	}, {
>   		.pixclk = 157000000,
>   		.pll_div_regs = { 0xd1, 0x41, 0x11, 0xa7, 0x14, 0x80, 0x40 },
> @@ -268,10 +268,10 @@ static const struct phy_config phy_pll_cfg[] = {
>   		.pixclk = 254000000,
>   		.pll_div_regs = { 0xd1, 0x69, 0x14, 0x89, 0x08, 0x80, 0x40 },
>   	}, {
> -		.pixclk = 277500000,
> +		.pixclk = 277316794,
>   		.pll_div_regs = { 0xd1, 0x73, 0x15, 0x88, 0x05, 0x90, 0x4d },
>   	},  {
> -		.pixclk = 297000000,
> +		.pixclk = 296792806,
>   		.pll_div_regs = { 0xd1, 0x7b, 0x15, 0x84, 0x03, 0x90, 0x45 },
>   	},
>   };
> -------------

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43BE2C79F9E
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 12:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OgvJNkf2rSEKdD6yiipCVvx6dQCyfdlfsR3TfysM54k=; b=wLuXtQ9Nd7JKfw
	KiM0zJ8X8V3kDqmNYRj1/bEyp6+/INQE0mWluS3shPfFif6HnYtU9HcchaGJapyrCHaY7v542j0Hv
	nNakI4IXt1yHsr8mss7e1SRhmUG0MfpGKB8mIC6qOoO4L/9lf9KwDxG7kWhIHolEVTuYAU0hCllZj
	fWsxOAYtfrKNJEHrkoS0uiha48k0mZZEzzZRvvBI+JZFnY3h71hP7VHn6kK6VQKnSAFmaPFqzfjLW
	A1nU6TJGtcwNIiq2Ig8lWkiRTZyb+b78ZHrYUcFc5HLebT2/w+npEVJ/hxBZCA9JlxbjTyAxfXZwI
	K0dr3yTSeB6Xj8r0p6Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3umA-00000008zkt-41Go;
	Tue, 08 Sep 2026 12:18:10 +0000
Received: from mail-lf1-f44.google.com ([209.85.167.44])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3um8-00000008zjv-2DGx
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 12:18:09 +0000
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5b6188a2c0eso3577445e87.1
        for <linux-phy@lists.infradead.org>; Tue, 08 Sep 2026 05:18:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788869884; x=1789474684; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=NW6/rTE0SPCNPcO3PxE/nF5bbyVKnXeAwSYncVUIL58=;
        b=PS0uL0h+ZcRknRolF4vWnfRPj/z6RnFwFD6Du5/TjetllwRNbq71VmCR0HbZNf6zZ4
         dwAD30uh+tP5h8wWDrB3yaYm0l5t7B4zRVosGg+qlN9V2xirRYuIgR0A1IRKt2RBc/Ay
         yyvakWLVhjqUtGdShGp6pAGY/zCYiVC6j3BEWKJiAyWE4Siob63GnH3ikm82V0aE9gfz
         NUQWoEYRCZRehrbcMWPuL+FzXbCXCKcLaS8a81ThlQk/b8Eo5hfKDopnttTiLlQpJMZW
         BACxGJVJikURDY2lR2A6xkATk1lhoYSH1zsoJLn4afMpTNYMd1GAzZAPVxCZZBmqkr5a
         lBLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788869884; x=1789474684;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=NW6/rTE0SPCNPcO3PxE/nF5bbyVKnXeAwSYncVUIL58=;
        b=czu8jo/go1XjHyg28Drhqf6ahdMtKNamj/R8tRksDJgItqt3AHa/+a0r6OgGLFUZPQ
         S0YLPfHCgDGq3PTnImpyfshBViFQVN88EOtVY26xteDMlaA+byBiG5gb+XQe97iGtCsv
         YJ5jOGNhPN3ucAb94ZxnLkRKPXSBY2PF+EF3yyQvy1iZ2ByWG7nf8Lu7KYU818qfQ5Fe
         VyHTOFs0TFuZYyxLBPlpJeE8I/nM8k1TQU0CCXTilNbD00f+xHoNtqYtPqPDrpvN0vi8
         2UfklzvtzqYh9npmINVl7RXLfSAxc6Od26CIIc9sq4qIJEDj5NZIYdS7iZCANFziwQU4
         iF5g==
X-Gm-Message-State: AFuF++kOsyVdprigt+Yij1MLiMN14smrwSGgnEtOKUrJCPDAfVA0gpYg
	c8Wemdm7Z2nPtN+nEZlldz5iW4v6bkx5B8hStHM7Y9RViPMQJTIZjXTI
X-Gm-Gg: AYBFou1jEuKyjE+4BxNEDz51M7dZQ10g0uZstb/Cgl5PJ3s+S3JJKqzIcP73TiKSrgL
	AAuKCcUxnlq37d1Tsr3GqD3xmoR4Pwgn3c8CARGWXE20XUoZTeMunC4ILKFXJkDx2osFSnsYZ6g
	z7lQtcgfukFGvUY8RDHh3CuNhVYcXZsgYc2nFUPhZY1PvAQVCLryOGFVPSl86xVC4xsdtpDJ72r
	gyX9yJrXlQk+ynktWUzyWhltxBs83YyXHQhhgGa7Um0l7h3rnGZA5KUCEXQL9Caxeu4LDmPTTBT
	q5WjT6hKeIlgHh9qnZy+PsibB/WZ9QYKvnMjzAgiQFIdVnXrZp7xm+hFBdpfbAGGE8qSIcNZqqb
	CCO7b3BtpppAJGuRvjMbgwOum9m7LnFoZmOM5OZbSxC6gmhC0OfPXf4Q+Kl5vnsJ4GfVCZlWi+o
	zm9PomSipQcqf1IBcmuFf5OVbj4EN80BHJ/3VE9EqeEFz59HLOBt6Ixb8tl7RSO8txPrXQFxyWR
	CbBjMtPt6xT
X-Received: by 2002:a05:6512:159c:b0:5ae:b91d:b2ec with SMTP id 2adb3069b0e04-5b616f01b60mr4175715e87.3.1788869883842;
        Tue, 08 Sep 2026 05:18:03 -0700 (PDT)
Received: from [10.127.126.147] ([5.195.0.145])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b61669abd4sm3104468e87.5.2026.09.08.05.17.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Sep 2026 05:18:02 -0700 (PDT)
Message-ID: <aaf8a5ef-2abe-4269-804e-4d2dd1bc4d3e@gmail.com>
Date: Tue, 8 Sep 2026 16:17:57 +0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: phy-snps-eusb2: fix FSEL_48_MHZ_VAL definition
To: Xu Yang <xu.yang_2@oss.nxp.com>, vkoul@kernel.org,
 neil.armstrong@linaro.org, mani@kernel.org, dmitry.baryshkov@oss.qualcomm.com
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 imx@lists.linux.dev
References: <20260908085953.3315953-1-xu.yang_2@oss.nxp.com>
From: ivaylo <ivo.ivanov.ivanov1@gmail.com>
Content-Language: en-US
In-Reply-To: <20260908085953.3315953-1-xu.yang_2@oss.nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_051808_593024_D7DBD2D1 
X-CRM114-Status: GOOD (  17.85  )
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

On 8.09.26 12:59, Xu Yang wrote:
> From: Xu Yang <xu.yang_2@nxp.com>
>
> According to Synopsys eUSB2 PHY Databook, FSEL_48_MHZ_VAL should be 0x6
> for supported 48 MHz reference clock.

I don't see this as a justified change. Samsung's implementation of eUSB2
differs from the generic Synopsys interface, as is visible from the 
differences
between QCOM's implementation and Samsung's.

 From what I see for exynos2200, the FSEL value is 0x2 for both 24 MHz and
48 MHz. The differentiating part is that the upper PLL divider is 0x0 
for 24 MHz
and 0x1 for 48 MHz. The current programming was taken from the samsung
vendor kernel driver, which is a reliable-ish reference for the 
differences in register
interface implementation when we have no other public resource like a 
manual.

..now that I look into it though, the 11_8 value should probably be 
field_prep'd
instead of just directly passed as an argument of 
snps_eusb2_hsphy_write_mask(),
because right now it's essentially 0x1 & 0xf00 = 0? I haven't tested 
this path on
my hardware, so it might prove to be a regression in the future?
So:
snps_eusb2_hsphy_write_mask(phy->base, EXYNOS_USB_PHY_CFG_PLLCFG1, 
EXYNOS_PHY_CFG_PLL_FB_DIV_11_8_MASK,
FIELD_PREP(EXYNOS_PHY_CFG_PLL_FB_DIV_11_8_MASK, config->div_11_8_val));

For this patch though, unless this change is tested on real hardware and 
backed up
by a technical reference manual for this particular implementation, 
CC-ing the
change to stable is unreasonable.

Best regards,
Ivaylo Ivanov

>
> Fixes: c4098f3e6134 ("phy: phy-snps-eusb2: add support for exynos2200")
> Cc: stable@vger.kernel.org
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> ---
>   drivers/phy/phy-snps-eusb2.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
> index af4fa17ac6cb..3cb18d6ebc1d 100644
> --- a/drivers/phy/phy-snps-eusb2.c
> +++ b/drivers/phy/phy-snps-eusb2.c
> @@ -21,7 +21,7 @@
>   #define FSEL_20_MHZ_VAL			(0x1)
>   #define FSEL_24_MHZ_VAL			(0x2)
>   #define FSEL_26_MHZ_VAL			(0x3)
> -#define FSEL_48_MHZ_VAL			(0x2)
> +#define FSEL_48_MHZ_VAL			(0x6)
>   
>   #define EXYNOS_USB_PHY_CFG_PLLCFG0	(0x8)
>   #define PHY_CFG_PLL_FB_DIV_19_8_MASK	GENMASK(19, 8)


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

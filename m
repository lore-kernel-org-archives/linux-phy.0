Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB5DFC43334
	for <linux-phy@archiver.kernel.org>; Sun,  5 Jun 2022 16:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EOsGJt1HgB0DSZzzsqFM5BQubb85gWEfv0nG6cH6Pp4=; b=D+N4mZgQZZwDdk
	ggVFqdYGty1omElAoenAlkLrZtcPxIdcmD1T8VoxQ593OWG+6L9YQgkXHuCnJqU6zKJd2esf7DyYM
	N4Aj0HR1XzBfKRSIPwzbv2i0jfBtM+8edcHmxKoIPqNxoS1x/aPhoFLna07jvKw262aVb7F5O8Jxe
	SSMzGJ9AGppZNC5amS5SpmaLRpyw4y5l3GdTgjrGgsu1ng+onOxItiexBjhrZQkGUhDJX60kWCnXl
	AW2jqzjXxvowVn+5lBaGJ7+TwgTr/yyY6MLd5SmXf9TWlMDmQ8j3tMDsA4hWr45vsmwZMwy2POahu
	CSUVHDBO4IzySQrqXWQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nxsqQ-00ErLI-3c; Sun, 05 Jun 2022 16:11:14 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nxspB-00EqoP-8I
	for linux-phy@lists.infradead.org; Sun, 05 Jun 2022 16:10:00 +0000
Received: by mail-ej1-x62b.google.com with SMTP id v1so14039584ejg.13
        for <linux-phy@lists.infradead.org>; Sun, 05 Jun 2022 09:09:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=WXuUPPn6pqEoecB1CMvgFgHHVc8dzCQtsrq8BhZMrgc=;
        b=WIaSpYQ+crFGMhUCl6zgXOd7jeXuMnX8cuXFbBSGJA6v0q3QcBHh3VjPHtutcU1lwa
         UEbE4C78fYnZe8V3v5Ebe5jy9D1XMA928T1qDDNICXmshwgKIXA/+UVJVcXVG7Snenvt
         bOHwL+38+Z+U6ZwXOJBvw1CnRPK3osqR/btRRZJE0LjGnEzFCHQamXZq1ux1Jf0z6Wz8
         3vZWQvnwOXTIb92luWxhDDTLphN7djAEOzlu411u2z1/8iMcUGVVoJ9gTPfu/07XYuG3
         HeNCAt5PvL8OMmTVO/73AsLCM6qCTw+7VkGx/ol5N2dFN+Z4myX7zmxAR2NeoklfAnjZ
         2n7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=WXuUPPn6pqEoecB1CMvgFgHHVc8dzCQtsrq8BhZMrgc=;
        b=1BgZmKVyxGp6EYRaNx4N9FDkFWE6XFPdvnsekBNbPRJSHaSvhwJPhGpwPYFzWty19p
         wFLs2rI+Ax8B+gPu+9tTXGD6K0evuGzo1NJH8XbPWArVq5J5EOUGDkHU0pxwHao2BpAc
         az8gDu1Rict+Rud1xuTEGgIKF7GvAKcvalgekp82gjheLdMD/IHpaAt7YKqIp8mmX18B
         EHTwkTouRA9uAF1qFV6RkwgrcpehK7Tf5qhcQwbHiuG5CgfAgCwDKkcoYEs1rFyUyJ4s
         mE8XBVsClUFkINU/yLDrvBSWNoYoDlxCp+LTtdfdZYOVB0VzjVEQ8MVY9midVsNY+CcL
         bOnw==
X-Gm-Message-State: AOAM531zvlJaVqs8c/y/xP/xVgTJgrkmmE6ed6s3K4d+A7905wYDQqLI
	sJLYcaWTbaaB+XVYx1BCjR8eKQ==
X-Google-Smtp-Source: ABdhPJyqxxmSVxagsYXopLmk5gZz5Rj53CwHm5DsGfP1qoncV9Qw1zrBEBKtMKfjglvk33U7h84CoA==
X-Received: by 2002:a17:907:2cc4:b0:6fe:2100:de21 with SMTP id hg4-20020a1709072cc400b006fe2100de21mr17660853ejc.462.1654445395529;
        Sun, 05 Jun 2022 09:09:55 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id hz14-20020a1709072cee00b00708e906faecsm4856703ejc.124.2022.06.05.09.09.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Jun 2022 09:09:55 -0700 (PDT)
Message-ID: <2c0d4c55-ed79-0b6d-3429-a4cefb16d808@linaro.org>
Date: Sun, 5 Jun 2022 18:09:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 3/5] phy: samsung: ufs: constify samsung_ufs_phy_cfg
Content-Language: en-US
To: Chanho Park <chanho61.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220603020410.2976-1-chanho61.park@samsung.com>
 <CGME20220603020426epcas2p3f6b5174734313e5d06d0177c3ebd777d@epcas2p3.samsung.com>
 <20220603020410.2976-4-chanho61.park@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220603020410.2976-4-chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220605_090957_365028_C189482B 
X-CRM114-Status: GOOD (  16.97  )
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

On 03/06/2022 04:04, Chanho Park wrote:
> Put const qualifier of samsung_ufs_phy_cfg pointer because they will
> not be changed from drvdata.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
>  drivers/phy/samsung/phy-samsung-ufs.c | 4 ++--
>  drivers/phy/samsung/phy-samsung-ufs.h | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/samsung/phy-samsung-ufs.c b/drivers/phy/samsung/phy-samsung-ufs.c
> index ed272631e8aa..e1e26da27245 100644
> --- a/drivers/phy/samsung/phy-samsung-ufs.c
> +++ b/drivers/phy/samsung/phy-samsung-ufs.c
> @@ -75,7 +75,7 @@ static int samsung_ufs_phy_wait_for_lock_acq(struct phy *phy)
>  static int samsung_ufs_phy_calibrate(struct phy *phy)
>  {
>  	struct samsung_ufs_phy *ufs_phy = get_samsung_ufs_phy(phy);
> -	struct samsung_ufs_phy_cfg **cfgs = ufs_phy->cfgs;
> +	const struct samsung_ufs_phy_cfg **cfgs = ufs_phy->cfgs;
>  	const struct samsung_ufs_phy_cfg *cfg;
>  	int err = 0;
>  	int i;
> @@ -327,7 +327,7 @@ static int samsung_ufs_phy_probe(struct platform_device *pdev)
>  	drvdata = match->data;
>  	phy->dev = dev;
>  	phy->drvdata = drvdata;
> -	phy->cfgs = (struct samsung_ufs_phy_cfg **)drvdata->cfgs;
> +	phy->cfgs = drvdata->cfgs;
>  	phy->isol = &drvdata->isol;
>  	phy->lane_cnt = PHY_DEF_LANE_CNT;
>  
> diff --git a/drivers/phy/samsung/phy-samsung-ufs.h b/drivers/phy/samsung/phy-samsung-ufs.h
> index 1788b356cf56..101497698f23 100644
> --- a/drivers/phy/samsung/phy-samsung-ufs.h
> +++ b/drivers/phy/samsung/phy-samsung-ufs.h
> @@ -121,7 +121,7 @@ struct samsung_ufs_phy {
>  	struct clk *rx0_symbol_clk;
>  	struct clk *rx1_symbol_clk;
>  	const struct samsung_ufs_phy_drvdata *drvdata;
> -	struct samsung_ufs_phy_cfg **cfgs;
> +	const struct samsung_ufs_phy_cfg **cfgs;

I still think this should be array of const pointers to const data, so:
	const struct samsung_ufs_phy_cfg * const *cfgs;
I proposed this in last email.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

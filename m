Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD7DAE6FE55
	for <linux-phy@archiver.kernel.org>; Sat,  7 Sep 2024 10:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xmwbhlqXfRmfWzG9+niD8Oq1qHdQyVLUnB7q2NaNFxw=; b=4EE5juq3YkKAy9
	UpXNo8Q/35H+o2Ma1gG8whIlilpwfPkwBw3OxAB4u9Nleo1MYdHt8uh5kngXP6HCaKjIk+zMXdPKC
	u90gAbZ6BPgtfMZ3PcfI+JHNhem23vVrVA899Ye+v3rF8l3JcB5Wo07n+RfAUaeVCCMi6ht9p0RUF
	XLMG5d67WThDKxxlYEW64LgAAxtw+EB3IZmlsb29D9HQzp1xt6YxO7x3qz1M0LoRQKmuUwIVFUuMo
	Y7m3pphMeSBQmGQ78yJhF+ISdCxBf83/ax+/G08s+udIV2+KzvQ7mhFvrWfWLNkZ0qKojopOymZwT
	kYSYcR/skVsLUX+n0Idg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smt5D-0000000EsDQ-1OVf;
	Sat, 07 Sep 2024 10:54:23 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smt5A-0000000EsCq-1gnb
	for linux-phy@lists.infradead.org;
	Sat, 07 Sep 2024 10:54:21 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-5333b2fbedaso5014068e87.0
        for <linux-phy@lists.infradead.org>; Sat, 07 Sep 2024 03:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1725706458; x=1726311258; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IVwVrEOArU7FwpUon+ECV4CIs36srlWh7bgYM3qj5Hc=;
        b=RUw36iE3dWT2YqWLlbc2oqsPybON52UTxFEMzbQaJVGWaRSkGaWNlcKTCaG/xbdO/v
         zgqDOyKJ1fBj77sLpqWA88EZL4JnBE2YbTvfoEWKKsxejNXoW03n1kiYOZlaw/LausS6
         WS3y0f+Y7y4PwHarhH+VVs0RAvUCP/x/c0F/mVGei4zEDwgi8WX3Y9jJRla1rG+qWIuV
         rIr/ji4fDD+QkVDv/F64JHwvsD79OTOlKwV8yu3ZqXnQ0UmT+y3WGbuyxSS1Tp2klp9R
         d3Jp+KEk9Jv8Lk54qGcmVsf8SUQd/kJz3ypYZm67z3FRWd73g+pxPPdQo+9U7mtqZFZD
         4QGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725706458; x=1726311258;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IVwVrEOArU7FwpUon+ECV4CIs36srlWh7bgYM3qj5Hc=;
        b=Gx+MsipkqR960tbHQuQPsAO8rgY807MyLcoJdapR4bq+K/0mG5udr8MYHO5PT/sHsa
         BD08HmgYutIjD/oLZLMYu8TyJVXcstoTl6G6A2f+5Ewq49VBM35iKHfjmscan4k2noJA
         vlvpz4QXnqY7cBmUn2NFuRXC2U5ZTwcpRq7HDYOltJiswMB+gQ1PYx2d8Nir4mgB5h4b
         rI9O4BBcecWLHmyhMYGRUwbSeM6zF8pHfqRXwUyW5bQhbU46wmSJpdGtwyV9h+A4W28E
         zFVmGjejCTct55jKnoFboMtNlARGvIK+zFwrjP3AMWbhemMw3bkRPKkoXWPqyDGo0/L7
         aBIg==
X-Forwarded-Encrypted: i=1; AJvYcCUGKbB4BkZk5ZCTVbXBlsWNFLvoMFCHcdn0qhK8G9F1JTezyip2QbIyTohdNetk8gYtLi/36xesFFc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxN+hCsxWtUW/5khAzzq1tD4xTLBHaI2Ir04YpXIb4RqQRmy81Q
	9A+RYSaFstktnHnnGjIV65rFuO+2uTxx08fiHhA/Eey9uaxKbdzvaJ1uOp73DVU=
X-Google-Smtp-Source: AGHT+IEdmtr9x/ifMm5TTSwNlrjIYLdnLwMl83PBidk7vRBxQxPxnHJnEwHzrGxiVKtPznz7zJrBwg==
X-Received: by 2002:a05:6512:6cf:b0:52c:850b:cfc6 with SMTP id 2adb3069b0e04-536587f5c84mr3582231e87.38.1725706457550;
        Sat, 07 Sep 2024 03:54:17 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8d25835686sm58945766b.18.2024.09.07.03.54.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Sep 2024 03:54:17 -0700 (PDT)
Message-ID: <31112ec9-43cc-403b-a6c0-7e7804fdcda5@tuxon.dev>
Date: Sat, 7 Sep 2024 13:54:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: renesas: rcar-gen3-usb2: Fix an error handling path
 in rcar_gen3_phy_usb2_probe()
Content-Language: en-US
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Cc: linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-phy@lists.infradead.org
References: <fc9f7b444f0ca645411868992bbe16514aeccfed.1725652654.git.christophe.jaillet@wanadoo.fr>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <fc9f7b444f0ca645411868992bbe16514aeccfed.1725652654.git.christophe.jaillet@wanadoo.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240907_035420_598834_955987E4 
X-CRM114-Status: GOOD (  16.33  )
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

Hi, Christophe,

On 06.09.2024 22:57, Christophe JAILLET wrote:
> If an error occurs after the rcar_gen3_phy_usb2_init_bus(),
> reset_control_assert() must be called, as already done in the remove
> function.
> 
> Fixes: 4eae16375357 ("phy: renesas: rcar-gen3-usb2: Add support to initialize the bus")
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
>  drivers/phy/renesas/phy-rcar-gen3-usb2.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> index 58e123305152..8577056491de 100644
> --- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> @@ -770,7 +770,7 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
>  		if (IS_ERR(channel->rphys[i].phy)) {
>  			dev_err(dev, "Failed to create USB2 PHY\n");
>  			ret = PTR_ERR(channel->rphys[i].phy);
> -			goto error;
> +			goto err_control_assert;
>  		}
>  		channel->rphys[i].ch = channel;
>  		channel->rphys[i].int_enable_bits = rcar_gen3_int_enable[i];
> @@ -784,7 +784,7 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
>  	if (IS_ERR(channel->vbus)) {
>  		if (PTR_ERR(channel->vbus) == -EPROBE_DEFER) {
>  			ret = PTR_ERR(channel->vbus);
> -			goto error;
> +			goto err_control_assert;
>  		}
>  		channel->vbus = NULL;
>  	}
> @@ -793,15 +793,17 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
>  	if (IS_ERR(provider)) {
>  		dev_err(dev, "Failed to register PHY provider\n");
>  		ret = PTR_ERR(provider);
> -		goto error;
> +		goto err_control_assert;
>  	} else if (channel->is_otg_channel) {
>  		ret = device_create_file(dev, &dev_attr_role);
>  		if (ret < 0)
> -			goto error;
> +			goto err_control_assert;
>  	}
>  
>  	return 0;
>  
> +err_control_assert:
> +	reset_control_assert(channel->rstc);
>  error:

It would be simpler to fix it by calling here:
	reset_control_assert(channel->rstc);

as it's the case for rcar_gen3_phy_usb2_remove().

Thank you,
Claudiu Beznea

>  	pm_runtime_disable(dev);
>  

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

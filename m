Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3D42C001B0
	for <linux-phy@archiver.kernel.org>; Mon, 14 Aug 2023 07:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6zpRO+EWKNXplUC7MkssPP5O8GKDioFB91O+KcrLnQ8=; b=YqTNqEWpVjp0z2lkqO5LMBB4/H
	zn2cHbltBN6gfBwE+RIq+v06XIBw8/HGC/OtlDYoIl2SMGUXL7Wst+fNQqVenHlr6sUWCYQwUd+uN
	M29Bp7xD04OrDwD46PH9UL3TA8v0sqdZMWD7QL2uyCjXXFi7eaUCMHvd69l3Vx7KA13kQ8pfVspZo
	sytJweTMQOWKO6yad9D5ALKA00DBZcfk7h/0uhLlxar7QTOGZ9Kn23Neb0XPla3CF++WrcgTv8UVc
	UEMfm3lAwA7X0RVi5KsOKzLiU7v2jYinyd3Zt2eBVs/VP30AGwe3JwD1bQ2pFnvX2FaNmpVyTFlL7
	f5SlX1ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVSEH-00GOp8-1V;
	Mon, 14 Aug 2023 07:43:09 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVSEE-00GOo3-2V
	for linux-phy@lists.infradead.org;
	Mon, 14 Aug 2023 07:43:07 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-3fe5c0e57d2so36247525e9.0
        for <linux-phy@lists.infradead.org>; Mon, 14 Aug 2023 00:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691998985; x=1692603785;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ZNbusZAKPFV3rbWegqKtvAQOoo6Bco8yrRT+3DqnBWo=;
        b=Gtluigu6V6DUfzP4Zxx+EEaIuQeJ3twguOUtjf99R/Cm7Slt2tyuCy2gbzNEo6oj3x
         i49h1LRBhIxR2tmavaIm5/pf29qZNfsM7eB0fGtwnwVRbV8YkJEff93y6dmnpcOzDsrV
         3WXBwrUEhdgwNfw5dwdDf9AG8XP77J7h0TL8rNUy87QwlSl7WKltzUednUlIMCekkt5e
         MFvPF1a8KcidBhLNuFYkB1zUt1BRClFpwdpe4r2mKNwtG8sWBAVaYGZKU02lZIPZ3JtC
         qwLyLjS9VoDGXNm40rT3aFs9dJGAem8gmsBVg4f5/WFz1B6cZmiVBgK/tBK+o4iuoPIq
         2qDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691998985; x=1692603785;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZNbusZAKPFV3rbWegqKtvAQOoo6Bco8yrRT+3DqnBWo=;
        b=TItyXl6MJNRnu6kZDWvh6KwUhutt+Qe4vbk1JZTEY3XGR0/s68v2bDtkF0daecKA0Q
         HeSuByhPljrKohihU+HqN/j/Ms1z8Uxs7Mq7XsvFyklBTxPVOmB/wkkBRrA6gz3fP5oj
         HrY+zhhFPJnNIXkdJhnP/lZJqQN0PaPvQ138T2aN8iJhl6G8VOxLtD7iQ5xM7eR23PH9
         IFcZosPpuA6sswXwI1Gqlva6UTHa1EbHG2FIANbG5VKPnAuLsgNlgZU2onY7a+NhRyAF
         2gvvMqpTnwhG4MEEX+bfvqtRrgn8kdcgPwzgC8Co3wZoEYgOxhxVeK7gJw38bBpUuwcM
         hNng==
X-Gm-Message-State: AOJu0YwsJYVjMoxsFOLgwekkG0rBLNinz83nhrk4ZbyCYP4p4kVe9QqL
	vg6UhM2Aqh34ImGhIX3PM6usmw==
X-Google-Smtp-Source: AGHT+IFXVn5VDLa4xeIUtvU8D0A1UXQoOEz1Dg7uXx/qsHPf6prWfHoXifNeFnZfnlx5ZeLaT8xk8w==
X-Received: by 2002:a7b:cb88:0:b0:3fe:24cc:ecfc with SMTP id m8-20020a7bcb88000000b003fe24ccecfcmr6428522wmi.21.1691998985150;
        Mon, 14 Aug 2023 00:43:05 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:a3d8:b217:d82c:9bc0? ([2a01:e0a:982:cbb0:a3d8:b217:d82c:9bc0])
        by smtp.gmail.com with ESMTPSA id c21-20020a05600c0ad500b003fbb346279dsm13545121wmr.38.2023.08.14.00.43.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Aug 2023 00:43:04 -0700 (PDT)
Message-ID: <13491021-d849-da84-f1a2-a94401118de6@linaro.org>
Date: Mon, 14 Aug 2023 09:43:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH net-next] phy: amlogic: meson-g12a-usb2: fix
 Wvoid-pointer-to-enum-cast warning
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Andi Shyti <andi.shyti@kernel.org>
References: <20230810091310.70231-1-krzysztof.kozlowski@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230810091310.70231-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230814_004306_813888_C944D315 
X-CRM114-Status: GOOD (  14.64  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 10/08/2023 11:13, Krzysztof Kozlowski wrote:
> 'soc_id' is an enum, thus cast of pointer on 64-bit compile test with
> W=1 causes:
> 
>    phy-meson-g12a-usb2.c:322:17: error: cast to smaller integer type 'enum meson_soc_id' from 'const void *' [-Werror,-Wvoid-pointer-to-enum-cast]
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   drivers/phy/amlogic/phy-meson-g12a-usb2.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/amlogic/phy-meson-g12a-usb2.c b/drivers/phy/amlogic/phy-meson-g12a-usb2.c
> index a628c59e5cf0..0e0b5c00b676 100644
> --- a/drivers/phy/amlogic/phy-meson-g12a-usb2.c
> +++ b/drivers/phy/amlogic/phy-meson-g12a-usb2.c
> @@ -319,7 +319,7 @@ static int phy_meson_g12a_usb2_probe(struct platform_device *pdev)
>   	if (IS_ERR(base))
>   		return PTR_ERR(base);
>   
> -	priv->soc_id = (enum meson_soc_id)of_device_get_match_data(&pdev->dev);
> +	priv->soc_id = (uintptr_t)of_device_get_match_data(&pdev->dev);
>   
>   	priv->regmap = devm_regmap_init_mmio(dev, base,
>   					     &phy_meson_g12a_usb2_regmap_conf);

I believe the net-next is wrong here, but whatever:

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

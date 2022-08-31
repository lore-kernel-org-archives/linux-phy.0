Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A93A5ECAAD1
	for <linux-phy@archiver.kernel.org>; Wed, 31 Aug 2022 08:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fy8z/SEnMW6BWTBIvQmf8Koj9Vdyo4ekzZoKNq48zQE=; b=IRSatcxbR4aeZM
	9Fc1U6c4MXRngEbg2MvIWF37G6VIo7YGT3+m2x1aFcj3JL34pP5JcBe/d8HpYACXf0OFaRRZGE+KJ
	mL3IZE5D4Y2UAjUkMVcSCsDrUEaJ6iejIGcTqy/FGrkVNTcbK/fyDnATcpTdI6EAmYvrdEH6bEYQH
	KEP323WzhQ+wMrHKE2h68GQEGXUNuYWN+6Y/KbgvYsMhqvb5zTREcwHpa8zIM/IkATewr1Qv6cToJ
	G3K6zY+1Cc0HlKvzyPWpA1caD+cNDCFFuR6SAbn6fmHD4shNUNCiVGFPfMq35q3j2G4W/BpaGRlck
	nvWN524eEfa4fRAasLbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTJYs-0057Bx-1A; Wed, 31 Aug 2022 08:59:02 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTJYW-00574M-JE
	for linux-phy@lists.infradead.org; Wed, 31 Aug 2022 08:58:44 +0000
Received: by mail-wr1-x429.google.com with SMTP id w5so1149552wrn.12
        for <linux-phy@lists.infradead.org>; Wed, 31 Aug 2022 01:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date;
        bh=e13u68xBA/884vkkk4hl8IEeHqfdkMVHWzvg7KEAuu8=;
        b=Ll6Ls79aDg8y4FBDvZMGk6AsYZKzyoqsgqxo06YXtqQwNrVwa1bx2d8WatirR7fLNu
         6/747nudXT+T95hBecp4FekeN6NvJFHUYsW3SgUTcJT5rW1jExWVRvTA/z4FZ+kxSjRf
         zvAl2jaXyHFZCPbzZHzcU82/rWhj4uYvM7nqwr0yVJmEFuVctOiQ9xvxGdxMkVGPoH3p
         bhDzZQ+mWEn6NIYnRPBjtZp+BkSl50hNDgcEGzBB1g+t5tB9Z4iFT/YERKtXzaGOZc3l
         owWrxInXyfNQ037nJiX6J/j4IQ3TO8jsi4qfuN1EAYcXNRMpm+dicCDpTkR55/hN4ceB
         x0qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=e13u68xBA/884vkkk4hl8IEeHqfdkMVHWzvg7KEAuu8=;
        b=u7ul2F+klRznvVEBKbBArzBA/X9Abdg3hhUIIhHAY37cSJpgFhjVlyx0JaU4P/E/z+
         /+N5IXLGUAnJBxE1y/VzW/E/YwQ4YPWzsL+8n3IJr+KI4f/sQg+j9zQk8qJvhSjVLQ27
         gFTh0UJX9oeZvFm0hrVD9grLGYZW6yHclnffD7t0NyZSiy5p1PFrX1VGIHjtesJSF+17
         RQNy3URrw+9BIog9X7eAjk05S5J1X00XNpdZGkwb4hKDPiVE0X9MmOi+ZUrfHHLmuSaS
         6ErRyjnL07boilcJak3xuF+VMZ3aSwd8ABL2qrh1ozmmT03oB/XbT/0N9hCXFrrembKw
         QIdQ==
X-Gm-Message-State: ACgBeo2pG6hr6xXI1q9X0tc7a/FUtS1VhyYnRUPiLizCnoeUcsVwhSgk
	Z9gS0hguiXAkgvvtNZWPZa2HhA==
X-Google-Smtp-Source: AA6agR4SC2plsuJcbvAOZMQp+tP5/RDS2VO/E+uiA+DVqSs6lCOoVgUD7JcovfqIfWa/Yj1FXEMWWg==
X-Received: by 2002:a5d:6d0e:0:b0:21e:fc95:3dfc with SMTP id e14-20020a5d6d0e000000b0021efc953dfcmr11380292wrq.112.1661936317609;
        Wed, 31 Aug 2022 01:58:37 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:2250:ae7f:b88d:ddcd? ([2a01:e0a:982:cbb0:2250:ae7f:b88d:ddcd])
        by smtp.gmail.com with ESMTPSA id u14-20020adfdd4e000000b0021f131de6aesm11629994wrm.34.2022.08.31.01.58.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Aug 2022 01:58:37 -0700 (PDT)
Message-ID: <9bd9e5d6-462a-b72d-0bed-980f5743af09@baylibre.com>
Date: Wed, 31 Aug 2022 10:58:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] phy: amlogic: use devm_clk_get_enabled() to simplify the
 code
Content-Language: en-US
To: Heiner Kallweit <hkallweit1@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-phy@lists.infradead.org,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
References: <9308a2a3-e828-bd9d-ab83-a68376aab5c3@gmail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
In-Reply-To: <9308a2a3-e828-bd9d-ab83-a68376aab5c3@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_015840_940164_5EF649FA 
X-CRM114-Status: GOOD (  16.79  )
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

On 30/08/2022 19:16, Heiner Kallweit wrote:
> Simplify the code by using devm_clk_get_enabled().
> 
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---
>   .../phy/amlogic/phy-meson-g12a-usb3-pcie.c    | 32 ++++---------------
>   1 file changed, 6 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c b/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c
> index 54d65a6f0..d2a1da8d9 100644
> --- a/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c
> +++ b/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c
> @@ -388,7 +388,6 @@ static int phy_g12a_usb3_pcie_probe(struct platform_device *pdev)
>   	struct phy_g12a_usb3_pcie_priv *priv;
>   	struct phy_provider *phy_provider;
>   	void __iomem *base;
> -	int ret;
>   
>   	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
>   	if (!priv)
> @@ -408,43 +407,24 @@ static int phy_g12a_usb3_pcie_probe(struct platform_device *pdev)
>   	if (IS_ERR(priv->regmap_cr))
>   		return PTR_ERR(priv->regmap_cr);
>   
> -	priv->clk_ref = devm_clk_get(dev, "ref_clk");
> +	priv->clk_ref = devm_clk_get_enabled(dev, "ref_clk");
>   	if (IS_ERR(priv->clk_ref))
>   		return PTR_ERR(priv->clk_ref);
>   
> -	ret = clk_prepare_enable(priv->clk_ref);
> -	if (ret)
> -		return ret;
> -
>   	priv->reset = devm_reset_control_array_get_exclusive(dev);
> -	if (IS_ERR(priv->reset)) {
> -		ret = PTR_ERR(priv->reset);
> -		goto err_disable_clk_ref;
> -	}
> +	if (IS_ERR(priv->reset))
> +		return PTR_ERR(priv->reset);
>   
>   	priv->phy = devm_phy_create(dev, np, &phy_g12a_usb3_pcie_ops);
> -	if (IS_ERR(priv->phy)) {
> -		ret = PTR_ERR(priv->phy);
> -		dev_err_probe(dev, ret, "failed to create PHY\n");
> -		goto err_disable_clk_ref;
> -	}
> +	if (IS_ERR(priv->phy))
> +		return dev_err_probe(dev, PTR_ERR(priv->phy), "failed to create PHY\n");
>   
>   	phy_set_drvdata(priv->phy, priv);
>   	dev_set_drvdata(dev, priv);
>   
>   	phy_provider = devm_of_phy_provider_register(dev,
>   						     phy_g12a_usb3_pcie_xlate);
> -	if (IS_ERR(phy_provider)) {
> -		ret = PTR_ERR(phy_provider);
> -		goto err_disable_clk_ref;
> -	}
> -
> -	return 0;
> -
> -err_disable_clk_ref:
> -	clk_disable_unprepare(priv->clk_ref);
> -
> -	return ret;
> +	return PTR_ERR_OR_ZERO(phy_provider);
>   }
>   
>   static const struct of_device_id phy_g12a_usb3_pcie_of_match[] = {

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16C3FC43334
	for <linux-phy@archiver.kernel.org>; Sun, 19 Jun 2022 12:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s3V7BL88ksSBQR7H9SPEKijjfO6K4LPCL4Ep/Lcl6bo=; b=AF6pPKJJLJ2uXl
	kqHXZFysWR2aUxOoDwX5rdVNxs+YRX8trhlmbCiDAxf++Pgv48NRgVKPbtgdS0Y668JrL/JDyGlzJ
	Mubqe41xL38weNR0UurVIWWRXS2TuiwQKIIUkfM4vlXJN3FNvgz6WuGLzIHr5+7JXZYI8Zaob4CgC
	Z5jRBXvvDVRl98QwZit7LaIwJgguDck48K12TkVP7yvK5NIqcCpUwxBVJJ5Ij1W+onK215RuAmlMn
	5mGBht9NMrUHHquqao/v77enVe1NoXGeN+GOaSaaEta8Kn9lC1CCF4kvDICCgOl9lPl2z5Iff1yaF
	GGiBJ6tWiZNqZK5VYP+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2tpm-00EBHA-B5; Sun, 19 Jun 2022 12:15:18 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2tpb-00EBEB-PG
	for linux-phy@lists.infradead.org; Sun, 19 Jun 2022 12:15:09 +0000
Received: by mail-ej1-x62c.google.com with SMTP id y19so16322163ejq.6
        for <linux-phy@lists.infradead.org>; Sun, 19 Jun 2022 05:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=gF0Gwj/C6L3cvjiNQzt6cTyk+/JhZh42zyr/6Goldgo=;
        b=jk1vJCJ5PJNuNIF31F3TriYuG/cKMk6gSZXn9/46qluGbFdq554Tw30GpVbfYDtlTr
         4SKkenAYbWkGo/VzdrT2ggXlK7vYOW0z9dMzwuBFXHuumftIsv/5nuYdhI7wijet7u/j
         TLOsWQxK9xfV+TJ7oCOVLPDhDTYgBXJfV4E6oDdpIFMjqOZk8KDXX2BPnefVfB8vIi98
         sjTNRdPCpNcoHNr0EJV7Tgsip/zuH49nUkU7vYcpesBBHC7M7e1vpwB5+aiTAuuefK1/
         lFpBI0+3JDjyfI3p1UsqxIClJAztMWj+AZ1FJnUhsGyQLAqTa0cCD+wPIYD6o4k+WZUA
         J+lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=gF0Gwj/C6L3cvjiNQzt6cTyk+/JhZh42zyr/6Goldgo=;
        b=cnWTluTRC84PW1mfis7JOepY24f9aSDJEZuKopQtNfa7nibtAlUPaSzeIogqgxtBws
         5JsNbsv3y3NWKCPyzHw4bGkoyUDwW4zv/FnyKuFTxi9G5Bgr0FbXeYsDjQ3MvsrLlH86
         nvWSButXZ9MG5j4Y+R2KYwKQTYhLFki5CvUcL/LWnR2G/pv5GXBR51jiZ9SM8jzkZtcX
         FZpwRClJ7xl2shSU1zATHT+Zb2Gk9E6SOn+RACNBJY9zVUlW+kU+hw4H1PJ5i8pyCRbq
         obGIad+Ywt8ASBfxqmAQE6pCIal3X0wPqWuyEX8eSMn93x9+qE3pjW16EJ6FGsYVQ7Yi
         FwyQ==
X-Gm-Message-State: AJIora+xu87HMaV9BwZ59vgLgE1ULkyeBJQw4aCmh4diGWN7Vn2Cf0D/
	jQ8jERPhCnhZIzHHtaZpEAMNsZphOc/3LQ==
X-Google-Smtp-Source: AGRyM1vsL+KbYeV1UgaR5Avi+XNA499NYMSUFF6Gtwgp4n16enUFH9kgWZ4YFWACkwFqRYf5XwW5qA==
X-Received: by 2002:a17:907:1dd1:b0:715:73d2:df1f with SMTP id og17-20020a1709071dd100b0071573d2df1fmr17030479ejc.46.1655640906086;
        Sun, 19 Jun 2022 05:15:06 -0700 (PDT)
Received: from [192.168.0.206] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id kv8-20020a17090778c800b0070e1adff390sm4522943ejc.34.2022.06.19.05.15.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Jun 2022 05:15:05 -0700 (PDT)
Message-ID: <8a1d7575-1334-e5ab-5228-f75ae67a3d13@linaro.org>
Date: Sun, 19 Jun 2022 14:15:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 2/2] phy: freescale: Add i.MX8qm Mixel LVDS PHY support
Content-Language: en-US
To: Liu Ying <victor.liu@nxp.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Cc: kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com
References: <20220618092201.3837791-1-victor.liu@nxp.com>
 <20220618092201.3837791-3-victor.liu@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220618092201.3837791-3-victor.liu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220619_051507_853751_582F021F 
X-CRM114-Status: GOOD (  16.91  )
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

On 18/06/2022 11:22, Liu Ying wrote:
> This patch adds Freescale i.MX8qm LVDS PHY support.


Don't use "This patch".
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

> The PHY IP is from Mixel, Inc.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>



> +static int mixel_lvds_phy_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct phy_provider *phy_provider;
> +	struct mixel_lvds_phy_priv *priv;
> +	struct mixel_lvds_phy *lvds_phy;
> +	struct phy *phy;
> +	int i;
> +	int ret;
> +
> +	if (!dev->of_node)
> +		return -ENODEV;
> +
> +	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	priv->regmap = syscon_node_to_regmap(dev->of_node->parent);
> +	if (IS_ERR(priv->regmap)) {
> +		ret = PTR_ERR(priv->regmap);
> +		dev_err_probe(dev, ret, "failed to get regmap\n");
> +		return ret;

All such calls are one-liners.

> +	}
> +
> +	priv->phy_ref_clk = devm_clk_get(dev, "phy_ref");
> +	if (IS_ERR(priv->phy_ref_clk)) {
> +		ret = PTR_ERR(priv->phy_ref_clk);
> +		dev_err_probe(dev, ret, "failed to get PHY reference clock\n");
> +		return ret;

Again, one line instead of three.

> +	}
> +
> +	mutex_init(&priv->lock);
> +
> +	dev_set_drvdata(dev, priv);
> +
> +	pm_runtime_enable(dev);
> +
> +	ret = mixel_lvds_phy_reset(dev);
> +	if (ret) {
> +		dev_err(dev, "failed to do POR reset: %d\n", ret);
> +		return ret;
> +	}
> +
> +	for (i = 0; i < PHY_NUM; i++) {
> +		lvds_phy = devm_kzalloc(dev, sizeof(*lvds_phy), GFP_KERNEL);
> +		if (!lvds_phy) {
> +			ret = -ENOMEM;
> +			goto err;
> +		}
> +
> +		phy = devm_phy_create(dev, NULL, &mixel_lvds_phy_ops);
> +		if (IS_ERR(phy)) {
> +			ret = PTR_ERR(phy);
> +			dev_err(dev, "failed to create PHY for channel%d: %d\n",
> +				i, ret);
> +			goto err;
> +		}
> +
> +		lvds_phy->phy = phy;
> +		lvds_phy->id = i;
> +		priv->phys[i] = lvds_phy;
> +
> +		phy_set_drvdata(phy, lvds_phy);
> +	}
> +
> +	phy_provider = devm_of_phy_provider_register(dev, mixel_lvds_phy_xlate);
> +	if (IS_ERR(phy_provider)) {
> +		ret = PTR_ERR(phy_provider);
> +		dev_err(dev, "failed to register PHY provider: %d\n", ret);
> +		goto err;
> +	}
> +
> +	return 0;
> +err:
> +	pm_runtime_disable(dev);
> +
> +	return ret;
> +}
> +
> +static int mixel_lvds_phy_remove(struct platform_device *pdev)
> +{
> +	pm_runtime_disable(&pdev->dev);
> +
> +	return 0;
> +}
> +
> +static int __maybe_unused mixel_lvds_phy_runtime_suspend(struct device *dev)
> +{
> +	struct mixel_lvds_phy_priv *priv = dev_get_drvdata(dev);
> +
> +	/* power down */
> +	mutex_lock(&priv->lock);
> +	regmap_write(priv->regmap, PHY_CTRL + REG_SET, PD);
> +	mutex_unlock(&priv->lock);
> +
> +	dev_dbg(dev, "runtime suspended\n");
> +
> +	return 0;
> +}
> +
> +static int __maybe_unused mixel_lvds_phy_runtime_resume(struct device *dev)
> +{
> +	struct mixel_lvds_phy_priv *priv = dev_get_drvdata(dev);
> +
> +	/* power up + control initialization */
> +	mutex_lock(&priv->lock);
> +	regmap_update_bits(priv->regmap, PHY_CTRL,
> +			   CTRL_INIT_MASK | PD, CTRL_INIT_VAL);
> +	mutex_unlock(&priv->lock);
> +
> +	dev_dbg(dev, "runtime resumed\n");

No such debug messages.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

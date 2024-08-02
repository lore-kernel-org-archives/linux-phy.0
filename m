Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50749C3DA4A
	for <linux-phy@archiver.kernel.org>; Fri,  2 Aug 2024 13:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6vn+P6m2iWGBm6GnO+7l1mITCLhZIE4DkutshplWHm8=; b=BXkYRMPm4SdU/B
	ZN9HSo4N+X9wuFe/1OS1ORXVCFbhjX6FFpFMELEMTfi4fwu/MUTtx20H/SVFr4WdNZWxllWR5wMHk
	Kcl783nlnMgbBp1RBcTLLm6w3ZPrlDFmSe7slvAulxuYQ+cX3dJj82yLUXA06s/wV3XUUAZfVvw83
	vUiD1FO8Y6vxIPib9fl1rGV/DZnW3fBEIT4YHjMlcDx/Tj48QQBkkMk/9nKeywrEvpUPy6S5DFk/m
	1mAgaM7wSryUUToWrixcJR8vmGOhFCUdMyCuOgtIvejcnGGXn/BmTJsff9ao4RblbTQn8KXW2ADUF
	WZfpLxih3ZoT6dkcWGsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZsha-00000008zqY-001A;
	Fri, 02 Aug 2024 13:52:14 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZshX-00000008zpl-1BoF
	for linux-phy@lists.infradead.org;
	Fri, 02 Aug 2024 13:52:12 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-52efabf5d7bso9779154e87.1
        for <linux-phy@lists.infradead.org>; Fri, 02 Aug 2024 06:52:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722606729; x=1723211529; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4ux3ZfNQ7ZOcoxTiKnqgkpQxKEOA6xyXfmnITSx+smY=;
        b=jz1GxxqXFcrt5MgsglwTvjh2QOjZuES28LHTmsvjmqU4Dqsj5etaBYkwAu3TA8EIwq
         Mevv1DGwNK4jmmHBqpXl8PpPsGyit1NwpX2ie93JAvq6TFQQYSBbuhA37dxEx48W1cu6
         7w9QrV0sYWO1vkBoLRDvlupjDFyOlpAOg+XGxhAtabQmcGDx6KuQLAoXB3fWa+fT5Rhx
         K5jDpz22kYvn/HRTOuK5QAIzKCKwLXxmTTuhCaAxcsEAN3OTXbQoVmzJCaL+DxBepnIv
         VP0r82ukN8XGJ8g0QSbXOSjkVcDQliTRqdoKfOtC2+SUA2pmihJnkMc/Lkgbkyzf0ju/
         GhcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722606729; x=1723211529;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4ux3ZfNQ7ZOcoxTiKnqgkpQxKEOA6xyXfmnITSx+smY=;
        b=anOQPlRMnw+4QdGTXszuJhTA6YdRKIz9ssvQ0QT2lHj3uQy1oGVSjcN1ZelWlr7LPt
         uClwq9IEw2IxUMBWIL6RS78D+ty8t4S2Vw56w/UreJSqXUUbogvWqP0JzwcPVu/ZZhyy
         NofWKHFvHC2th9qxdnoXzpUWR1LH4xngWE66Qog8OcTc3dApWc7jw13SIL8vzGeemLt5
         CxP+++VhPkVNsZdtEQsn57viWi+fZ8hq9VLl7qknhkIhdIaMdxPBwo6bC1JWFQHBWU6x
         q/2GiXkXT2jfzvXXJtKbhi/Gp72+RjG3iuSPiHIqoAwtnf9JOM14dRxR+1g2WyyKN/pC
         wxRA==
X-Forwarded-Encrypted: i=1; AJvYcCXI+TKRKeaQ0hFOAly5seVOvmmCP2c/om8CcaH363fC/yDh5L3uPZn5Dft1kA37nJ82uEgwMobKSooSjbM9ZimQGldrzobV6RGYzZJvlQ==
X-Gm-Message-State: AOJu0YyewvaBvYCyU1X+p6RYZR+HzsU5GdKwlp2sJwi0YeFOaHjNqW11
	vMUwB1wRlbGl5lT259KfD/T1XHvVYoEA3z/FxrXQuYXfvYWFl2xUvcx9EPorpmI=
X-Google-Smtp-Source: AGHT+IEINrdmFAx3zONnth4QNFrZH1h1meVudf30GLFqW4gmfs8ViUeInYhBNlmQrFmaR8IU0V+aZg==
X-Received: by 2002:a05:6512:108b:b0:52c:8a12:3d3b with SMTP id 2adb3069b0e04-530bb3c8259mr2169856e87.56.1722606728406;
        Fri, 02 Aug 2024 06:52:08 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-530bba35252sm233281e87.196.2024.08.02.06.52.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Aug 2024 06:52:08 -0700 (PDT)
Date: Fri, 2 Aug 2024 16:52:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, gregkh@linuxfoundation.org, Frank.Li@nxp.com, 
	jun.li@nxp.com, l.stach@pengutronix.de, aford173@gmail.com, hongxing.zhu@nxp.com, 
	alexander.stein@ew.tq-group.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH 3/5] phy: fsl-imx8mq-usb: add tca function driver for
 imx95
Message-ID: <i2o5pk7jnni4bgc6txktus26dtnd6quivxkslgqkelmyb334k6@s5waxd5ep75f>
References: <20240802091702.2057294-1-xu.yang_2@nxp.com>
 <20240802091702.2057294-3-xu.yang_2@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240802091702.2057294-3-xu.yang_2@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_065211_331026_503F1E3F 
X-CRM114-Status: GOOD (  21.71  )
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

On Fri, Aug 02, 2024 at 05:17:00PM GMT, Xu Yang wrote:
> The i.MX95 USB3 phy has a Type-C Assist block (TCA). This block consists
> two functional blocks (XBar assist and VBus assist) and one system
> access interface using APB.
> 
> The primary functionality of XBar assist is:
>  - switching lane for flip
>  - moving unused lanes into lower power states.
> 
> This info can be get from:
> i.MX95 RM Chapter 163.3.8 Type-C assist (TCA) block.
> 
> This will add support for TCA block to achieve lane switching and tca
> lower power functionality.
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> Reviewed-by: Jun Li <jun.li@nxp.com>
> ---
>  drivers/phy/freescale/Kconfig              |   1 +
>  drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 238 +++++++++++++++++++++
>  2 files changed, 239 insertions(+)
> 

[..]

> @@ -398,6 +624,10 @@ static int imx8mq_usb_phy_probe(struct platform_device *pdev)
>  
>  	phy_set_drvdata(imx_phy->phy, imx_phy);
>  
> +	if (device_is_compatible(dev, "fsl,imx95-usb-phy") &&
> +			imx95_usb_phy_get_tca(pdev, imx_phy) < 0)
> +		return dev_err_probe(dev, -ENODEV, "failed to get tca\n");

Pleas propagate error returned by imx95_usb_phy_get_tca() instead of
always returning -ENODEV.

> +
>  	imx8m_get_phy_tuning_data(imx_phy);
>  
>  	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> @@ -405,8 +635,16 @@ static int imx8mq_usb_phy_probe(struct platform_device *pdev)
>  	return PTR_ERR_OR_ZERO(phy_provider);
>  }
>  
> +static void imx8mq_usb_phy_remove(struct platform_device *pdev)
> +{
> +	struct imx8mq_usb_phy *imx_phy = platform_get_drvdata(pdev);
> +
> +	imx95_usb_phy_put_tca(imx_phy);
> +}
> +
>  static struct platform_driver imx8mq_usb_phy_driver = {
>  	.probe	= imx8mq_usb_phy_probe,
> +	.remove = imx8mq_usb_phy_remove,
>  	.driver = {
>  		.name	= "imx8mq-usb-phy",
>  		.of_match_table	= imx8mq_usb_phy_of_match,
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

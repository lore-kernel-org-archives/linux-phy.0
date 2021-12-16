Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 471DBC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 16 Dec 2021 17:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pxWqatmcUFeFWxE6m/DlYfp/TjVl0hE+iPR6Gv2R8OY=; b=fQlmb4EoW/VMwI
	p8YtAtu+b5Ck7Ui/5m3vvHzBdZuVX/0Zl8hZzD7U9BNmQ4x2oY1fDbFHd0okjZ9IKgMTKWT1bonia
	G3mxFtapvhHTbiTdpXwsCbXl0ZgQe++cPuCYyt9xu2wDa+IzWOUSJPDCdnOK/2/tt1e8V0qqjwOUx
	tV+GK6X09TDKCJNMkp87SxnVG40jkTwxz6ql+8xK4HPYJ6tU3ihcUWsoucmMa6bKS9E6MrUA2NEz0
	vG3KXyjIv5WkQ78f0k0sVOjEcG4zyIInPUmYNMoJ6gSPMnO68Bx3Vnrdm7VokHzdfVHChX4v/CvAd
	7wUR2f8E4jKTjmO+bMJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxuDN-006oAo-6W; Thu, 16 Dec 2021 17:06:45 +0000
Received: from mail-wr1-f54.google.com ([209.85.221.54])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxtyy-006kC1-71; Thu, 16 Dec 2021 16:51:53 +0000
Received: by mail-wr1-f54.google.com with SMTP id t18so45255357wrg.11;
 Thu, 16 Dec 2021 08:51:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4Ba3x56xjocitS2MZSEfS0BywGmujU1rIxnCuO82Q5A=;
 b=CK4I610UjOGXSm+F5qQ7h7+hoHBIoC9khMfvy/wKYFz17geHr+K5U0cBU2okwwQkgt
 BQ8nAg4VNkXzB2y/Nde/a6FRNooeVlkwvhJp7BB9Qj1q25Av2Nmo+BABIIECM9q1USyV
 HVk6Zw+NTYXrseDnWPmo98Kbzp5lCdClbnxeJeaII7x4d+pVUknXOL7JPeG0zhaiyHMJ
 6hZfZSLPXABccdmH7J2oENgHLB6pD59/JlSYlCDOc/9N1moHOzDABl0Vab0cLi5RoIov
 wR0jSrhRGF7ZQ9mBdCPICKdTQ2cFnEy4WEnqxJb6fIyomAK+z7rzrSuWeGuE1ngeCD5i
 hcVg==
X-Gm-Message-State: AOAM532JDAb51/xHjsnx1ogdCoBxkFjWLfUydbCy1v6VhuZDvqSdCE+P
 Rlta7nkvrV1zriVUA1gYoSmhPZ9Q9z4+ns1jayk=
X-Google-Smtp-Source: ABdhPJzv8g3rSkXzJ5+wU0BtvmOWy+ft4bUfk3k7rdWIj2p3tp/0xgZynAgZR2kYv7SYsOxhwFve4Q==
X-Received: by 2002:adf:f9cf:: with SMTP id w15mr9525086wrr.456.1639673509542; 
 Thu, 16 Dec 2021 08:51:49 -0800 (PST)
Received: from rocinante ([95.155.85.46])
 by smtp.gmail.com with ESMTPSA id b13sm5384793wrh.32.2021.12.16.08.51.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Dec 2021 08:51:48 -0800 (PST)
Date: Thu, 16 Dec 2021 17:51:47 +0100
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: l.stach@pengutronix.de, bhelgaas@google.com, lorenzo.pieralisi@arm.com,
 marcel.ziswiler@toradex.com, tharvey@gateworks.com, kishon@ti.com,
 vkoul@kernel.org, robh@kernel.org, galak@kernel.crashing.org,
 shawnguo@kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de, linux-imx@nxp.com
Subject: Re: [PATCH v7 8/8] PCI: imx: Add the imx8mm pcie support
Message-ID: <Ybtuo0CzfUhoJwsT@rocinante>
References: <1638432158-4119-1-git-send-email-hongxing.zhu@nxp.com>
 <1638432158-4119-9-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1638432158-4119-9-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_085152_311642_834E360D 
X-CRM114-Status: GOOD (  19.55  )
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

Hi Richard,

Apologies for a very late review!  Especially since Lorenzo already took
patches as per:

  https://lore.kernel.org/linux-pci/163965080404.20006.5241609551643501749.b4-ty@arm.com/

However, perhaps it's not too late.

[...]
> @@ -446,6 +452,13 @@ static int imx6_pcie_enable_ref_clk(struct imx6_pcie *imx6_pcie)
>  		break;
>  	case IMX7D:
>  		break;
> +	case IMX8MM:
> +		ret = clk_prepare_enable(imx6_pcie->pcie_aux);
> +		if (ret) {
> +			dev_err(dev, "unable to enable pcie_aux clock\n");
> +			break;
> +		}
> +		break;

You can drop the inner break, it wouldn't do much here, unless this was
intended to be a return?

> @@ -538,6 +559,10 @@ static void imx6_pcie_deassert_core_reset(struct imx6_pcie *imx6_pcie)
>  	case IMX8MQ:
>  		reset_control_deassert(imx6_pcie->pciephy_reset);
>  		break;
> +	case IMX8MM:
> +		if (phy_init(imx6_pcie->phy) != 0)
> +			dev_err(dev, "Waiting for PHY ready timeout!\n");
> +		break;

If the above, you can keep the same style as used throughout the file
already, so it would just simply be:

  if (phy_init(imx6_pcie->phy))

Also, a nitpick: to be consistent with other such messages here, the error
message would be all lower-case letters.

[...]
> @@ -614,6 +639,8 @@ static void imx6_pcie_configure_type(struct imx6_pcie *imx6_pcie)
>  static void imx6_pcie_init_phy(struct imx6_pcie *imx6_pcie)
>  {
>  	switch (imx6_pcie->drvdata->variant) {
> +	case IMX8MM:
> +		break;
>  	case IMX8MQ:

Would it warrant a comment that adds a note there to this single bare
break?  Perhaps this version is not support, lack this particular
functionality, etc.

[...]
> @@ -1089,10 +1122,39 @@ static int imx6_pcie_probe(struct platform_device *pdev)
>  			dev_err(dev, "Failed to get PCIE APPS reset control\n");
>  			return PTR_ERR(imx6_pcie->apps_reset);
>  		}
> +		break;
> +	case IMX8MM:
> +		imx6_pcie->pcie_aux = devm_clk_get(dev, "pcie_aux");
> +		if (IS_ERR(imx6_pcie->pcie_aux))
> +			return dev_err_probe(dev, PTR_ERR(imx6_pcie->pcie_aux),
> +					     "pcie_aux clock source missing or invalid\n");
> +		imx6_pcie->apps_reset = devm_reset_control_get_exclusive(dev,
> +									 "apps");
> +		if (IS_ERR(imx6_pcie->apps_reset)) {
> +			dev_err(dev, "Failed to get PCIE APPS reset control\n");
> +			return PTR_ERR(imx6_pcie->apps_reset);
> +		}
> +
> +		imx6_pcie->phy = devm_phy_get(dev, "pcie-phy");
> +		if (IS_ERR(imx6_pcie->phy)) {
> +			if (PTR_ERR(imx6_pcie->phy) == -EPROBE_DEFER)
> +				return -EPROBE_DEFER;
> +			dev_err(dev, "Failed to get PCIE PHY\n");
> +			return PTR_ERR(imx6_pcie->phy);
> +		}

A question about handling of the -EPROBE_DEFER above: why not to use the
dev_err_probe() helper similarly to the code above and below?  Would there
be something different preventing the use of dev_err_probe() here too?

>  		break;
>  	default:
>  		break;
>  	}
> +	/* Don't fetch the pcie_phy clock, if it has abstract PHY driver */
> +	if (imx6_pcie->phy == NULL) {
> +		imx6_pcie->pcie_phy = devm_clk_get(dev, "pcie_phy");
> +		if (IS_ERR(imx6_pcie->pcie_phy))
> +			return dev_err_probe(dev, PTR_ERR(imx6_pcie->pcie_phy),
> +					     "pcie_phy clock source missing or invalid\n");
> +	}

Thank you for another amazing patch!

	Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

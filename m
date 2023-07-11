Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FA83EB64DC
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 09:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4v8FuQZ6NsHsBlPI7vHcExwQSYBUzoDvZLiBEn97les=; b=EBpAVQNicrHs94
	Ve22S4jhpnMnzP3gnDiKF44//Y4pXBHXDfBR4z9j6qI9XuS5fxlv7lHgpP0E1sRqTCNRzJNaNb9yw
	Iw96z2VJmt82A0WPwpwYUTb0kt0BdhL+E6hAl5Omu5winkYVI4U7OqL/ljhim4UHle67LgaJXRqX6
	DQbPrOJ3Hqi+A19QmXFIQHGA0aM1Pj+ZeATJE0ScPTidjXsFADHEui8vfY0sDLslBV32rwbTAIXFP
	Bvcw79DeAPiXKkWnqv6ZFUuYe260qY2EP34wD9UeKLnWfoIdKShb9pWf6WfG7ovcsa5XC/SIMawbb
	FvBpAJOKRDkWaCK0d+5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ9Nk-00EEsc-0P;
	Tue, 11 Jul 2023 09:10:04 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ9Ng-00EEqs-35
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 09:10:02 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-51e429e1eabso5055785a12.2
        for <linux-phy@lists.infradead.org>; Tue, 11 Jul 2023 02:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689066599; x=1691658599;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5N3hprEj7uW61mEh1PLDp0Q1DNyZBWQj8+LgzS5pZjk=;
        b=QdhI+G0us/wRUovMvFBoDxaVrr1D2kXaqcFOBXBysRxpd9/JAOEvYC5Azqr/4bXd9C
         2Hns9sOmPiD4OF4ZAWG1LwuKMKUkjRA0Ll+cNK2dllIWysa/kC8Zq26K20brokd/guzw
         VCWzzegCT/1iBz6CQsJOYLA7/GFkZL48vBJ2ill9V8c7V6Dnr4E9Rnk0kHegTSzephkE
         R9Wma9xNRMXHbvgPbr0KUVdppiNS7L2d5sQwDq6EiMS3vnraSDdi9vZ1fHqNdScshEGS
         2VM/GigwG7m8/K4jgt7INO5MEcLppVpgoJIJ5wS/1RenxLJTtbvsW+/aJKy49RzdoVcx
         Rdrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689066599; x=1691658599;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5N3hprEj7uW61mEh1PLDp0Q1DNyZBWQj8+LgzS5pZjk=;
        b=P5CLHJKWk00mRyPrt/CHUgPKcQtivPjqLrGzp5JI1Re22A4sGKTwdqx04EGysWgEgt
         PefYFf54fxZhe6PwGYV3MxPEfGiVCTq1tNTsmW9ep+c4V95kuiFtGtepnRlRmoz0sQXP
         N1/y8ESaxpigBJnMpG7Zc3UC0aHeA/eCW18y2HDZrrGjbyBzby3Lti0xTYUcpKPOGRUW
         agasdaqQLut+kVCiykWwkAo8m2Z1lBWQSgvGD6NStUU0DUVZRaPzNGHLEIewUWCc6xFd
         Db4mby6Uw6AESrMdHUrtOzJkl4uu5QZo5rvGtI4K+NhccyuW/9vuakNx6ZZxgYxSnFVh
         stMw==
X-Gm-Message-State: ABy/qLYevgyeS7xP2Ckr8nMWWwcoTuu7s8FbzgRM6dBQxyynvA1u21Le
	pAelgH9jNX2GPdMJJCt596e/m3MxC8yOlmHKdls=
X-Google-Smtp-Source: APBJJlHuUznV9FamEEhrbhzUGIBPlyjuZX2GlDThZC5NIevHwpPGzwg6VUScC9DVii5Ol7Xa/ot7uw==
X-Received: by 2002:a17:907:75db:b0:992:9a5e:3172 with SMTP id jl27-20020a17090775db00b009929a5e3172mr13467303ejc.59.1689066599181;
        Tue, 11 Jul 2023 02:09:59 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id w22-20020a170906131600b009927a49ba94sm868727ejb.169.2023.07.11.02.09.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Jul 2023 02:09:58 -0700 (PDT)
Message-ID: <8d3aa7fe-69fd-d0c1-9a94-32c3c7b18ed5@linaro.org>
Date: Tue, 11 Jul 2023 11:09:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 3/6] phy: qcom-m31: Introduce qcom,m31 USB phy driver
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com,
 will@kernel.org, p.zabel@pengutronix.de, arnd@arndb.de,
 geert+renesas@glider.be, neil.armstrong@linaro.org, nfraprado@collabora.com,
 broonie@kernel.org, rafal@milecki.pl, quic_srichara@quicinc.com,
 quic_varada@quicinc.org, quic_wcheng@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <cover.1689065318.git.quic_varada@quicinc.com>
 <2489ac0b07c14e61bc471716e97237c385daec86.1689065318.git.quic_varada@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <2489ac0b07c14e61bc471716e97237c385daec86.1689065318.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_021001_012948_BA51977A 
X-CRM114-Status: GOOD (  26.43  )
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

On 11/07/2023 10:51, Varadarajan Narayanan wrote:
> Add the M31 USB2 phy driver.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v1:
> 	Combine driver, makefile and kconfig into 1 patch
> 	Remove 'qscratch' region and its usage. The controller driver takes care
> 	of those settings
> 	Use compatible/data to handle ipq5332 init
> 	Drop the default case
> 	Get resources by index instead of name as there is only one resource
> 	Add clock
> 	Fix review comments in the driver
> ---
>  drivers/phy/qualcomm/Kconfig        |  11 ++
>  drivers/phy/qualcomm/Makefile       |   1 +
>  drivers/phy/qualcomm/phy-qcom-m31.c | 256 ++++++++++++++++++++++++++++++++++++
>  3 files changed, 268 insertions(+)
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-m31.c
> 
> diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
> index 97ca595..76be191 100644
> --- a/drivers/phy/qualcomm/Kconfig
> +++ b/drivers/phy/qualcomm/Kconfig
> @@ -197,3 +197,14 @@ config PHY_QCOM_SGMII_ETH
>  	help
>  	  Enable this to support the internal SerDes/SGMII PHY on various
>  	  Qualcomm chipsets.
> +
> +config PHY_QCOM_M31_USB
> +	tristate "Qualcomm M31 HS PHY driver support"
> +	depends on (USB || USB_GADGET) && ARCH_QCOM
> +	select USB_PHY
> +	help
> +	  Enable this to support M31 HS PHY transceivers on Qualcomm chips
> +	  with DWC3 USB core. It handles PHY initialization, clock
> +	  management required after resetting the hardware and power
> +	  management. This driver is required even for peripheral only or
> +	  host only mode configurations.
> diff --git a/drivers/phy/qualcomm/Makefile b/drivers/phy/qualcomm/Makefile
> index b030858..0b5dd66 100644
> --- a/drivers/phy/qualcomm/Makefile
> +++ b/drivers/phy/qualcomm/Makefile
> @@ -22,3 +22,4 @@ obj-$(CONFIG_PHY_QCOM_USB_SS)		+= phy-qcom-usb-ss.o
>  obj-$(CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2)+= phy-qcom-snps-femto-v2.o
>  obj-$(CONFIG_PHY_QCOM_IPQ806X_USB)	+= phy-qcom-ipq806x-usb.o
>  obj-$(CONFIG_PHY_QCOM_SGMII_ETH)	+= phy-qcom-sgmii-eth.o
> +obj-$(CONFIG_PHY_QCOM_M31_USB)		+= phy-qcom-m31.o
> diff --git a/drivers/phy/qualcomm/phy-qcom-m31.c b/drivers/phy/qualcomm/phy-qcom-m31.c
> new file mode 100644
> index 0000000..8700728
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-m31.c
> @@ -0,0 +1,256 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (c) 2014-2016, 2020, The Linux Foundation. All rights reserved.
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/delay.h>
> +#include <linux/err.h>
> +#include <linux/io.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/of_device.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/reset.h>
> +#include <linux/slab.h>
> +#include <linux/usb/of.h>
> +#include <linux/usb/phy.h>
> +
> +enum clk_reset_action {
> +	CLK_RESET_DEASSERT	= 0,
> +	CLK_RESET_ASSERT	= 1
> +};

Drop entire enum. I don't see it being used.

...

> +
> +static int m31usb_phy_probe(struct platform_device *pdev)
> +{
> +	const struct m31_priv_data *data;
> +	struct device *dev = &pdev->dev;
> +	struct m31usb_phy *qphy;
> +	int ret;
> +
> +	qphy = devm_kzalloc(dev, sizeof(*qphy), GFP_KERNEL);
> +	if (!qphy)
> +		return -ENOMEM;
> +
> +	qphy->phy.dev = dev;
> +
> +	qphy->base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(qphy->base))
> +		return PTR_ERR(qphy->base);
> +
> +	qphy->phy_reset = devm_reset_control_get_exclusive_by_index(dev, 0);
> +	if (IS_ERR(qphy->phy_reset))
> +		return PTR_ERR(qphy->phy_reset);
> +
> +	qphy->cfg_ahb_clk = devm_clk_get(dev, "cfg_ahb");

How do you handle errors? I don't see it.

> +	platform_set_drvdata(pdev, qphy);
> +
> +	data = of_device_get_match_data(dev);
> +	qphy->regs = data->regs;
> +	qphy->ulpi_mode = data->ulpi_mode;
> +
> +	qphy->phy.label			= "m31-usb-phy";
> +	qphy->phy.init			= m31usb_phy_init;
> +	qphy->phy.shutdown		= m31usb_phy_shutdown;
> +	qphy->phy.type			= USB_PHY_TYPE_USB2;
> +
> +	ret = usb_add_phy_dev(&qphy->phy);
> +
> +	return ret;
> +}
> +
> +static void m31usb_phy_remove(struct platform_device *pdev)
> +{
> +	struct m31usb_phy *qphy = platform_get_drvdata(pdev);
> +
> +	usb_remove_phy(&qphy->phy);
> +}
> +
> +struct m31_priv_data m31_ipq5332_data = {

static const

> +	.ulpi_mode = false,
> +	.regs = m31_ipq5332_regs,
> +};


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

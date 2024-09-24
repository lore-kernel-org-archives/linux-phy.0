Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AD7FCF9C69
	for <linux-phy@archiver.kernel.org>; Tue, 24 Sep 2024 16:43:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sjoxFDd5ag88S27msir0LCuRNaAymfsRqCyDaC03q0M=; b=BOmEZg/Obyhwx5
	vLVOI5h6hTejl5O+MOWv86cKQnbngAiy/8Lx/aWmsF7L5f88JumSplv0O+/k3GlJAhqsotx7j3bNt
	HnsFZODHUmCIBZ/imDLkLLXnE3UNB9QFpt773Gx0T1HdvZMY83WD2FJiRYNs7UJdViDOAA3WRIyx1
	8bh5BeFBswWcYYy40wEgAcLBH8IUf9TX6PYq3OEcuXNf9DDi5OLD3COJltEB7i+0FInendQnjx+3J
	xJ2sKh7vkE79l8Vr1YrTtuSy4lUoEgfsZfJdoHIUFKo5+ViDEkYkzzB3dtYUSxO29PyiDCfJL6C6u
	Noccx50kpuQ+5ktWpqGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st8dI-00000002sL5-0XYH;
	Tue, 24 Sep 2024 16:43:24 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st8dF-00000002sJf-1VcH
	for linux-phy@lists.infradead.org;
	Tue, 24 Sep 2024 16:43:22 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2f759b87f83so61292571fa.2
        for <linux-phy@lists.infradead.org>; Tue, 24 Sep 2024 09:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727196199; x=1727800999; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iLmWupQuIxURteGxaOu17nS4Aw/Rss6V3alddoHTmYQ=;
        b=zbMIqXUKEyahbFs6b6Fb0e8t5UzOl9NaKUrMCWx9Tucwrg/ItznFfgnGvBVv50t2jZ
         YMY0r2BkgyyrQtsLN+E8AiVMwEyXBMbsRG8UAOrPFFJNOG+HiU0RP0FE+zgmq43P7ip5
         L7b4RWIXrSVsCAoe3yaJ4kbVuuXZzdfKvwVl5L90JEU6EYQaRyyJycheQrK4GAxNsvjb
         1S0HXSOrPoZ9S4gp7HuNg2/rySCak/GO8Wq5S/O02UsEzeOhF0lY/nukk02kRqiyV6mj
         5uibQjN2Wee/ZK4WM11HJpCsWJEnJdsAZzKfkmcf6Cq8i3Jkx2uXbstTHrIeEkF1px3u
         PdHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727196199; x=1727800999;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iLmWupQuIxURteGxaOu17nS4Aw/Rss6V3alddoHTmYQ=;
        b=swf7KLRT9T7CgOhhJhDrKdSRWC/RCtGEKlzU0uzeXxRdVgTy+B+XQtcGrXNXBwGXsa
         CsL2AmFOCJLZEtzgzKMdYDNP10Hth8LDwUzn/3fM6ijQN8uArHIgbpWfn+VH9jnXRFCA
         mnsILyQ4WOL7Opfmr2MY9PHNkL+FparV1sqO6fmFwpnl4DxeAy4Lq3lvFTK/Ep4l/vM3
         +i7pHMb4+OrdJuhgBur824h55i+71mNjKMBY9vyHYvgiwf+8ahtp5L9Q5+iDim7ARar6
         W2CjPxtOasqGRcr6utD9etabnv6achX/tUvFntQcKEKW7ooB8mwOOWJZ7HLDodPHvgRt
         ANZQ==
X-Forwarded-Encrypted: i=1; AJvYcCXpdhMUFDnQc0Rg4uGBSg4cEk9Wv00AZPQCrqX1A/wHTqaj7cH6m95Xq7ezb6C3/P7P8IqX1po2t4c=@lists.infradead.org
X-Gm-Message-State: AOJu0YyMewXd9WkidnVNkk/cgS0rPHf0Zbzds1cvPnBTfwG71nDljdhG
	iEMXLo45mk1j1yfdMFs3GoIrG/LR6VF1Fgg7yqGUS6+osTF4buZHWygmK6PfBBI=
X-Google-Smtp-Source: AGHT+IEezobaIL04e3lPxMDU2Y+PPIoCnCTJI3N3CWxUIHXwcFH+J92I5mDokhkQOYy3JFhcIgkX5A==
X-Received: by 2002:a2e:bc26:0:b0:2f5:2e2:eafb with SMTP id 38308e7fff4ca-2f915fc1487mr256741fa.7.1727196199064;
        Tue, 24 Sep 2024 09:43:19 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:ef80:4518:32:3b61:babd])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c5cf4d7461sm916227a12.79.2024.09.24.09.43.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2024 09:43:18 -0700 (PDT)
Date: Tue, 24 Sep 2024 18:43:16 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 2/2] phy: add NXP PTN3222 eUSB2 to USB2 redriver
Message-ID: <ZvLsJEa2PhIxFRDC@linaro.org>
References: <20240830-nxp-ptn3222-v2-0-4c6d8535cf6c@linaro.org>
 <20240830-nxp-ptn3222-v2-2-4c6d8535cf6c@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240830-nxp-ptn3222-v2-2-4c6d8535cf6c@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_094321_432657_9BB95349 
X-CRM114-Status: GOOD (  28.31  )
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

On Fri, Aug 30, 2024 at 11:20:46AM +0300, Dmitry Baryshkov wrote:
> The NXP PTN3222 is the single-port eUSB2 to USB2 redriver that performs
> translation between eUSB2 and USB2 signalling schemes. It supports all
> three data rates: Low Speed, Full Speed and High Speed.
> 
> The reset state enables autonegotiation of the PHY role and of the data
> rate, so no additional programming is required.
> 
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Tested-by: Konrad Dybcio <konradybcio@kernel.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

This works well for the USB fingerprint reader on the Qualcomm X1E80100
CRD. Thanks a lot for the clean driver :-)

Reviewed-by: Stephan Gerhold <stephan.gerhold@linaro.org>
Tested-by: Stephan Gerhold <stephan.gerhold@linaro.org>

> ---
>  drivers/phy/Kconfig           |  11 ++++
>  drivers/phy/Makefile          |   1 +
>  drivers/phy/phy-nxp-ptn3222.c | 123 ++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 135 insertions(+)
> 
> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> index dfab1c66b3e5..cb06a7f79740 100644
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -82,6 +82,17 @@ config PHY_AIROHA_PCIE
>  	  This driver create the basic PHY instance and provides initialize
>  	  callback for PCIe GEN3 port.
>  
> +config PHY_NXP_PTN3222
> +	tristate "NXP PTN3222 1-port eUSB2 to USB2 redriver"
> +	depends on I2C
> +	depends on OF
> +	select GENERIC_PHY
> +	help
> +	  Enable this to support NXP PTN3222 1-port eUSB2 to USB2 Redriver.
> +	  This redriver performs translation between eUSB2 and USB2 signalling
> +	  schemes. It supports all three USB 2.0 data rates: Low Speed, Full
> +	  Speed and High Speed.
> +
>  source "drivers/phy/allwinner/Kconfig"
>  source "drivers/phy/amlogic/Kconfig"
>  source "drivers/phy/broadcom/Kconfig"
> diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
> index 5fcbce5f9ab1..b64247046575 100644
> --- a/drivers/phy/Makefile
> +++ b/drivers/phy/Makefile
> @@ -11,6 +11,7 @@ obj-$(CONFIG_PHY_XGENE)			+= phy-xgene.o
>  obj-$(CONFIG_PHY_PISTACHIO_USB)		+= phy-pistachio-usb.o
>  obj-$(CONFIG_USB_LGM_PHY)		+= phy-lgm-usb.o
>  obj-$(CONFIG_PHY_AIROHA_PCIE)		+= phy-airoha-pcie.o
> +obj-$(CONFIG_PHY_NXP_PTN3222)		+= phy-nxp-ptn3222.o
>  obj-y					+= allwinner/	\
>  					   amlogic/	\
>  					   broadcom/	\
> diff --git a/drivers/phy/phy-nxp-ptn3222.c b/drivers/phy/phy-nxp-ptn3222.c
> new file mode 100644
> index 000000000000..c6179d8701e6
> --- /dev/null
> +++ b/drivers/phy/phy-nxp-ptn3222.c
> @@ -0,0 +1,123 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2024, Linaro Limited
> + */
> +
> +#include <linux/gpio/consumer.h>
> +#include <linux/i2c.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/phy/phy.h>
> +#include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
> +
> +#define NUM_SUPPLIES 2
> +
> +struct ptn3222 {
> +	struct i2c_client *client;
> +	struct phy *phy;
> +	struct gpio_desc *reset_gpio;
> +	struct regulator_bulk_data *supplies;
> +};
> +
> +static int ptn3222_init(struct phy *phy)
> +{
> +	struct ptn3222 *ptn3222 = phy_get_drvdata(phy);
> +	int ret;
> +
> +	ret = regulator_bulk_enable(NUM_SUPPLIES, ptn3222->supplies);
> +	if (ret)
> +		return ret;
> +
> +	gpiod_set_value_cansleep(ptn3222->reset_gpio, 0);
> +
> +	return 0;
> +}
> +
> +static int ptn3222_exit(struct phy *phy)
> +{
> +	struct ptn3222 *ptn3222 = phy_get_drvdata(phy);
> +
> +	gpiod_set_value_cansleep(ptn3222->reset_gpio, 1);
> +
> +	return regulator_bulk_disable(NUM_SUPPLIES, ptn3222->supplies);
> +}
> +
> +static const struct phy_ops ptn3222_ops = {
> +	.init		= ptn3222_init,
> +	.exit		= ptn3222_exit,
> +	.owner		= THIS_MODULE,
> +};
> +
> +static const struct regulator_bulk_data ptn3222_supplies[NUM_SUPPLIES] = {
> +	{
> +		.supply = "vdd3v3",
> +		.init_load_uA = 11000,
> +	}, {
> +		.supply = "vdd1v8",
> +		.init_load_uA = 55000,
> +	}
> +};
> +
> +static int ptn3222_probe(struct i2c_client *client)
> +{
> +	struct device *dev = &client->dev;
> +	struct phy_provider *phy_provider;
> +	struct ptn3222 *ptn3222;
> +	int ret;
> +
> +	ptn3222 = devm_kzalloc(dev, sizeof(*ptn3222), GFP_KERNEL);
> +	if (!ptn3222)
> +		return -ENOMEM;
> +
> +	ptn3222->client = client;
> +
> +	ptn3222->reset_gpio = devm_gpiod_get_optional(dev, "reset",
> +						      GPIOD_OUT_HIGH);
> +	if (IS_ERR(ptn3222->reset_gpio))
> +		return dev_err_probe(dev, PTR_ERR(ptn3222->reset_gpio),
> +				     "unable to acquire reset gpio\n");
> +
> +	ret = devm_regulator_bulk_get_const(dev, NUM_SUPPLIES, ptn3222_supplies,
> +					    &ptn3222->supplies);
> +	if (ret)
> +		return ret;
> +
> +	ptn3222->phy = devm_phy_create(dev, dev->of_node, &ptn3222_ops);
> +	if (IS_ERR(ptn3222->phy)) {
> +		dev_err(dev, "failed to create PHY: %d\n", ret);
> +		return PTR_ERR(ptn3222->phy);
> +	}
> +
> +	phy_set_drvdata(ptn3222->phy, ptn3222);
> +
> +	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> +
> +	return PTR_ERR_OR_ZERO(phy_provider);
> +}
> +
> +static const struct i2c_device_id ptn3222_table[] = {
> +	{ "ptn3222" },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(i2c, ptn3222_table);
> +
> +static const struct of_device_id ptn3222_of_table[] = {
> +	{ .compatible = "nxp,ptn3222" },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, ptn3222_of_table);
> +
> +static struct i2c_driver ptn3222_driver = {
> +	.driver = {
> +		.name = "ptn3222",
> +		.of_match_table = ptn3222_of_table,
> +	},
> +	.probe = ptn3222_probe,
> +	.id_table = ptn3222_table,
> +};
> +
> +module_i2c_driver(ptn3222_driver);
> +
> +MODULE_DESCRIPTION("NXP PTN3222 eUSB2 Redriver driver");
> +MODULE_LICENSE("GPL");
> 
> -- 
> 2.39.2
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

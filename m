Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41C85C4706C
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 13:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1OrdT/IimM+ZCpWFlEnssOU2etKDQmvfMhJRWTTOYck=; b=3TXIOSSuWn+3ya
	lYCNQR0bUWnho8R3WMaj+SDMkbKJ9AchqQM670kZoMnio4GUapEhXqonjAhPG+PP6tZpZMXo+DbhC
	MdA1M5bohb2BQnfXPLlYEkFOkMK5j50A3JyKYNBAlLu2age4GmZoJ12RkmUIidtCmWFCuUL+XcYQ7
	78DPdFJh5mChrqif0iO1U8OG+xg2yG9OZlgHdONEn3UXgQbY1bMre6D+LsoG8GbgHiNi6c7PRQ5Af
	3y6tFA29F+rSR/bo7mM767uqhhKN+k/zxGDs8qFr1to7MaA8uWUekgdMawtWm0qkIOWU/P3TSQTN+
	m8DMgeBHTO4HQdxjAgRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOeFO-005CnV-2Y;
	Sat, 13 Jan 2024 13:40:26 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOeFI-005Cmx-1o
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 13:40:25 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40e586a62f7so45314965e9.2
        for <linux-phy@lists.infradead.org>; Sat, 13 Jan 2024 05:40:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705153215; x=1705758015; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n6Fxgya1TVkm3TPxhwzKTyr286c02yPIKDB2qfXb84I=;
        b=K7mbjqIRXdnZaLwqqThTmmWtsIp2O5QvaOSeLGqfLX1FNi4iJu2gjS4NQxnmO+2d6t
         kxNn2f/HcfAtYWauy4eP6Sbi8wBXJgo1WZxKay3rcbS7yrBp60aDnyNVC+ecYUIHCRSh
         qnKP1iK6Bm0af/yLAL3ty3Q7O4DY88UEGSR49DF1h1YYaLAJZatGIN5nhqP66EFfOykm
         imC4oOJU853YPXYm5loLLA1m+l2QiSpD9sTJMvyar8i+0wk86EK99CBQMzPUb0zembMl
         Mv73t7F7MOwz2No+pN8kchnFVKR0MhWYOOwTKDuAivXGcx353EvFnuOWjKI2PEhrEEX0
         fH7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705153215; x=1705758015;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n6Fxgya1TVkm3TPxhwzKTyr286c02yPIKDB2qfXb84I=;
        b=HK3hsDbwnMrf02lbeZ4yRubJCF9Erh67komOzA9sUxWiGKEe7/HERmDvC+7piVzv45
         wn6oJ/t0fp9VhPg0r19fi7m27a+eOAwCgFtD57bHfzOLQG44fxoporu0LwRVy+j7flwY
         ihiPD9+zLlRhZz11cbsTSCEijrv73ettROKNDNobLRDnaYkoQ0PyhO57ig7DNNV8aupE
         WT+nDLXziPHVV4V/GKxPQlVRPI88lJcuX/aViOgeNCU0HMZOiwUFS+3F0NQIPhNYRM5y
         X6pZi1zlzWUAjcEPbmvLcP8+JA0O05TgrpUmf3gYOTa5Buh5y1nelXvEAc37Fiflg/PA
         hVXg==
X-Gm-Message-State: AOJu0YyNkzut5yKWoVVFMK3BZLdEcoQZjokOUv/obebaTMiKvOoD8Ulm
	pt3qwPM0Ga0cf2oQ6yoqL3NzxQx6rjHvdg==
X-Google-Smtp-Source: AGHT+IEesURe4l4hBQdzTgbhi4W65rM3L5F8yms56jbFFVQugYXIThxWnItj+cXhWFX6RqpnO4BRrg==
X-Received: by 2002:a05:600c:4595:b0:40d:8f40:ba2b with SMTP id r21-20020a05600c459500b0040d8f40ba2bmr1809556wmo.167.1705153215294;
        Sat, 13 Jan 2024 05:40:15 -0800 (PST)
Received: from [192.168.100.86] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id je6-20020a05600c1f8600b0040d8d11bf63sm9459531wmb.41.2024.01.13.05.40.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Jan 2024 05:40:14 -0800 (PST)
Message-ID: <83fd1153-f79f-4d8b-8752-1daa0b9b17f2@linaro.org>
Date: Sat, 13 Jan 2024 13:40:13 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/13] usb: typec: qcom-pmic-typec: add support for PMI632
 PMIC
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
References: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
 <20240113-pmi632-typec-v1-6-de7dfd459353@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v1-6-de7dfd459353@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240113_054020_639314_5A7DE55B 
X-CRM114-Status: GOOD (  27.84  )
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

On 13/01/2024 05:42, Dmitry Baryshkov wrote:
> The PMI632 PMIC support Type-C port handling, but lacks USB
> PowerDelivery support. The TCPM requires all callbacks to be provided
> by the implementation. Implement a special, 'stub' Qcom PD PHY
> implementation to enable the PMI632 support.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   drivers/usb/typec/tcpm/qcom/Makefile               |  3 +-
>   drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c      | 30 +++++++---
>   .../usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h    |  2 +
>   .../typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c   | 67 ++++++++++++++++++++++
>   4 files changed, 94 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/usb/typec/tcpm/qcom/Makefile b/drivers/usb/typec/tcpm/qcom/Makefile
> index dc1e8832e197..cc23042b9487 100644
> --- a/drivers/usb/typec/tcpm/qcom/Makefile
> +++ b/drivers/usb/typec/tcpm/qcom/Makefile
> @@ -3,4 +3,5 @@
>   obj-$(CONFIG_TYPEC_QCOM_PMIC)		+= qcom_pmic_tcpm.o
>   qcom_pmic_tcpm-y			+= qcom_pmic_typec.o \
>   					   qcom_pmic_typec_port.o \
> -					   qcom_pmic_typec_pdphy.o
> +					   qcom_pmic_typec_pdphy.o \
> +					   qcom_pmic_typec_pdphy_stub.o \
> diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c
> index 4f2dbf20da12..e2513549c58a 100644
> --- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c
> +++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c
> @@ -118,7 +118,7 @@ static int qcom_pmic_typec_probe(struct platform_device *pdev)
>   	const struct pmic_typec_resources *res;
>   	struct regmap *regmap;
>   	struct device *bridge_dev;
> -	u32 base[2];
> +	u32 base;
>   	int ret;
>   
>   	res = of_device_get_match_data(dev);
> @@ -145,7 +145,7 @@ static int qcom_pmic_typec_probe(struct platform_device *pdev)
>   		return -ENODEV;
>   	}
>   
> -	ret = of_property_read_u32_array(np, "reg", base, 2);
> +	ret = of_property_read_u32_index(np, "reg", 0, &base);

So I had to do a double-take here but, this seems fine to me.

>   	if (ret)
>   		return ret;
>   
> @@ -154,14 +154,24 @@ static int qcom_pmic_typec_probe(struct platform_device *pdev)
>   		return PTR_ERR(tcpm->pmic_typec_port);
>   
>   	ret = qcom_pmic_typec_port_probe(pdev, tcpm->pmic_typec_port,
> -					 res->port_res, regmap, base[0]);
> +					 res->port_res, regmap, base);
>   	if (ret)
>   		return ret;
>   
> -	ret = res->pdphy_probe(pdev, tcpm,
> -			       res->pdphy_res, regmap, base[1]);
> -	if (ret)
> -		return ret;
> +	if (res->pdphy_res) {
> +		ret = of_property_read_u32_index(np, "reg", 1, &base);
> +		if (ret)
> +			return ret;
> +
> +		ret = qcom_pmic_typec_pdphy_probe(pdev, tcpm,
> +						  res->pdphy_res, regmap, base);
> +		if (ret)
> +			return ret;
> +	} else {
> +		ret = qcom_pmic_typec_pdphy_stub_probe(pdev, tcpm);
> +		if (ret)
> +			return ret;
> +	}

Looks fine.

>   
>   	mutex_init(&tcpm->lock);
>   	platform_set_drvdata(pdev, tcpm);
> @@ -253,8 +263,14 @@ static struct pmic_typec_resources pm8150b_typec_res = {
>   	.port_res = &pm8150b_port_res,
>   };
>   
> +static struct pmic_typec_resources pmi632_typec_res = {
> +	/* PD PHY not present */
> +	.port_res = &pm8150b_port_res,
> +};
> +
>   static const struct of_device_id qcom_pmic_typec_table[] = {
>   	{ .compatible = "qcom,pm8150b-typec", .data = &pm8150b_typec_res },
> +	{ .compatible = "qcom,pmi632-typec", .data = &pmi632_typec_res },
>   	{ }
>   };
>   MODULE_DEVICE_TABLE(of, qcom_pmic_typec_table);
> diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h
> index b94eccadb042..2a7dedeb3009 100644
> --- a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h
> +++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h
> @@ -31,5 +31,7 @@ int qcom_pmic_typec_pdphy_probe(struct platform_device *pdev,
>   				const struct pmic_typec_pdphy_resources *res,
>   				struct regmap *regmap,
>   				u32 base);
> +int qcom_pmic_typec_pdphy_stub_probe(struct platform_device *pdev,
> +				     struct pmic_typec *tcpm);
>   
>   #endif /* __QCOM_PMIC_TYPEC_PDPHY_H__ */
> diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c
> new file mode 100644
> index 000000000000..5d3b0e78d4d8
> --- /dev/null
> +++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c
> @@ -0,0 +1,67 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2024, Linaro Ltd. All rights reserved.
> + */
> +
> +#include <linux/err.h>
> +#include <linux/interrupt.h>
> +#include <linux/kernel.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/slab.h>
> +#include <linux/usb/pd.h>
> +#include <linux/usb/tcpm.h>
> +#include "qcom_pmic_typec.h"
> +#include "qcom_pmic_typec_pdphy.h"
> +
> +static int qcom_pmic_typec_pdphy_stub_pd_transmit(struct tcpc_dev *tcpc,
> +						  enum tcpm_transmit_type type,
> +						  const struct pd_message *msg,
> +						  unsigned int negotiated_rev)
> +{
> +	struct pmic_typec *tcpm = tcpc_to_tcpm(tcpc);
> +	struct device *dev = tcpm->dev;
> +
> +	dev_dbg(dev, "pdphy_transmit: type=%d\n", type);
> +
> +	tcpm_pd_transmit_complete(tcpm->tcpm_port,
> +				  TCPC_TX_SUCCESS);
> +
> +	return 0;
> +}
> +
> +static int qcom_pmic_typec_pdphy_stub_set_pd_rx(struct tcpc_dev *tcpc, bool on)
> +{
> +	struct pmic_typec *tcpm = tcpc_to_tcpm(tcpc);
> +	struct device *dev = tcpm->dev;
> +
> +	dev_dbg(dev, "set_pd_rx: %s\n", on ? "on" : "off");
> +
> +	return 0;
> +}
> +
> +static int qcom_pmic_typec_pdphy_stub_set_roles(struct tcpc_dev *tcpc, bool attached,
> +						enum typec_role power_role,
> +						enum typec_data_role data_role)
> +{
> +	struct pmic_typec *tcpm = tcpc_to_tcpm(tcpc);
> +	struct device *dev = tcpm->dev;
> +
> +	dev_dbg(dev, "pdphy_set_roles: data_role_host=%d power_role_src=%d\n",
> +		data_role, power_role);
> +
> +	return 0;
> +}
> +
> +int qcom_pmic_typec_pdphy_stub_probe(struct platform_device *pdev,
> +				     struct pmic_typec *tcpm)
> +{
> +	tcpm->tcpc.set_pd_rx = qcom_pmic_typec_pdphy_stub_set_pd_rx;
> +	tcpm->tcpc.set_roles = qcom_pmic_typec_pdphy_stub_set_roles;
> +	tcpm->tcpc.pd_transmit = qcom_pmic_typec_pdphy_stub_pd_transmit;
> +
> +	return 0;
> +}
> 

So this answers the question I had on IRC whether or not the Linux TCPM 
layer could tolerate a stubbed PD layers.

I think this _should_ be fine, I certainly have no problem with the 
approach overall and the intevention in the code seems small.

Good work.

Acked-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

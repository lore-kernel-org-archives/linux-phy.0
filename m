Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4126CA101A
	for <linux-phy@archiver.kernel.org>; Sat, 31 Aug 2024 00:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y4AOv2oiRWn9vKATvFldFgL95Adwnvjv8JjhfmojCfM=; b=suQD7hcNO9nMJ8
	NcTPrUTRqjp3P0A46ad6YUoTXHADYrbo9wocNC9lVay/CvZOHuYkU6KaIbXS58d59ZvpmtckvTO3Q
	DsRuyhLe62GeHure6o1CSZI7W5g3AGgpFX09S0K4PSovAohaJHQIyOb/Usbxuc00tRMNVx2A8bDSr
	qsxMIgzZ9n40pR7Ip2fg//OjxPG2jptYcLYesEdf1QAbAmggmIA/PWiH5bbYhfCsCi9PHq+icqojJ
	gv4vUBqgggj6MWFwxCTUIK9RXmsLvHsDOo1AS/afD5lHvXh0hM+0hpc7bhb67BYipjfoi0E5kDWeV
	Or1kmDZ0pwADH55gJDzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skBmo-000000085cZ-23Wy;
	Sat, 31 Aug 2024 00:16:14 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skAnx-00000007yve-2P7m
	for linux-phy@lists.infradead.org;
	Fri, 30 Aug 2024 23:13:23 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47UGGuqd007615;
	Fri, 30 Aug 2024 23:13:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IK7VX6VkoviccbNqlMnd5aldJ2K8fJujELfbT3MVEPA=; b=MDfIl6HdjDEsjKTA
	tIIlW/N3jzg/48NtZkbyNDN+H2lWX0LKBPDDBLngsTaej8jXMCvZYrdM02I4q2HB
	Bro1kChIot0xsCftvozlLdZEBHKmys7U5WwfXrDfxoffrhXthkTnREyM7JLGVGtk
	szIEbk66BlTvE1U1m3vgwIzjxNlB16lW9IMRwqWtib9VH9GesYnczx5JLjZONrCF
	8NhsZ7UFLZ7c8ehnPfLu2a33u+LY30tXacAc1hc9zI2JdjbuBSVurQhw6iI85w9L
	AOyhhBzs+xZvXP41MH7nXwywcHLu8Qzn7QYlSi52CqWzcH7DMx/4ZjPicKwecBkB
	hhmE0w==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 419pv0jcnm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 30 Aug 2024 23:13:15 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 47UNDEDt017364
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 30 Aug 2024 23:13:14 GMT
Received: from [10.253.38.97] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Fri, 30 Aug
 2024 16:13:11 -0700
Message-ID: <6fcaa893-70a4-44f4-afc0-853799e30774@quicinc.com>
Date: Sat, 31 Aug 2024 07:13:07 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] phy: add NXP PTN3222 eUSB2 to USB2 redriver
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Vinod Koul
	<vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring
	<robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: Konrad Dybcio <konradybcio@kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-msm@vger.kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20240830-nxp-ptn3222-v2-0-4c6d8535cf6c@linaro.org>
 <20240830-nxp-ptn3222-v2-2-4c6d8535cf6c@linaro.org>
Content-Language: en-US
From: Song Xue <quic_songxue@quicinc.com>
In-Reply-To: <20240830-nxp-ptn3222-v2-2-4c6d8535cf6c@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: WWJ0CzUjtLPjLrp9_prHanja5M89npFi
X-Proofpoint-ORIG-GUID: WWJ0CzUjtLPjLrp9_prHanja5M89npFi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-30_12,2024-08-30_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 clxscore=1011
 priorityscore=1501 impostorscore=0 suspectscore=0 lowpriorityscore=0
 malwarescore=0 spamscore=0 mlxlogscore=999 mlxscore=0 bulkscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2407110000 definitions=main-2408300180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_161321_843772_5863CCE2 
X-CRM114-Status: GOOD (  26.65  )
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



On 8/30/2024 4:20 PM, Dmitry Baryshkov wrote:
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
> ---
>   drivers/phy/Kconfig           |  11 ++++
>   drivers/phy/Makefile          |   1 +
>   drivers/phy/phy-nxp-ptn3222.c | 123 ++++++++++++++++++++++++++++++++++++++++++
>   3 files changed, 135 insertions(+)
> 
> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> index dfab1c66b3e5..cb06a7f79740 100644
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -82,6 +82,17 @@ config PHY_AIROHA_PCIE
>   	  This driver create the basic PHY instance and provides initialize
>   	  callback for PCIe GEN3 port.
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
>   source "drivers/phy/allwinner/Kconfig"
>   source "drivers/phy/amlogic/Kconfig"
>   source "drivers/phy/broadcom/Kconfig"
> diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
> index 5fcbce5f9ab1..b64247046575 100644
> --- a/drivers/phy/Makefile
> +++ b/drivers/phy/Makefile
> @@ -11,6 +11,7 @@ obj-$(CONFIG_PHY_XGENE)			+= phy-xgene.o
>   obj-$(CONFIG_PHY_PISTACHIO_USB)		+= phy-pistachio-usb.o
>   obj-$(CONFIG_USB_LGM_PHY)		+= phy-lgm-usb.o
>   obj-$(CONFIG_PHY_AIROHA_PCIE)		+= phy-airoha-pcie.o
> +obj-$(CONFIG_PHY_NXP_PTN3222)		+= phy-nxp-ptn3222.o
>   obj-y					+= allwinner/	\
>   					   amlogic/	\
>   					   broadcom/	\
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
> +module_i2c_driver(ptn3222_driver)
> +
> +MODULE_DESCRIPTION("NXP PTN3222 eUSB2 Redriver driver");
> +MODULE_LICENSE("GPL");
> 
The I2C driver just realizes the function on reset and PWR. What about 
other I2C driver function like I2C interface operations, auto-suspend, 
remote wakeup, memory maps etc. Who will enable these? I think it is not 
incomplete I2C driver, if on someday, ptn3222 is used as I2C device.

Regards,
Song Xue


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

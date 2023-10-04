Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 079C3E7C4E2
	for <linux-phy@archiver.kernel.org>; Wed,  4 Oct 2023 17:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wDeUNIs4Om7YZfF6RNehR1G6E7Rye493xbgpykXzwik=; b=QCEs4CLvW3elZxHO1mtjE2eeFk
	/fGBPVgsdo1b/PxijtWUi7uNsgCDvTIQgy235jVSWFs3+pYtbC03r1BR+A9LL96+wNkedfpBHMT1n
	I9PrXux6/FwRbytWXvLLHlH55XoQA9gDgHXsPQ2qosf3nL7NZ0J28xdQsqK1XTJs8Y9JkEX+JVZn+
	9CPim4nTC0zmQFXCUVKkPElOKnqQ1lyAkEtC9noqnxrz6GB47WDEa6DMW+V4Unnxr2G//kcZ2a4QP
	IHMMMPmW2qUwR7w9vsRZLaF4Jh+Qq3JTT6aXijCXihiMJO00yTNpHRbqc144c0xD2u2kZVnI4EHHs
	wir/UUpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qo5fH-000b0C-2D;
	Wed, 04 Oct 2023 17:28:03 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qo5fE-000ayz-0K
	for linux-phy@lists.infradead.org;
	Wed, 04 Oct 2023 17:28:02 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-99c3d3c3db9so10945066b.3
        for <linux-phy@lists.infradead.org>; Wed, 04 Oct 2023 10:27:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696440477; x=1697045277; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EsMX9IBFw4KgDI0eQ/LM4jZAEEAU2sAB7Cpb6RK7TbE=;
        b=PTn+Nw6uoP3cNxf+HLsT31lebTUhnIoDpAZv804r8nBSt9pOUxq68+n7HS8j5rxPHZ
         0dTaPqFgaBPh9EGd4ORi2ajDUljQrBVQpUMMRKcO6zLdXZUi5zhCH/iGfKItOYA6Y1O+
         Vs//JQqeoMPTqk0oozLgqU1FB0HMuz+tRtWksO2B/v2tsAfzGCaAbm2YTqlT4q2Y3V3C
         CCOZ1rKCUpFB13RB99IUhMC/XHQJ/s9ganpzXU+QrayoLlOJ8R7/ymFLwrIzyW40nvex
         J/v5ipU8chmfxgmK8DPZPD7lAOpDNjxQUAnC8DVay9fhjWLU9gm5SKJH0sE82Es8PzKA
         LJQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696440477; x=1697045277;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EsMX9IBFw4KgDI0eQ/LM4jZAEEAU2sAB7Cpb6RK7TbE=;
        b=N2/NFieu3oYaI0X4fTFK2jWhKT1bncYRVs2bZr2g5fRWLpTYsaJ1l/cKEA10W2VHbw
         gsGhELr2tCOHa08nSqBRo738B8Bi3377R7AZiCbcM6tetHjphr8m7XUBt22lWQpigp77
         lWUMX/Dt84DEt7MSDF0pQaJruqiNTz5Qq7z6pAOUP2LCd5saRt3MegVobDVBW+wRr3aS
         +iR+oovnr/dipmrBtbr5sY4dxEAN6xosSappdA4XH3F1hwQMhziwGqGgZ6qjYXQwxz2s
         jBJ4QxSX6/lg30/ZJVKiX3ufj9yrBzqxZ9yZypKY6TsqkbsO3ZEXb2RbhRqKJOg2qd1F
         LqFg==
X-Gm-Message-State: AOJu0YyK6NAsLSkML/KvemPdxRSpg6/qazjuq4bdNHR+ujSXI4leAs64
	qaOJGGxpzWfHdmBd4grTWCc=
X-Google-Smtp-Source: AGHT+IFEFkjlfQG7xX2bTBIMiWf6ngQGjUKpZP8xK/2H/0CKSmPQk10YFu3Cqq8RyuqMBscl5VFMIg==
X-Received: by 2002:a17:906:7389:b0:9ae:406c:3420 with SMTP id f9-20020a170906738900b009ae406c3420mr2351151ejl.30.1696440477236;
        Wed, 04 Oct 2023 10:27:57 -0700 (PDT)
Received: from [192.168.3.32] (cpezg-94-253-131-161-cbl.xnet.hr. [94.253.131.161])
        by smtp.gmail.com with ESMTPSA id uz5-20020a170907118500b0099cce6f7d50sm3123328ejb.64.2023.10.04.10.27.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Oct 2023 10:27:56 -0700 (PDT)
Message-ID: <32389b66-48f3-8ee8-e2f1-1613feed3cc7@gmail.com>
Date: Wed, 4 Oct 2023 19:27:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 3/6] phy: qcom: Introduce PCIe UNIPHY 28LP driver
To: Nitheesh Sekar <quic_nsekar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, lpieralisi@kernel.org,
 kw@linux.com, robh@kernel.org, bhelgaas@google.com,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, vkoul@kernel.org,
 kishon@kernel.org, mani@kernel.org, p.zabel@pengutronix.de,
 quic_srichara@quicinc.com, quic_varada@quicinc.com,
 quic_ipkumar@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20231003120846.28626-1-quic_nsekar@quicinc.com>
 <20231003120846.28626-4-quic_nsekar@quicinc.com>
Content-Language: en-US
From: Robert Marko <robimarko@gmail.com>
In-Reply-To: <20231003120846.28626-4-quic_nsekar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_102800_153220_5462DB01 
X-CRM114-Status: GOOD (  36.15  )
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


On 03. 10. 2023. 14:08, Nitheesh Sekar wrote:
> Add Qualcomm PCIe UNIPHY 28LP driver support present
> in Qualcomm IPQ5018 SoC and the phy init sequence.
>
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> ---
>   drivers/phy/qualcomm/Kconfig                  |  12 +
>   drivers/phy/qualcomm/Makefile                 |   1 +
>   .../phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c  | 336 ++++++++++++++++++
>   3 files changed, 349 insertions(+)
>   create mode 100644 drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c
>
> diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
> index d891058b7c39..b7d37cd98f02 100644
> --- a/drivers/phy/qualcomm/Kconfig
> +++ b/drivers/phy/qualcomm/Kconfig
> @@ -154,6 +154,18 @@ config PHY_QCOM_M31_USB
>   	  management. This driver is required even for peripheral only or
>   	  host only mode configurations.
>   
> +config PHY_QCOM_UNIPHY_PCIE_28LP
> +	bool "PCIE UNIPHY 28LP PHY driver"
> +	depends on ARCH_QCOM
> +	depends on HAS_IOMEM
> +	depends on OF
> +	select GENERIC_PHY
> +	help
> +	  Enable this to support the PCIe UNIPHY 28LP phy transceiver that
> +	  is used with PCIe controllers on Qualcomm IPQ5018 chips. It
> +	  handles PHY initialization, clock management required after
> +	  resetting the hardware and power management.
> +
>   config PHY_QCOM_USB_HS
>   	tristate "Qualcomm USB HS PHY module"
>   	depends on USB_ULPI_BUS
> diff --git a/drivers/phy/qualcomm/Makefile b/drivers/phy/qualcomm/Makefile
> index ffd609ac6233..31105cd17bc9 100644
> --- a/drivers/phy/qualcomm/Makefile
> +++ b/drivers/phy/qualcomm/Makefile
> @@ -17,6 +17,7 @@ obj-$(CONFIG_PHY_QCOM_QMP_USB_LEGACY)	+= phy-qcom-qmp-usb-legacy.o
>   obj-$(CONFIG_PHY_QCOM_QUSB2)		+= phy-qcom-qusb2.o
>   obj-$(CONFIG_PHY_QCOM_SNPS_EUSB2)	+= phy-qcom-snps-eusb2.o
>   obj-$(CONFIG_PHY_QCOM_EUSB2_REPEATER)	+= phy-qcom-eusb2-repeater.o
> +obj-$(CONFIG_PHY_QCOM_UNIPHY_PCIE_28LP)	+= phy-qcom-uniphy-pcie-28lp.o
>   obj-$(CONFIG_PHY_QCOM_USB_HS) 		+= phy-qcom-usb-hs.o
>   obj-$(CONFIG_PHY_QCOM_USB_HSIC) 	+= phy-qcom-usb-hsic.o
>   obj-$(CONFIG_PHY_QCOM_USB_HS_28NM)	+= phy-qcom-usb-hs-28nm.o
> diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c b/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c
> new file mode 100644
> index 000000000000..5ef6ae7276cf
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c
> @@ -0,0 +1,336 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (c) 2023, The Linux Foundation. All rights reserved.
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/clk-provider.h>
> +#include <linux/err.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/phy/phy.h>
> +#include <linux/reset.h>
> +#include <linux/of_device.h>
> +#include <linux/delay.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/regmap.h>
> +
> +#define PIPE_CLK_DELAY_MIN_US			5000
> +#define PIPE_CLK_DELAY_MAX_US			5100
> +#define CDR_CTRL_REG_1		0x80
> +#define CDR_CTRL_REG_2		0x84
> +#define CDR_CTRL_REG_3		0x88
> +#define CDR_CTRL_REG_4		0x8C
> +#define CDR_CTRL_REG_5		0x90
> +#define CDR_CTRL_REG_6		0x94
> +#define CDR_CTRL_REG_7		0x98
> +#define SSCG_CTRL_REG_1		0x9c
> +#define SSCG_CTRL_REG_2		0xa0
> +#define SSCG_CTRL_REG_3		0xa4
> +#define SSCG_CTRL_REG_4		0xa8
> +#define SSCG_CTRL_REG_5		0xac
> +#define SSCG_CTRL_REG_6		0xb0
> +#define PCS_INTERNAL_CONTROL_2	0x2d8
> +
> +#define PHY_MODE_FIXED		0x1
> +
> +enum qcom_uniphy_pcie_type {
> +	PHY_TYPE_PCIE = 1,
> +	PHY_TYPE_PCIE_GEN2,
> +	PHY_TYPE_PCIE_GEN3,
> +};
> +
> +struct uniphy_regs {
> +	unsigned int offset;
> +	unsigned int val;
> +};
> +
> +struct uniphy_pcie_data {
> +	int lanes;
> +	/* 2nd lane offset */
> +	int lane_offset;
> +	unsigned int phy_type;
> +	const struct uniphy_regs *init_seq;
> +	unsigned int init_seq_num;
> +};
> +
> +struct qcom_uniphy_pcie {
> +	struct phy phy;
> +	struct device *dev;
> +	const struct uniphy_pcie_data *data;
> +	struct clk_bulk_data *clks;
> +	int num_clks;
> +	struct reset_control *resets;
> +	void __iomem *base;
> +};
> +
> +#define	phy_to_dw_phy(x)	container_of((x), struct qca_uni_pcie_phy, phy)
> +
> +static const struct uniphy_regs ipq5018_regs[] = {
> +	{
> +		.offset = SSCG_CTRL_REG_4,
> +		.val = 0x1cb9,
> +	},
> +	{
> +		.offset = SSCG_CTRL_REG_5,
> +		.val = 0x023a,
> +	},
> +	{
> +		.offset = SSCG_CTRL_REG_3,
> +		.val = 0xd360,
> +	},
> +	{
> +		.offset = SSCG_CTRL_REG_1,
> +		.val = 0x1,
> +	},
> +	{
> +		.offset = SSCG_CTRL_REG_2,
> +		.val = 0xeb,
> +	},
> +	{
> +		.offset = CDR_CTRL_REG_4,
> +		.val = 0x3f9,
> +	},
> +	{
> +		.offset = CDR_CTRL_REG_5,
> +		.val = 0x1c9,
> +	},
> +	{
> +		.offset = CDR_CTRL_REG_2,
> +		.val = 0x419,
> +	},
> +	{
> +		.offset = CDR_CTRL_REG_1,
> +		.val = 0x200,
> +	},
> +	{
> +		.offset = PCS_INTERNAL_CONTROL_2,
> +		.val = 0xf101,
> +	},
> +};
> +
> +static const struct uniphy_pcie_data ipq5018_2x2_data = {
> +	.lanes		= 2,
> +	.lane_offset	= 0x800,
> +	.phy_type	= PHY_TYPE_PCIE_GEN2,
> +	.init_seq	= ipq5018_regs,
> +	.init_seq_num	= ARRAY_SIZE(ipq5018_regs),
> +};
> +
> +static void qcom_uniphy_pcie_init(struct qcom_uniphy_pcie *phy)
> +{
> +	const struct uniphy_pcie_data *data = phy->data;
> +	const struct uniphy_regs *init_seq;
> +	void __iomem *base = phy->base;
> +	int lane = 0;
> +	int i;
> +
> +	while (lane != data->lanes) {
> +		init_seq = data->init_seq;
> +
> +		for (i = 0; i < data->init_seq_num; i++, init_seq++)
> +			writel(init_seq->val, base + init_seq->offset);
> +
> +		if (data->lanes == 2)
> +			base = base + data->lane_offset;
> +
> +		lane++;
> +	}
> +}
> +
> +static int qcom_uniphy_pcie_power_off(struct phy *x)
> +{
> +	struct qcom_uniphy_pcie *phy = phy_get_drvdata(x);
> +
> +	reset_control_assert(phy->resets);
> +
> +	clk_bulk_disable_unprepare(phy->num_clks, phy->clks);
> +
> +	return 0;
> +}
> +
> +static int qcom_uniphy_pcie_power_on(struct phy *x)
> +{
> +	int ret;
> +	struct qcom_uniphy_pcie *phy = phy_get_drvdata(x);
> +
> +	ret = reset_control_assert(phy->resets);
> +	if (ret) {
> +		dev_err(phy->dev, "reset assert failed (%d)\n", ret);
> +		return ret;
> +	}
> +
> +	/*
> +	 * Delay periods before and after reset deassert are working values
> +	 * from downstream Codeaurora kernel
> +	 */
> +	usleep_range(100, 150);
> +
> +	ret = reset_control_deassert(phy->resets);
> +	if (ret) {
> +		dev_err(phy->dev, "reset deassert failed (%d)\n", ret);
> +		return ret;
> +	}
> +
> +	usleep_range(PIPE_CLK_DELAY_MIN_US, PIPE_CLK_DELAY_MAX_US);
> +
> +	ret = clk_bulk_prepare_enable(phy->num_clks, phy->clks);
> +	if (ret) {
> +		dev_err(phy->dev, "clk prepare and enable failed %d\n", ret);
> +		return ret;
> +	}
> +
> +	usleep_range(30, 50);
> +
> +	qcom_uniphy_pcie_init(phy);
> +	return 0;
> +}
> +
> +static int qcom_uniphy_pcie_get_resources(struct platform_device *pdev,
> +					  struct qcom_uniphy_pcie *phy)
> +{
> +	struct resource *res;
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	phy->base = devm_ioremap_resource(phy->dev, res);
> +	if (IS_ERR(phy->base)) {
> +		dev_err(phy->dev, "cannot get phy registers\n");
> +		return PTR_ERR(phy->base);
> +	}
> +
> +	phy->num_clks = devm_clk_bulk_get_all(phy->dev, &phy->clks);
> +	if (phy->num_clks < 0)
> +		return phy->num_clks;
> +
> +	phy->resets = devm_reset_control_array_get_exclusive(phy->dev);
> +	if (IS_ERR(phy->resets))
> +		return PTR_ERR(phy->resets);
> +
> +	return 0;
> +}
> +
> +/*
> + * Register a fixed rate pipe clock.
> + *
> + * The <s>_pipe_clksrc generated by PHY goes to the GCC that gate
> + * controls it. The <s>_pipe_clk coming out of the GCC is requested
> + * by the PHY driver for its operations.
> + * We register the <s>_pipe_clksrc here. The gcc driver takes care
> + * of assigning this <s>_pipe_clksrc as parent to <s>_pipe_clk.
> + * Below picture shows this relationship.
> + *
> + *         +---------------+
> + *         |   PHY block   |<<---------------------------------------+
> + *         |               |                                         |
> + *         |   +-------+   |                   +-----+               |
> + *   I/P---^-->|  PLL  |---^--->pipe_clksrc--->| GCC |--->pipe_clk---+
> + *    clk  |   +-------+   |                   +-----+
> + *         +---------------+
> + */
> +static int phy_pipe_clk_register(struct qcom_uniphy_pcie  *phy,
> +				 struct device_node *np)
> +{
> +	struct clk_fixed_rate *fixed;
> +	struct clk_init_data init = { };
> +	int ret;
> +
> +	ret = of_property_read_string(np, "clock-output-names", &init.name);
> +	if (ret) {
> +		dev_err(phy->dev, "%pOFn: No clock-output-names\n", np);
> +		return ret;
> +	}
> +
> +	fixed = devm_kzalloc(phy->dev, sizeof(*fixed), GFP_KERNEL);
> +	if (!fixed)
> +		return -ENOMEM;
> +
> +	init.ops = &clk_fixed_rate_ops;
> +	fixed->fixed_rate = 125000000;
> +	fixed->hw.init = &init;
> +
> +	ret = devm_clk_hw_register(phy->dev, &fixed->hw);
> +	if (ret)
> +		return ret;
> +
> +	ret = devm_of_clk_add_hw_provider(phy->dev, of_clk_hw_simple_get,
> +					  &fixed->hw);
> +	if (ret)
> +		return ret;
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id qcom_uniphy_pcie_id_table[] = {
> +	{
> +		.compatible = "qcom,ipq5018-uniphy-pcie-gen2x2",
> +		.data = &ipq5018_2x2_data,

Hi, did you also forget the single lane PHY?
As you have the "qcom,ipq5018-uniphy-pcie-gen2x1" compatible used later 
in the DTS
but its not implemented in the driver at all.

Regards,
Robert

> +	},
> +	{ /* Sentinel */ },
> +};
> +MODULE_DEVICE_TABLE(of, qcom_uniphy_pcie_id_table);
> +
> +static const struct phy_ops pcie_ops = {
> +	.power_on	= qcom_uniphy_pcie_power_on,
> +	.power_off	= qcom_uniphy_pcie_power_off,
> +	.owner          = THIS_MODULE,
> +};
> +
> +static int qcom_uniphy_pcie_probe(struct platform_device *pdev)
> +{
> +	struct qcom_uniphy_pcie *phy;
> +	int ret;
> +	struct phy *generic_phy;
> +	struct phy_provider *phy_provider;
> +	struct device *dev = &pdev->dev;
> +	struct device_node *np = of_node_get(dev->of_node);
> +
> +	phy = devm_kzalloc(&pdev->dev, sizeof(*phy), GFP_KERNEL);
> +	if (!phy)
> +		return -ENOMEM;
> +
> +	platform_set_drvdata(pdev, phy);
> +	phy->dev = &pdev->dev;
> +
> +	phy->data = of_device_get_match_data(dev);
> +	if (!phy->data)
> +		return -EINVAL;
> +
> +	ret = qcom_uniphy_pcie_get_resources(pdev, phy);
> +	if (ret < 0) {
> +		dev_err(&pdev->dev, "failed to get resources: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = phy_pipe_clk_register(phy, np);
> +	if (ret)
> +		dev_err(&pdev->dev, "failed to register phy pipe clk\n");
> +
> +	generic_phy = devm_phy_create(phy->dev, NULL, &pcie_ops);
> +	if (IS_ERR(generic_phy))
> +		return PTR_ERR(generic_phy);
> +
> +	phy_set_drvdata(generic_phy, phy);
> +	phy_provider = devm_of_phy_provider_register(phy->dev,
> +						     of_phy_simple_xlate);
> +	if (IS_ERR(phy_provider))
> +		return PTR_ERR(phy_provider);
> +
> +	return 0;
> +}
> +
> +static struct platform_driver qcom_uniphy_pcie_driver = {
> +	.probe		= qcom_uniphy_pcie_probe,
> +	.driver		= {
> +		.name	= "qcom-uniphy-pcie",
> +		.owner	= THIS_MODULE,
> +		.of_match_table = qcom_uniphy_pcie_id_table,
> +	},
> +};
> +
> +module_platform_driver(qcom_uniphy_pcie_driver);
> +
> +MODULE_ALIAS("platform:qcom-uniphy-pcie");
> +MODULE_LICENSE("Dual BSD/GPL");
> +MODULE_DESCRIPTION("PCIE QCOM UNIPHY driver");

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

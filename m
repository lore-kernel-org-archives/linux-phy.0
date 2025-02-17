Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F1DCC021A0
	for <linux-phy@archiver.kernel.org>; Mon, 17 Feb 2025 09:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RhvXGNtEVknzKX3GUBlUIwL5m4zbCCHGwVqlFywGNWU=; b=1XKZ/FET73U5OD
	3OJYmHJEWgtsLxvNlPUhGzCsO04Wquz528Def1Q/cDB7h72NfVTRQlio2bdS/Bdo0a/P0kAeo7WI6
	HwcmGObvE63Fe4sU3Ok79piLn0xP5GY13X+MlQypaYPY9HC4h8yeL2zgRXzZyebgGTvlh6X0czUF7
	/NX4TdgDL8AN6YPkjHi096+KyCbbK/D76UZNhX3c1tVivP6+IgyCJlhBkTqEl1RC4e0fDEqRJFZmj
	83YHv6L4m381U+1fATCYD7LtFev5wnv9tOqMUOn6CU2YF8ViF8GpmpaIjURt7Yz5zBD5gRf3lDOlt
	srPERHG9TJRyqHfknsKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjxpS-000000040RX-3rgL;
	Mon, 17 Feb 2025 09:54:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjxW2-00000003wfM-0Xgp
	for linux-phy@lists.infradead.org;
	Mon, 17 Feb 2025 09:34:15 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51H036n5026269;
	Mon, 17 Feb 2025 09:34:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=bTT1udo7Ss15SkpoSjaq6CeZ
	ze/CgDhLufqLoPVSIrs=; b=gal4Ok6t1p99897yCX+WkTmLthf2t5EaO6ERkYWn
	+1gJTnVnXSRYG2WZwOOfAWSju3811BlJwLmHpE2pcHSBoJpJJE3c3gYqSQ+kJl4W
	x138mqRAhfXCG45JkVb4jcQSBkc5RK5wNjddaCTpcViE3K2auDdSXCRmuCmGbZ0n
	V+NGxr+7hlVCjP0ke7G4MtvJZVwakBkZyuouNmfDqgxddmEQ7dPII5uBzK31HSvR
	TkLEZx0VVll1kDPKfB7ocN2JutgF3tZXMQ20yx1x0W5AQ4+bCcVrggOnFUiPEu3M
	dNbc9ucJnlB1orxyY7dDsPr69QwZ0i+i79jJxkx8l26UfA==
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44ut7ts6ct-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 17 Feb 2025 09:34:06 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 51H9Y5IU026510
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 17 Feb 2025 09:34:05 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 17 Feb 2025 01:34:00 -0800
Date: Mon, 17 Feb 2025 15:03:56 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>
CC: <lpieralisi@kernel.org>, <kw@linux.com>,
        <manivannan.sadhasivam@linaro.org>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <kishon@kernel.org>, <andersson@kernel.org>, <konradybcio@kernel.org>,
        <p.zabel@pengutronix.de>, <quic_nsekar@quicinc.com>,
        <dmitry.baryshkov@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: Re: [PATCH v10 2/7] phy: qcom: Introduce PCIe UNIPHY 28LP driver
Message-ID: <Z7MChDND+iClDNES@hu-varada-blr.qualcomm.com>
References: <20250206121803.1128216-1-quic_varada@quicinc.com>
 <20250206121803.1128216-3-quic_varada@quicinc.com>
 <Z64xQcgHIgAEzKFb@vaman>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z64xQcgHIgAEzKFb@vaman>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: qCcKIMzvmHSgb8rj8p9l_jjFJLBf1MfV
X-Proofpoint-GUID: qCcKIMzvmHSgb8rj8p9l_jjFJLBf1MfV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-17_04,2025-02-13_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501 mlxscore=0
 malwarescore=0 impostorscore=0 clxscore=1015 phishscore=0 adultscore=0
 spamscore=0 mlxlogscore=999 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2501170000
 definitions=main-2502170083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_013414_286889_BEB50B4C 
X-CRM114-Status: GOOD (  24.41  )
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

On Thu, Feb 13, 2025 at 11:22:01PM +0530, Vinod Koul wrote:
[ . . .]

> > +static const struct qcom_uniphy_pcie_data ipq5332_data = {
> > +	.lane_offset	= 0x800,
> > +	.phy_type	= PHY_TYPE_PCIE_GEN3,
> > +	.init_seq	= ipq5332_regs,
> > +	.init_seq_num	= ARRAY_SIZE(ipq5332_regs),
> > +	.pipe_clk_rate	= 250000000,
>
> can be written as 250 * MEGA

Ok.

[ . . .]

> > +/*
> > + * Register a fixed rate pipe clock.
> > + *
> > + * The <s>_pipe_clksrc generated by PHY goes to the GCC that gate
> > + * controls it. The <s>_pipe_clk coming out of the GCC is requested
> > + * by the PHY driver for its operations.
> > + * We register the <s>_pipe_clksrc here. The gcc driver takes care
> > + * of assigning this <s>_pipe_clksrc as parent to <s>_pipe_clk.
> > + * Below picture shows this relationship.
> > + *
> > + *         +---------------+
> > + *         |   PHY block   |<<---------------------------------------+
> > + *         |               |                                         |
> > + *         |   +-------+   |                   +-----+               |
> > + *   I/P---^-->|  PLL  |---^--->pipe_clksrc--->| GCC |--->pipe_clk---+
> > + *    clk  |   +-------+   |                   +-----+
> > + *         +---------------+
> > + */
> > +static inline int phy_pipe_clk_register(struct qcom_uniphy_pcie *phy, int id)
> > +{
> > +	const struct qcom_uniphy_pcie_data *data = phy->data;
> > +	struct clk_hw *hw;
> > +	char name[64];
> > +
> > +	snprintf(name, sizeof(name), "phy%d_pipe_clk_src", id);
> > +	hw = devm_clk_hw_register_fixed_rate(phy->dev, name, NULL, 0,
> > +					     data->pipe_clk_rate);
> > +	if (IS_ERR(hw))
> > +		return dev_err_probe(phy->dev, PTR_ERR(hw),
> > +				     "Unable to register %s\n", name);
> > +
> > +	return devm_of_clk_add_hw_provider(phy->dev, of_clk_hw_simple_get, hw);
> > +}
> > +
> > +static const struct of_device_id qcom_uniphy_pcie_id_table[] = {
> > +	{
> > +		.compatible = "qcom,ipq5332-uniphy-pcie-phy",
> > +		.data = &ipq5332_data,
> > +	}, {
> > +		/* Sentinel */
> > +	},
> > +};
> > +MODULE_DEVICE_TABLE(of, qcom_uniphy_pcie_id_table);
> > +
> > +static const struct phy_ops pcie_ops = {
> > +	.power_on	= qcom_uniphy_pcie_power_on,
> > +	.power_off	= qcom_uniphy_pcie_power_off,
> > +	.owner          = THIS_MODULE,
> > +};
> > +
> > +static int qcom_uniphy_pcie_probe(struct platform_device *pdev)
> > +{
> > +	struct phy_provider *phy_provider;
> > +	struct device *dev = &pdev->dev;
> > +	struct qcom_uniphy_pcie *phy;
> > +	struct phy *generic_phy;
> > +	int ret;
> > +
> > +	phy = devm_kzalloc(&pdev->dev, sizeof(*phy), GFP_KERNEL);
> > +	if (!phy)
> > +		return -ENOMEM;
> > +
> > +	platform_set_drvdata(pdev, phy);
> > +	phy->dev = &pdev->dev;
> > +
> > +	phy->data = of_device_get_match_data(dev);
> > +	if (!phy->data)
> > +		return -EINVAL;
> > +
> > +	ret = of_property_read_u32(dev_of_node(dev), "num-lanes", &phy->lanes);
> > +	if (ret)
> > +		return dev_err_probe(dev, ret, "Couldn't read num-lanes\n");
> > +
> > +	ret = qcom_uniphy_pcie_get_resources(pdev, phy);
> > +	if (ret < 0)
> > +		return dev_err_probe(&pdev->dev, ret,
> > +				     "failed to get resources: %d\n", ret);
> > +
> > +	generic_phy = devm_phy_create(phy->dev, NULL, &pcie_ops);
> > +	if (IS_ERR(generic_phy))
> > +		return PTR_ERR(generic_phy);
> > +
> > +	phy_set_drvdata(generic_phy, phy);
> > +
> > +	ret = phy_pipe_clk_register(phy, generic_phy->id);
> > +	if (ret)
> > +		dev_err(&pdev->dev, "failed to register phy pipe clk\n");
> > +
> > +	phy_provider = devm_of_phy_provider_register(phy->dev,
> > +						     of_phy_simple_xlate);
> > +	if (IS_ERR(phy_provider))
> > +		return PTR_ERR(phy_provider);
>
> should we not unroll the pipe clk registration here?

Since it is a 'devm_' clk_hw_register_fixed_rate, wouldn't the devm
framework do the unregister?

	$ git diff
	diff --git a/drivers/clk/clk-fixed-rate.c b/drivers/clk/clk-fixed-rate.c
	index 6b4f76b9c4da..3fd1a12cc163 100644
	--- a/drivers/clk/clk-fixed-rate.c
	+++ b/drivers/clk/clk-fixed-rate.c
	@@ -58,6 +58,7 @@ static void
	devm_clk_hw_register_fixed_rate_release(struct device *dev, void *re
		 * the hw, resulting in double free. Just unregister the hw and
		 * let
		 * devres code kfree() it.
		 */
	+	printk("--> %s: %s\n", __func__, __clk_get_name(fix->hw.clk));
		clk_hw_unregister(&fix->hw);
	 }

	diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c
	b/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c
	index 311f98181177..9a8d8d9a7c2b 100644
	--- a/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c
	+++ b/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c
	@@ -267,6 +268,7 @@ static int qcom_uniphy_pcie_probe(struct
	platform_device *pdev)

		phy_provider = devm_of_phy_provider_register(phy->dev,
							     of_phy_simple_xlate);
	+	phy_provider = ERR_PTR(-EINVAL);
		if (IS_ERR(phy_provider))
			return PTR_ERR(phy_provider);

I forced an error here and saw that devm_clk_hw_register_fixed_rate_release
is getting called, which in turn calls clk_hw_unregister. Is that sufficient?
Or am i missing something.

Thanks
Varada

> > +
> > +	return 0;
> > +}

[ . . . ]

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

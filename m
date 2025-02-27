Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C335EC021BE
	for <linux-phy@archiver.kernel.org>; Thu, 27 Feb 2025 06:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jN4wqVkb3dYG+ttW83bblIOXMK1Pec5ltvbfJlwq5sI=; b=Rc1x7UUSSDF+j6
	J71eBufKKWMUZlpfdZMlnMAVUMN+qVt6S/OQhY3gK8qdmeclmZ/yFm1RzxST8cmfrTUZ7NlKOXjky
	6x+DCJa0TLwmy/e0jseZLyxIv/69XGQCr2pj1o9JTL2Rgk5AY3PlMXdoD30X76NGaBRJAcHQpHGXM
	nRzR4Rk2PzqsKhMOZj0q2Il9B9bmeRMhhmoaeFO1i1fAZ7vhUCZeisccNbnNiz+VNCOm0mugNX56l
	Ml5RkSqr1QiL8TELE/jB6LUHQy1NDRWKRuMvjt8i7L7Xq7Y8JcUPEyyAOlx9SLQOc4tt/2bCi7vTK
	V47CJAZXAEAWgbr1mTVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnX0J-00000006RcM-19Wq;
	Thu, 27 Feb 2025 06:04:15 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnWwg-00000006QtH-2cHj
	for linux-phy@lists.infradead.org;
	Thu, 27 Feb 2025 06:00:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 48A035C4673;
	Thu, 27 Feb 2025 05:59:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D976AC4CEDD;
	Thu, 27 Feb 2025 06:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740636029;
	bh=tRUaBjfQeJhK+q/8PKXwiUJCfypbozRNjwBfu7BchpY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WMJrpTBBQURZ3HaqKnlBxryXqMVZR/xjlhDc1PBJR9hEKzncjvOQA7FY9HHaQzP/d
	 phWfOj+N+1sK9JpXRQIkslQuZNXBzN0LSMORIWpyPRdynEIv+aUM7jtFFm4m76+l1x
	 +UAe0EtqgNsBm30m9XzXP1SsfG+71/dcvKSgqsrQdPoXMGMOtVGpjZCx85hl58mJtH
	 vAW2MbRkUvwzW9O1qM0vt12s2vPBVkJnEHpa3OKFjI2BCv+SFzpXppoVUn3vjZ81+3
	 rxjMS9svehUMC6bJlgJiFU4dwuFr7wgObypr86lbU78CUl5f+clfGUr8LVC2r8fd9u
	 +Ge8iPjFZAZSg==
Date: Thu, 27 Feb 2025 11:30:24 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org,
	robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org,
	conor+dt@kernel.org, kishon@kernel.org, andersson@kernel.org,
	konradybcio@kernel.org, p.zabel@pengutronix.de,
	quic_nsekar@quicinc.com, dmitry.baryshkov@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v10 2/7] phy: qcom: Introduce PCIe UNIPHY 28LP driver
Message-ID: <Z7//eDJZw2SNNc5Z@vaman>
References: <20250206121803.1128216-1-quic_varada@quicinc.com>
 <20250206121803.1128216-3-quic_varada@quicinc.com>
 <Z64xQcgHIgAEzKFb@vaman>
 <Z7MChDND+iClDNES@hu-varada-blr.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z7MChDND+iClDNES@hu-varada-blr.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_220030_750594_07F32AFF 
X-CRM114-Status: GOOD (  26.40  )
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

On 17-02-25, 15:03, Varadarajan Narayanan wrote:
> On Thu, Feb 13, 2025 at 11:22:01PM +0530, Vinod Koul wrote:
> [ . . .]
> 
> > > +static const struct qcom_uniphy_pcie_data ipq5332_data = {
> > > +	.lane_offset	= 0x800,
> > > +	.phy_type	= PHY_TYPE_PCIE_GEN3,
> > > +	.init_seq	= ipq5332_regs,
> > > +	.init_seq_num	= ARRAY_SIZE(ipq5332_regs),
> > > +	.pipe_clk_rate	= 250000000,
> >
> > can be written as 250 * MEGA
> 
> Ok.
> 
> [ . . .]
> 
> > > +/*
> > > + * Register a fixed rate pipe clock.
> > > + *
> > > + * The <s>_pipe_clksrc generated by PHY goes to the GCC that gate
> > > + * controls it. The <s>_pipe_clk coming out of the GCC is requested
> > > + * by the PHY driver for its operations.
> > > + * We register the <s>_pipe_clksrc here. The gcc driver takes care
> > > + * of assigning this <s>_pipe_clksrc as parent to <s>_pipe_clk.
> > > + * Below picture shows this relationship.
> > > + *
> > > + *         +---------------+
> > > + *         |   PHY block   |<<---------------------------------------+
> > > + *         |               |                                         |
> > > + *         |   +-------+   |                   +-----+               |
> > > + *   I/P---^-->|  PLL  |---^--->pipe_clksrc--->| GCC |--->pipe_clk---+
> > > + *    clk  |   +-------+   |                   +-----+
> > > + *         +---------------+
> > > + */
> > > +static inline int phy_pipe_clk_register(struct qcom_uniphy_pcie *phy, int id)
> > > +{
> > > +	const struct qcom_uniphy_pcie_data *data = phy->data;
> > > +	struct clk_hw *hw;
> > > +	char name[64];
> > > +
> > > +	snprintf(name, sizeof(name), "phy%d_pipe_clk_src", id);
> > > +	hw = devm_clk_hw_register_fixed_rate(phy->dev, name, NULL, 0,
> > > +					     data->pipe_clk_rate);
> > > +	if (IS_ERR(hw))
> > > +		return dev_err_probe(phy->dev, PTR_ERR(hw),
> > > +				     "Unable to register %s\n", name);
> > > +
> > > +	return devm_of_clk_add_hw_provider(phy->dev, of_clk_hw_simple_get, hw);
> > > +}
> > > +
> > > +static const struct of_device_id qcom_uniphy_pcie_id_table[] = {
> > > +	{
> > > +		.compatible = "qcom,ipq5332-uniphy-pcie-phy",
> > > +		.data = &ipq5332_data,
> > > +	}, {
> > > +		/* Sentinel */
> > > +	},
> > > +};
> > > +MODULE_DEVICE_TABLE(of, qcom_uniphy_pcie_id_table);
> > > +
> > > +static const struct phy_ops pcie_ops = {
> > > +	.power_on	= qcom_uniphy_pcie_power_on,
> > > +	.power_off	= qcom_uniphy_pcie_power_off,
> > > +	.owner          = THIS_MODULE,
> > > +};
> > > +
> > > +static int qcom_uniphy_pcie_probe(struct platform_device *pdev)
> > > +{
> > > +	struct phy_provider *phy_provider;
> > > +	struct device *dev = &pdev->dev;
> > > +	struct qcom_uniphy_pcie *phy;
> > > +	struct phy *generic_phy;
> > > +	int ret;
> > > +
> > > +	phy = devm_kzalloc(&pdev->dev, sizeof(*phy), GFP_KERNEL);
> > > +	if (!phy)
> > > +		return -ENOMEM;
> > > +
> > > +	platform_set_drvdata(pdev, phy);
> > > +	phy->dev = &pdev->dev;
> > > +
> > > +	phy->data = of_device_get_match_data(dev);
> > > +	if (!phy->data)
> > > +		return -EINVAL;
> > > +
> > > +	ret = of_property_read_u32(dev_of_node(dev), "num-lanes", &phy->lanes);
> > > +	if (ret)
> > > +		return dev_err_probe(dev, ret, "Couldn't read num-lanes\n");
> > > +
> > > +	ret = qcom_uniphy_pcie_get_resources(pdev, phy);
> > > +	if (ret < 0)
> > > +		return dev_err_probe(&pdev->dev, ret,
> > > +				     "failed to get resources: %d\n", ret);
> > > +
> > > +	generic_phy = devm_phy_create(phy->dev, NULL, &pcie_ops);
> > > +	if (IS_ERR(generic_phy))
> > > +		return PTR_ERR(generic_phy);
> > > +
> > > +	phy_set_drvdata(generic_phy, phy);
> > > +
> > > +	ret = phy_pipe_clk_register(phy, generic_phy->id);
> > > +	if (ret)
> > > +		dev_err(&pdev->dev, "failed to register phy pipe clk\n");
> > > +
> > > +	phy_provider = devm_of_phy_provider_register(phy->dev,
> > > +						     of_phy_simple_xlate);
> > > +	if (IS_ERR(phy_provider))
> > > +		return PTR_ERR(phy_provider);
> >
> > should we not unroll the pipe clk registration here?
> 
> Since it is a 'devm_' clk_hw_register_fixed_rate, wouldn't the devm
> framework do the unregister?
> 
> 	$ git diff
> 	diff --git a/drivers/clk/clk-fixed-rate.c b/drivers/clk/clk-fixed-rate.c
> 	index 6b4f76b9c4da..3fd1a12cc163 100644
> 	--- a/drivers/clk/clk-fixed-rate.c
> 	+++ b/drivers/clk/clk-fixed-rate.c
> 	@@ -58,6 +58,7 @@ static void
> 	devm_clk_hw_register_fixed_rate_release(struct device *dev, void *re
> 		 * the hw, resulting in double free. Just unregister the hw and
> 		 * let
> 		 * devres code kfree() it.
> 		 */
> 	+	printk("--> %s: %s\n", __func__, __clk_get_name(fix->hw.clk));
> 		clk_hw_unregister(&fix->hw);
> 	 }
> 
> 	diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c
> 	b/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c
> 	index 311f98181177..9a8d8d9a7c2b 100644
> 	--- a/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c
> 	+++ b/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c
> 	@@ -267,6 +268,7 @@ static int qcom_uniphy_pcie_probe(struct
> 	platform_device *pdev)
> 
> 		phy_provider = devm_of_phy_provider_register(phy->dev,
> 							     of_phy_simple_xlate);
> 	+	phy_provider = ERR_PTR(-EINVAL);
> 		if (IS_ERR(phy_provider))
> 			return PTR_ERR(phy_provider);
> 
> I forced an error here and saw that devm_clk_hw_register_fixed_rate_release
> is getting called, which in turn calls clk_hw_unregister. Is that sufficient?
> Or am i missing something.

I missed that internally this is devm_, this is fine

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

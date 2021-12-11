Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7CAAC433EF
	for <linux-phy@archiver.kernel.org>; Sat, 11 Dec 2021 03:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZCJTl8rJ/RL9bPeiscPXI4xWKE+43ZsXRcDA7kYQUOE=; b=W2oK13aVvqocsg
	m+lbuKuUIeWr8d6BULd2wCJGKs9++q3SAsGEydqThHVJAuOYyav+Qu/26Q8drdsVl9L7BoNVKAap7
	K9mVifyKxghPO+6iKt0YeQmfwUGxeOg3HU7lYWo5yBlPiz1hM3zufAGlzUhYv1FwG+nfru3fbj3wZ
	UZaE8o+oqKKzsHwToFzER6JVwE1Xb8OxbicoIJvnSvfyu4Ju+HI0XrnRatvMJ+3UvUg2INntcmqCE
	K/bBqSeKRGyxxC4NXYHEvhS0rSwyWjIIC7SJPUhk3JsWGk1srjsPg+lTqBb+dwM8O5F/yVAe+fHzW
	AhxjcqukAPVXgSG8VfaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvsju-004TKf-3H; Sat, 11 Dec 2021 03:07:58 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvsjr-004TJU-Md
 for linux-phy@lists.infradead.org; Sat, 11 Dec 2021 03:07:57 +0000
Received: by mail-pl1-x62b.google.com with SMTP id m24so7482481pls.10
 for <linux-phy@lists.infradead.org>; Fri, 10 Dec 2021 19:07:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=oz4rGmnSY/U0D1W4bE3rbc97m3xSWZffnTKmM/3z2Ag=;
 b=Zs+qTA+X2niuPQc3jq01NdOSFfAczRKys2TQkRCs/e64Fq2XlMkfBv7H5PZn9SpKE1
 6Y3+jNwv0AiARdtypJ/cigsJK9EwdBB4XDko2WKqLBBcK7XrXUX6dBAUbnLw60TPbNUC
 Z6tlxWcdyh4UjJ69fmwgIfsqaNf2SSMYEkvl7LBRUKh2Qn7k0sp409grJZEhXDrdMPzk
 D/ymGWp0KCD7/s+efdETQmKHdsVtO/PRz+OWLuzF2/zixxq5uRR4d50pLHyT+9i5/TnX
 JrLSA3l9lGlBDgGteBhBil/Z0Gb2VFyTBBBSVV8DVo2SSVnwLLPo/5diM0IdwDCYYorB
 Nzuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oz4rGmnSY/U0D1W4bE3rbc97m3xSWZffnTKmM/3z2Ag=;
 b=ewASncdbFbBcmMmT2bzd9S/HO9r6HKUFaD8O/OsMO3jryKctMppOgiK0/Lg41jgy7K
 5kbw+ueBJAnqX2dQ7LLp/pIUwQ4FvwIxmOKvtWVNXd5tEHAW5fGnxqReAB2y6vIInTmL
 i2ZE9b+BtD1vtVFEXcC5vQsmu88L5dariRUWHtgUq5rHW+/b2lo60CIMXApzAUoevVCc
 lgJdVTl+JqfCj2oBQHeOi2IXiCacG1VamYxGy+fyMBMoupmRmXKci2cQv4qsehhweqpY
 Hqkyb81NZZWI2mi8mpYrCAhDw0GyM9FoSIR6v9p9hTZlZ8sCQSzBRd+CgUc5V/g0lfrJ
 q6eQ==
X-Gm-Message-State: AOAM5336tTvS6IG0n73WpKP4SF5+6iIpMRd0nf/CLqcdX8sq3HB+VyMK
 QXKNf8o7zhBBNgzIji/61hYa
X-Google-Smtp-Source: ABdhPJxliJiccVKf26Fz5gWrn1TSho7W1A233c2UC574RlzazDU0ncYDSJsrMlskJXR+sr3pypl8Sw==
X-Received: by 2002:a17:90b:2502:: with SMTP id
 ns2mr28167086pjb.51.1639192073774; 
 Fri, 10 Dec 2021 19:07:53 -0800 (PST)
Received: from workstation ([202.21.42.75])
 by smtp.gmail.com with ESMTPSA id q190sm1018085pgq.38.2021.12.10.19.07.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 10 Dec 2021 19:07:53 -0800 (PST)
Date: Sat, 11 Dec 2021 08:37:48 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 06/10] PCI: qcom: Add SM8450 PCIe support
Message-ID: <20211211030748.GA21304@workstation>
References: <20211208171442.1327689-1-dmitry.baryshkov@linaro.org>
 <20211208171442.1327689-7-dmitry.baryshkov@linaro.org>
 <20211210113031.GF1734@thinkpad>
 <8d6c224b-b854-8d0e-8437-366b72dd4a83@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8d6c224b-b854-8d0e-8437-366b72dd4a83@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211210_190755_826181_011710B6 
X-CRM114-Status: GOOD (  26.69  )
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

On Sat, Dec 11, 2021 at 05:01:01AM +0300, Dmitry Baryshkov wrote:
> On 10/12/2021 14:30, Manivannan Sadhasivam wrote:
> > On Wed, Dec 08, 2021 at 08:14:38PM +0300, Dmitry Baryshkov wrote:
> > > On SM8450 platform PCIe hosts do not use all the clocks (and add several
> > > additional clocks), so expand the driver to handle these requirements.
> > > 
> > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > ---
> > >   drivers/pci/controller/dwc/pcie-qcom.c | 47 +++++++++++++++++++-------
> > >   1 file changed, 34 insertions(+), 13 deletions(-)
> > > 
> > > diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> > > index 803d3ac18c56..ada9c816395d 100644
> > > --- a/drivers/pci/controller/dwc/pcie-qcom.c
> > > +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> > > @@ -161,7 +161,7 @@ struct qcom_pcie_resources_2_3_3 {
> > >   /* 6 clocks typically, 7 for sm8250 */
> > >   struct qcom_pcie_resources_2_7_0 {
> > > -	struct clk_bulk_data clks[7];
> > > +	struct clk_bulk_data clks[9];
> > >   	int num_clks;
> > >   	struct regulator_bulk_data supplies[2];
> > >   	struct reset_control *pci_reset;
> > > @@ -196,7 +196,10 @@ struct qcom_pcie_cfg {
> > >   	const struct qcom_pcie_ops *ops;
> > >   	/* flags for ops 2.7.0 and 1.9.0 */
> > >   	unsigned int pipe_clk_need_muxing:1;
> > > +	unsigned int has_tbu_clk:1;
> > >   	unsigned int has_ddrss_sf_tbu_clk:1;
> > > +	unsigned int has_aggre0_clk:1;
> > > +	unsigned int has_aggre1_clk:1;
> > >   };
> > >   struct qcom_pcie {
> > > @@ -1147,6 +1150,7 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
> > >   	struct qcom_pcie_resources_2_7_0 *res = &pcie->res.v2_7_0;
> > >   	struct dw_pcie *pci = pcie->pci;
> > >   	struct device *dev = pci->dev;
> > > +	unsigned int idx;
> > 
> > u32?
> 
> Why? it's just a counter.
> 

Yeah but IMO using the kernel defined datatype is mostly preferred. This
is not touching any MMIO but still it is a good practice.

> > 
> > >   	int ret;
> > >   	res->pci_reset = devm_reset_control_get_exclusive(dev, "pci");
> > > @@ -1160,18 +1164,22 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
> > >   	if (ret)
> > >   		return ret;
> > > -	res->clks[0].id = "aux";
> > > -	res->clks[1].id = "cfg";
> > > -	res->clks[2].id = "bus_master";
> > > -	res->clks[3].id = "bus_slave";
> > > -	res->clks[4].id = "slave_q2a";
> > > -	res->clks[5].id = "tbu";
> > > -	if (pcie->cfg->has_ddrss_sf_tbu_clk) {
> > > -		res->clks[6].id = "ddrss_sf_tbu";
> > > -		res->num_clks = 7;
> > > -	} else {
> > > -		res->num_clks = 6;
> > > -	}
> > > +	idx = 0;
> > > +	res->clks[idx++].id = "aux";
> > > +	res->clks[idx++].id = "cfg";
> > > +	res->clks[idx++].id = "bus_master";
> > > +	res->clks[idx++].id = "bus_slave";
> > > +	res->clks[idx++].id = "slave_q2a";
> > > +	if (pcie->cfg->has_tbu_clk)
> > > +		res->clks[idx++].id = "tbu";
> > > +	if (pcie->cfg->has_ddrss_sf_tbu_clk)
> > > +		res->clks[idx++].id = "ddrss_sf_tbu";
> > > +	if (pcie->cfg->has_aggre0_clk)
> > > +		res->clks[idx++].id = "aggre0";
> > > +	if (pcie->cfg->has_aggre1_clk)
> > > +		res->clks[idx++].id = "aggre1";
> > > +
> > > +	res->num_clks = idx;
> > 
> > res->num_clks = idx + 1?
> 
> No. the idx is equal to the amount of clocks we added to the array, so this
> is correct.
> 

Oops, brain fade. Sorry, the usual post-increment confusion :) Ignore my
comment.

Thanks,
Mani

> > 
> > Thanks,
> > Mani
> > 
> > >   	ret = devm_clk_bulk_get(dev, res->num_clks, res->clks);
> > >   	if (ret < 0)
> > > @@ -1510,15 +1518,27 @@ static const struct qcom_pcie_cfg ipq4019_cfg = {
> > >   static const struct qcom_pcie_cfg sdm845_cfg = {
> > >   	.ops = &ops_2_7_0,
> > > +	.has_tbu_clk = true,
> > >   };
> > >   static const struct qcom_pcie_cfg sm8250_cfg = {
> > >   	.ops = &ops_1_9_0,
> > > +	.has_tbu_clk = true,
> > >   	.has_ddrss_sf_tbu_clk = true,
> > >   };
> > > +/* Only for the PCIe0! */
> > > +static const struct qcom_pcie_cfg sm8450_cfg = {
> > > +	.ops = &ops_1_9_0,
> > > +	.has_ddrss_sf_tbu_clk = true,
> > > +	.pipe_clk_need_muxing = true,
> > > +	.has_aggre0_clk = true,
> > > +	.has_aggre1_clk = true,
> > > +};
> > > +
> > >   static const struct qcom_pcie_cfg sc7280_cfg = {
> > >   	.ops = &ops_1_9_0,
> > > +	.has_tbu_clk = true,
> > >   	.pipe_clk_need_muxing = true,
> > >   };
> > > @@ -1626,6 +1646,7 @@ static const struct of_device_id qcom_pcie_match[] = {
> > >   	{ .compatible = "qcom,pcie-sdm845", .data = &sdm845_cfg },
> > >   	{ .compatible = "qcom,pcie-sm8250", .data = &sm8250_cfg },
> > >   	{ .compatible = "qcom,pcie-sc8180x", .data = &sm8250_cfg },
> > > +	{ .compatible = "qcom,pcie-sm8450", .data = &sm8450_cfg },
> > >   	{ .compatible = "qcom,pcie-sc7280", .data = &sc7280_cfg },
> > >   	{ }
> > >   };
> > > -- 
> > > 2.33.0
> > > 
> 
> 
> -- 
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

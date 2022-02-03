Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 409C6C433EF
	for <linux-phy@archiver.kernel.org>; Thu,  3 Feb 2022 17:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/2RFmb/6xKxpdVw9p76MHl1JEoJaT68v1qu3hkW5JiE=; b=fqooMfbWAo5gxS
	GfMC2yzUe51Wa/Tc8jHuElIH+dNJCRw42LIJsSoY6g1y1SkNKjsg8VA3eD5haB9rEK6//9k/p7f06
	pTeBgL+NXyJ1BNhmi0FfEN7ZtE7vvDQ12h9EdLjUnuv2wg8bw7d16JgwBC7PItZf0TGXWr8xPI9Ma
	L2qAmeQUQW4bEFqrvfVf6FMKtchEDsuEuIvQbFNEyFQHDMC2TqxlkbAS926PwqM8zujNb+glGp1Cm
	h0EbVQtBDZO8INjorBjB3OGUdhGKB/c80Fzrp/Sd1pCa+aIJs5YpHLNquNLN41APe6Br5u3g8Hw2i
	jFxNLi9BGrKXuvy7dGWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFfcI-0025SB-KG; Thu, 03 Feb 2022 17:09:54 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFfcE-0025Pv-NK
 for linux-phy@lists.infradead.org; Thu, 03 Feb 2022 17:09:52 +0000
Received: by mail-oi1-x22e.google.com with SMTP id m9so4979882oia.12
 for <linux-phy@lists.infradead.org>; Thu, 03 Feb 2022 09:09:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Dp+Q+BZVAFYUKDakoDDrpzKynjH1KfyR67RxEPsBMUQ=;
 b=X6RuS7hnFE8QuQc6ecdjMqJ+R578JtgLxsgVBJmE3PeHe8x5fQZXptZLzYUR+mDZvk
 ygetmkszh7JvJgXWgugdVCM/RRpYVmyOreWdafireVRIVW9FYuLhm9KoIisAIyvR6BEZ
 X2wKXoEJd34ewsB1/7COIOI9zdHY1lFPjh0O+iTOgztDukF6ZkkMEWC85znnOmHzqBnQ
 4jfb3aS/2pfRNHOlW6ZHBBNDOz/mVsY0sszrIENqPV6NHCRREZMQtoEOv0SDbO55VDnS
 xOpU2tFAFQA4vXhHZCTYwybTBQnLsmIZVMQfBflf77l4bvY89SdQqehmIPIsvUhURZLq
 a7Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Dp+Q+BZVAFYUKDakoDDrpzKynjH1KfyR67RxEPsBMUQ=;
 b=YM82ee9QWFqkDRGcuAQo7xZOFPya5LkKpJfVEiKKmNxhmuicVRL722IiAYwpT/Kbgq
 +hicNCW2gK7Vblra4tRJcHBdhY7UOpYLDZXOdlsXodYdfvhWT1S/jHNOT86rflyztsqj
 BSiOnosxaAJgVoeEJa8ky4IWOBgUOiR3HeF//LYKP4nXTGzS6wgIERkgK01H0dMo8MqQ
 lwp5muk13MO4aUfiijKEUUrKk5stODajEkHt+eIGD8P0I45q16AmNcLl8VJ31C2hp+GG
 7NMlfsStm/jvTFgE58hxi/gw0rKU4nRhWiPp6CRa/2vi7m5anDLgt/NxEp78JIU7VGP3
 eQRA==
X-Gm-Message-State: AOAM531nTJX7etfVjb4MA63gFp/FGSpY8ZmOyrvRZX8ZbYfte8yfXd5R
 vg5mznGuA4wpDit3tEu0r7vcGQ==
X-Google-Smtp-Source: ABdhPJwiW154TEn1eBOojokeZf7L7OXCy0vVk/5RBOHgj1iBKXRk6RDh1M6hqoXLB69JlzZ5h/czDw==
X-Received: by 2002:aca:eb03:: with SMTP id j3mr8143556oih.43.1643908189732;
 Thu, 03 Feb 2022 09:09:49 -0800 (PST)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
 by smtp.gmail.com with ESMTPSA id z4sm14340958ota.7.2022.02.03.09.09.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Feb 2022 09:09:49 -0800 (PST)
Date: Thu, 3 Feb 2022 09:10:06 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Wilczy??ski <kw@linux.com>, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 5/5] PCI: qcom: Add SM8450 PCIe support
Message-ID: <YfwMbqG6ovrPbDhx@ripper>
References: <20211218141024.500952-1-dmitry.baryshkov@linaro.org>
 <20211218141024.500952-6-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211218141024.500952-6-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220203_090950_817663_1A379970 
X-CRM114-Status: GOOD (  21.81  )
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

On Sat 18 Dec 06:10 PST 2021, Dmitry Baryshkov wrote:

> On SM8450 platform PCIe hosts do not use all the clocks (and add several
> additional clocks), so expand the driver to handle these requirements.
> 
> PCIe0 and PCIe1 hosts use different sets of clocks, so separate entries
> are required.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 57 ++++++++++++++++++++------
>  1 file changed, 44 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index 55ac3caa6d7d..fe6ed1e0415a 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -161,7 +161,7 @@ struct qcom_pcie_resources_2_3_3 {
>  
>  /* 6 clocks typically, 7 for sm8250 */
>  struct qcom_pcie_resources_2_7_0 {
> -	struct clk_bulk_data clks[7];
> +	struct clk_bulk_data clks[9];
>  	int num_clks;
>  	struct regulator_bulk_data supplies[2];
>  	struct reset_control *pci_reset;
> @@ -193,7 +193,10 @@ struct qcom_pcie_ops {
>  struct qcom_pcie_cfg {
>  	const struct qcom_pcie_ops *ops;
>  	unsigned int pipe_clk_need_muxing:1;
> +	unsigned int has_tbu_clk:1;
>  	unsigned int has_ddrss_sf_tbu_clk:1;
> +	unsigned int has_aggre0_clk:1;
> +	unsigned int has_aggre1_clk:1;
>  };
>  
>  struct qcom_pcie {
> @@ -1117,6 +1120,7 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
>  	struct qcom_pcie_resources_2_7_0 *res = &pcie->res.v2_7_0;
>  	struct dw_pcie *pci = pcie->pci;
>  	struct device *dev = pci->dev;
> +	unsigned int idx;
>  	int ret;
>  
>  	res->pci_reset = devm_reset_control_get_exclusive(dev, "pci");
> @@ -1134,18 +1138,22 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
>  	if (ret)
>  		return ret;
>  
> -	res->clks[0].id = "aux";
> -	res->clks[1].id = "cfg";
> -	res->clks[2].id = "bus_master";
> -	res->clks[3].id = "bus_slave";
> -	res->clks[4].id = "slave_q2a";
> -	res->clks[5].id = "tbu";
> -	if (pcie->cfg->has_ddrss_sf_tbu_clk) {
> -		res->clks[6].id = "ddrss_sf_tbu";
> -		res->num_clks = 7;
> -	} else {
> -		res->num_clks = 6;
> -	}
> +	idx = 0;
> +	res->clks[idx++].id = "aux";
> +	res->clks[idx++].id = "cfg";
> +	res->clks[idx++].id = "bus_master";
> +	res->clks[idx++].id = "bus_slave";
> +	res->clks[idx++].id = "slave_q2a";
> +	if (pcie->cfg->has_tbu_clk)
> +		res->clks[idx++].id = "tbu";
> +	if (pcie->cfg->has_ddrss_sf_tbu_clk)
> +		res->clks[idx++].id = "ddrss_sf_tbu";
> +	if (pcie->cfg->has_aggre0_clk)
> +		res->clks[idx++].id = "aggre0";
> +	if (pcie->cfg->has_aggre1_clk)
> +		res->clks[idx++].id = "aggre1";
> +
> +	res->num_clks = idx;
>  
>  	ret = devm_clk_bulk_get(dev, res->num_clks, res->clks);
>  	if (ret < 0)
> @@ -1210,6 +1218,9 @@ static int qcom_pcie_init_2_7_0(struct qcom_pcie *pcie)
>  		goto err_disable_clocks;
>  	}
>  
> +	/* Wait for reset to complete, required on SM8450 */
> +	usleep_range(1000, 1500);
> +
>  	/* configure PCIe to RC mode */
>  	writel(DEVICE_TYPE_RC, pcie->parf + PCIE20_PARF_DEVICE_TYPE);
>  
> @@ -1457,15 +1468,33 @@ static const struct qcom_pcie_cfg ipq4019_cfg = {
>  
>  static const struct qcom_pcie_cfg sdm845_cfg = {
>  	.ops = &ops_2_7_0,
> +	.has_tbu_clk = true,
>  };
>  
>  static const struct qcom_pcie_cfg sm8250_cfg = {
> +	.ops = &ops_1_9_0,
> +	.has_tbu_clk = true,
> +	.has_ddrss_sf_tbu_clk = true,
> +};
> +
> +static const struct qcom_pcie_cfg sm8450_pcie0_cfg = {
>  	.ops = &ops_1_9_0,
>  	.has_ddrss_sf_tbu_clk = true,
> +	.pipe_clk_need_muxing = true,
> +	.has_aggre0_clk = true,
> +	.has_aggre1_clk = true,
> +};
> +
> +static const struct qcom_pcie_cfg sm8450_pcie1_cfg = {
> +	.ops = &ops_1_9_0,
> +	.has_ddrss_sf_tbu_clk = true,
> +	.pipe_clk_need_muxing = true,
> +	.has_aggre1_clk = true,
>  };
>  
>  static const struct qcom_pcie_cfg sc7280_cfg = {
>  	.ops = &ops_1_9_0,
> +	.has_tbu_clk = true,
>  	.pipe_clk_need_muxing = true,
>  };
>  
> @@ -1564,6 +1593,8 @@ static const struct of_device_id qcom_pcie_match[] = {
>  	{ .compatible = "qcom,pcie-sdm845", .data = &sdm845_cfg },
>  	{ .compatible = "qcom,pcie-sm8250", .data = &sm8250_cfg },
>  	{ .compatible = "qcom,pcie-sc8180x", .data = &sm8250_cfg },
> +	{ .compatible = "qcom,pcie-sm8450-pcie0", .data = &sm8450_pcie0_cfg },
> +	{ .compatible = "qcom,pcie-sm8450-pcie1", .data = &sm8450_pcie1_cfg },
>  	{ .compatible = "qcom,pcie-sc7280", .data = &sc7280_cfg },
>  	{ }
>  };
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

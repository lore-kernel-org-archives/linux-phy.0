Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BC42C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 10 Dec 2021 11:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Gmg1zb6wiaKl14fAwW9+VhDgzk4mMDEQOpLPU6Gy6g=; b=hfFFZh4jrd9Oup
	wAPVjdsjOoBFt35ngW34Rk3taO3bgnB1PxXY4pH3QOmlgNs81fSVg3zFSUQPP27Q58Gdb597OAgOb
	f2s5AxUS4tXsZ7b3EB/oAmoAPa1DHh/Mg6zc3M/X5AZLKbIMtlVWGTXGlSToKQtkWyqs4l8XfjPfR
	FLvNI/Q2iOxRMB3s4I3XDlXALGHkdhN93ayzy81vIoOqxO8AoKnZ9NEzUP19/uAGqzpZRcfkTdzkd
	7jdWe0ofLBNBCGzDsCOEs0XuKZZ/xXpV0GkVB8ZYKnkZbj2QwmnYC8pg/3NWR01CBBoe4F0Gg8cf3
	gETJfPjT03kFVZs112qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mve6t-001g9G-IP; Fri, 10 Dec 2021 11:30:43 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mve6q-001g8G-Es
 for linux-phy@lists.infradead.org; Fri, 10 Dec 2021 11:30:42 +0000
Received: by mail-pl1-x62d.google.com with SMTP id m24so6067224pls.10
 for <linux-phy@lists.infradead.org>; Fri, 10 Dec 2021 03:30:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=mf7EFsdPh5sDDWteoiVVZdM8qPQLJMGyfkrlgZ74xeY=;
 b=HThkS3HbsJBlF2DX5Z9qMXGASrSSCSbcTk1HDtf+7uzIQ8lnNJaRWittq9kY0BQ4TS
 Oy478dfdZF1jGmL2kKwIM5QWccFEA0ekfRjvntK1nX+79MlXJbghKgBFqfQk5RwUrnhu
 WZbEVu2sAsLZR6bopF256YMXASTMBRY7Q5CFHuDYZXav6pBdgX7czSjFEGkJMkT6zLPU
 XXE8PlWukszoNseRcJMWrD2UbVtjUo7makUk43A+SS39uKWZHQ748QDzsh3y1JkqJK99
 uwrIo8SPDGAd4jJ5SM9DPuKy5kuT2pc0tOhUVjtyqsFCcAxrqIwSJ1D2l42NTA1ywLlc
 gv5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=mf7EFsdPh5sDDWteoiVVZdM8qPQLJMGyfkrlgZ74xeY=;
 b=xJFP9r2NIONrfP8qoQuJe6yQAIUzbfFe+QMbRsLw046siIo+tal+rbjrFnNYGh6G/y
 Tpx/xkhtopgc3W7Hzr6hYjJZC4kKVOGKGYa4NKt2DOSHic7aEqy6yk3q6LWXfkfPOk7X
 4XjL7mXQBWSImddQRpC/TyxCQHqdFk0nc19cmqffhItVt6+P3vcUOim0hCKI644syxFi
 WjbnJP2cvpF7rE8fZYO0QfLhcJdUvWRUZ3eggPZgDxzNNOdLnv+PIApT32lyg+tWqVyS
 AHkYwnIv9k01+3HNiOWGXRWmHGxakQP7LPRQ79iu5ZkBvLBDuLf9eQJ2Rs3eBjqt+2mS
 k77w==
X-Gm-Message-State: AOAM533Y7/jkq1xsG/FravNQOMtvTsbkBwsTHqBKTLF4sZxmaa9kVLmX
 k3ZlUenQU9kw0wUdbsSZGFYr
X-Google-Smtp-Source: ABdhPJzzW3+g14DNBEC2/eMHzu4q8zNdxPCQFcBzEoA9TpbXUIjeKvrwxO/S/qr8v/dl9cj1ngVgpw==
X-Received: by 2002:a17:90a:fd13:: with SMTP id
 cv19mr23371091pjb.54.1639135839629; 
 Fri, 10 Dec 2021 03:30:39 -0800 (PST)
Received: from thinkpad ([202.21.42.75])
 by smtp.gmail.com with ESMTPSA id a26sm2834527pfh.161.2021.12.10.03.30.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Dec 2021 03:30:39 -0800 (PST)
Date: Fri, 10 Dec 2021 17:00:31 +0530
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
Message-ID: <20211210113031.GF1734@thinkpad>
References: <20211208171442.1327689-1-dmitry.baryshkov@linaro.org>
 <20211208171442.1327689-7-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211208171442.1327689-7-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211210_033040_548923_335FB577 
X-CRM114-Status: GOOD (  21.67  )
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

On Wed, Dec 08, 2021 at 08:14:38PM +0300, Dmitry Baryshkov wrote:
> On SM8450 platform PCIe hosts do not use all the clocks (and add several
> additional clocks), so expand the driver to handle these requirements.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 47 +++++++++++++++++++-------
>  1 file changed, 34 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index 803d3ac18c56..ada9c816395d 100644
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
> @@ -196,7 +196,10 @@ struct qcom_pcie_cfg {
>  	const struct qcom_pcie_ops *ops;
>  	/* flags for ops 2.7.0 and 1.9.0 */
>  	unsigned int pipe_clk_need_muxing:1;
> +	unsigned int has_tbu_clk:1;
>  	unsigned int has_ddrss_sf_tbu_clk:1;
> +	unsigned int has_aggre0_clk:1;
> +	unsigned int has_aggre1_clk:1;
>  };
>  
>  struct qcom_pcie {
> @@ -1147,6 +1150,7 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
>  	struct qcom_pcie_resources_2_7_0 *res = &pcie->res.v2_7_0;
>  	struct dw_pcie *pci = pcie->pci;
>  	struct device *dev = pci->dev;
> +	unsigned int idx;

u32?

>  	int ret;
>  
>  	res->pci_reset = devm_reset_control_get_exclusive(dev, "pci");
> @@ -1160,18 +1164,22 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
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

res->num_clks = idx + 1?

Thanks,
Mani

>  
>  	ret = devm_clk_bulk_get(dev, res->num_clks, res->clks);
>  	if (ret < 0)
> @@ -1510,15 +1518,27 @@ static const struct qcom_pcie_cfg ipq4019_cfg = {
>  
>  static const struct qcom_pcie_cfg sdm845_cfg = {
>  	.ops = &ops_2_7_0,
> +	.has_tbu_clk = true,
>  };
>  
>  static const struct qcom_pcie_cfg sm8250_cfg = {
>  	.ops = &ops_1_9_0,
> +	.has_tbu_clk = true,
>  	.has_ddrss_sf_tbu_clk = true,
>  };
>  
> +/* Only for the PCIe0! */
> +static const struct qcom_pcie_cfg sm8450_cfg = {
> +	.ops = &ops_1_9_0,
> +	.has_ddrss_sf_tbu_clk = true,
> +	.pipe_clk_need_muxing = true,
> +	.has_aggre0_clk = true,
> +	.has_aggre1_clk = true,
> +};
> +
>  static const struct qcom_pcie_cfg sc7280_cfg = {
>  	.ops = &ops_1_9_0,
> +	.has_tbu_clk = true,
>  	.pipe_clk_need_muxing = true,
>  };
>  
> @@ -1626,6 +1646,7 @@ static const struct of_device_id qcom_pcie_match[] = {
>  	{ .compatible = "qcom,pcie-sdm845", .data = &sdm845_cfg },
>  	{ .compatible = "qcom,pcie-sm8250", .data = &sm8250_cfg },
>  	{ .compatible = "qcom,pcie-sc8180x", .data = &sm8250_cfg },
> +	{ .compatible = "qcom,pcie-sm8450", .data = &sm8450_cfg },
>  	{ .compatible = "qcom,pcie-sc7280", .data = &sc7280_cfg },
>  	{ }
>  };
> -- 
> 2.33.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

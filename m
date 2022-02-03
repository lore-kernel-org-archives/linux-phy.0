Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27FC6C433FE
	for <linux-phy@archiver.kernel.org>; Thu,  3 Feb 2022 15:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nbg07rEALzvoEzZ3umyVdww7rUsz18XZegTC+Ji3qis=; b=RBzAeRgoLXp7h+
	PrKiz3ubphPhJG/rnDTsUKfmSPWc7hLHLSeW5RJN0DSgWVRuZltOr7kJRRzSLl47sgI/vBPuoiBbr
	hyCrVDlrN+QssSUPPBPwIlatFTspftvHKXNCUOCOTtviyJfdR1ogXJmrKj+8cEnkzlCtIuMVHw0Je
	/+2uAEGR//aXEL6f+IUzuE5X401UYVYUbJ6sUx9nS//zq4nUKl24fxyla/IQj+60tmvKLFpyR+SzQ
	a5JspuYhGtUNZKHSgAxLuenUCiSlrQg9hCuzxLsMOQ6dsVyjfgBMWAMiEPC45lJJn87+dMbpR0ZzK
	FfiQh/y2VCRjKY32t3Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFeP9-001trE-Gj; Thu, 03 Feb 2022 15:52:15 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFeP6-001tq3-TZ
 for linux-phy@lists.infradead.org; Thu, 03 Feb 2022 15:52:14 +0000
Received: by mail-oi1-x234.google.com with SMTP id m9so4630086oia.12
 for <linux-phy@lists.infradead.org>; Thu, 03 Feb 2022 07:52:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=IyxXGrc+iIhiZuNi9X8+t5WRE74q00AdoMGIm2j9O3o=;
 b=iB0JsbPNF8EjQ9Pdapq9paPYO939BEI5+1vY/0kUKGtG+yHHCGUFI8DHmQ98BYGVxd
 90U85PWPBhRf7DxtPwkN+3+O/1nBspkpnJ3pyt3yn0kUXdozTr2k0WEcKrm/24gUy632
 Do19qYlWRhP1aaio1gi9jXwK4mZpNjJiOKRfbqKS9IdhxqovwnkgFBodeWG9ln5TVl7b
 oT+XRl0+ZNTlDwO0TBrubxGgeqOKoxYNmtV7R5yPscu3dB7t5mBmHtjliCmfxzq6rLIn
 kM9dHq6dPd3cqUQXdxnLDQl+sbtK2mI7cUOcKeeKwr+2VasFJrtdiV8vB3Xlod6NDwSZ
 9Euw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=IyxXGrc+iIhiZuNi9X8+t5WRE74q00AdoMGIm2j9O3o=;
 b=0f2GiWSeQUrxxeXUVLwTr41O/YjYK412yhRt5SEhVYc5PoDnpX3J0YE0CrGVTYFNHL
 +w7hWfTAIy4TdvmXGHAobn8eWGzpkKDZY2ldlTh2DjnZq49DFP3tY4THj0SgSL94hMXK
 HlP2c1WOQieB1nvYNN2jMVH5qh3FW1APpLdVSJ4LblBx0QSYv0LO2MySO1toNDuZOO6j
 14caAfjTureu5+KJhJntKzYJUILBDkcBCks1lXC0OAwaTsm5PeYloDC3AUnIs5z9pjvF
 2QiT1uHNEQ4LFWmZpWRt4iFFOBVMDJ3SZLlwU+lhV5MQiY8TFWlpunVv+yyJfJ+44z0p
 pSoQ==
X-Gm-Message-State: AOAM531C95j502M9P2Pi0MiTopDe1/8O2gi6onvqqeME92G0lTqfrvP6
 OgX/9kkhVX3JPIfITCj6K4c+Pg==
X-Google-Smtp-Source: ABdhPJzNNI9M8bwSEXYi9IuzmJMsfZ1cvFl8/Fe/mZngkR5s0GI7zU7B5eLyfjJ5JfzdmCbnKPga/g==
X-Received: by 2002:a05:6808:17a0:: with SMTP id
 bg32mr7766245oib.37.1643903530781; 
 Thu, 03 Feb 2022 07:52:10 -0800 (PST)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
 by smtp.gmail.com with ESMTPSA id p9sm203949oaq.42.2022.02.03.07.52.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Feb 2022 07:52:10 -0800 (PST)
Date: Thu, 3 Feb 2022 07:52:27 -0800
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
Subject: Re: [PATCH v5 3/5] PCI: qcom: Add ddrss_sf_tbu flag
Message-ID: <Yfv6Oyk19xonWX33@ripper>
References: <20211218141024.500952-1-dmitry.baryshkov@linaro.org>
 <20211218141024.500952-4-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211218141024.500952-4-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220203_075213_013467_CFFCE305 
X-CRM114-Status: GOOD (  18.58  )
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

> Qualcomm PCIe driver uses compatible string to check if the ddrss_sf_tbu
> clock should be used. Since sc7280 support has added flags, switch to
> the new mechanism to check if this clock should be used.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index 1204011c96ee..d8d400423a0a 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -191,6 +191,7 @@ struct qcom_pcie_ops {
>  struct qcom_pcie_cfg {
>  	const struct qcom_pcie_ops *ops;
>  	unsigned int pipe_clk_need_muxing:1;
> +	unsigned int has_ddrss_sf_tbu_clk:1;
>  };
>  
>  struct qcom_pcie {
> @@ -1133,7 +1134,7 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
>  	res->clks[3].id = "bus_slave";
>  	res->clks[4].id = "slave_q2a";
>  	res->clks[5].id = "tbu";
> -	if (of_device_is_compatible(dev->of_node, "qcom,pcie-sm8250")) {
> +	if (pcie->cfg->has_ddrss_sf_tbu_clk) {
>  		res->clks[6].id = "ddrss_sf_tbu";
>  		res->num_clks = 7;
>  	} else {
> @@ -1449,6 +1450,7 @@ static const struct qcom_pcie_cfg sdm845_cfg = {
>  
>  static const struct qcom_pcie_cfg sm8250_cfg = {
>  	.ops = &ops_1_9_0,
> +	.has_ddrss_sf_tbu_clk = true,
>  };
>  
>  static const struct qcom_pcie_cfg sc7280_cfg = {
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

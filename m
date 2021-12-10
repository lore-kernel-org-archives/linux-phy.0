Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46F74C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 10 Dec 2021 11:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/liqpKyTxwR+FvjoMBDfrhIryrgqKfsprRR0A+ilD2I=; b=ff6g+nHAFpmOWt
	CPms/OgiUdGzF5RjPBLIDAnvOMnYdEbkX0pXRokCC2DcXY55e+ZoJsNw5Od2/j5bGyiS3vtWD6ixN
	1lUOBxWYFMA6ZUd+R/3TmDU8WWn72X9XqVkfQ/kmSL71BWwbfs9RgpCcsxDu+Wmg0flSlxCQURqNc
	MI56m5L411cWJeqOA2aYz5WvDNPAT6mqzaOegnIFqeidpoMxcOHZiHwRZGXuTvKXyEGWnXHDLd5Xy
	LSXpVcQ01b2xzdV11XnmEi0tWIQgf+KTpSwUEsp22hgKjG9GyQsSuscoJWxXesJTUVb/bNmuOEDzg
	Wf/a/WPqV276xf+mKQTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mve0g-001eUj-7r; Fri, 10 Dec 2021 11:24:18 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvdzF-001e41-4s
 for linux-phy@lists.infradead.org; Fri, 10 Dec 2021 11:22:50 +0000
Received: by mail-pl1-x62a.google.com with SMTP id u11so6075204plf.3
 for <linux-phy@lists.infradead.org>; Fri, 10 Dec 2021 03:22:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Qxg6DxirLaC6DUB7IKjqDUJ0ykin6MxQpFRl97W03Dg=;
 b=gi1PGJ0nA5fY2Qybv9z8wfe7bPMKNji2xRTQfRmiL41kKq1vD0m5PpNFc02jRTGqax
 ozOfu5f638E2y0uKhr8AMCx2jPtBKM2SWktddZ3uPrZjaPAtYEl0S1nyvoNB4vPeXgC5
 ciaWGIqPoWbUe01Smx6FnCkTzkcBoDNDlcpzUP7US14ArN27IlsZoZdEK0LoVf3VU5KM
 itg+InpSZtmk8eXILQmxLv4vLIIKObUi25Ti2ZTmDduQOG6TUwzi4BCxecvbsxSbD1Qw
 IQGG+XvyXLki/USm/yj/reh22qsUxXuZN/iCO7TMCDiv3wbZJjor47ZEgor92h1n3jUW
 zMrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Qxg6DxirLaC6DUB7IKjqDUJ0ykin6MxQpFRl97W03Dg=;
 b=GL+YXj8AFWcvz/RNvW+tfqkvF9liQyu3AD9AgtYVh7CYjbG1xR3RRxcPzbh0mhBZng
 FssYuleEYQyo1l3jF9DL3i1qUsMRsZZhXnvZ3y6RLtdWmeva+obAflWh97hSNs7Nu7O+
 OSuzwQsMfxqYHrGuNgQ8rAicb9B3mlzkdoOJ5erwHvEoMRedNBepg7Bz2IZW9VfgB7Sr
 Jz/rGbeZ5W8igVl+usDtnhQ5mfev36DYjl9ayAHYP0pZbFeXVtkICzQuVwbBLFom32/I
 OStG82zYPk9zv2455q528yyTMKnNt6pqiWzKnNfm/HvMqyfRSVWJyMAJNhu/zHmLmjm9
 M/WA==
X-Gm-Message-State: AOAM533giLGAmgIioXFn8uLdQYTzm7vj5aiPZyEKp7pXf3j9nZXzW6to
 BIm+1YF9lbh4jgKsxKsWqkRh
X-Google-Smtp-Source: ABdhPJy6Tfp+7r+nz977lZcwgLbQS0hblxm4+TIkxiTlyrDg1PS/Cc9Q1FD3CaUZd6oX+s+ip839fA==
X-Received: by 2002:a17:90b:1b06:: with SMTP id
 nu6mr22962669pjb.155.1639135368104; 
 Fri, 10 Dec 2021 03:22:48 -0800 (PST)
Received: from thinkpad ([202.21.42.75])
 by smtp.gmail.com with ESMTPSA id h15sm3251488pfc.134.2021.12.10.03.22.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Dec 2021 03:22:47 -0800 (PST)
Date: Fri, 10 Dec 2021 16:52:41 +0530
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
Subject: Re: [PATCH v2 05/10] PCI: qcom: Add ddrss_sf_tbu flag
Message-ID: <20211210112241.GE1734@thinkpad>
References: <20211208171442.1327689-1-dmitry.baryshkov@linaro.org>
 <20211208171442.1327689-6-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211208171442.1327689-6-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211210_032249_233193_7850EECE 
X-CRM114-Status: GOOD (  23.05  )
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

On Wed, Dec 08, 2021 at 08:14:37PM +0300, Dmitry Baryshkov wrote:
> Qualcomm PCIe driver uses compatible string to check if the ddrss_sf_tbu
> clock should be used. Since sc7280 support has added flags, switch to
> the new mechanism to check if this clock should be used.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index 51a0475173fb..803d3ac18c56 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -194,7 +194,9 @@ struct qcom_pcie_ops {
>  
>  struct qcom_pcie_cfg {
>  	const struct qcom_pcie_ops *ops;
> +	/* flags for ops 2.7.0 and 1.9.0 */

No need of this comment.

>  	unsigned int pipe_clk_need_muxing:1;

This should be added in the previous patch.

> +	unsigned int has_ddrss_sf_tbu_clk:1;

Wondering if we could make both the flags "bool" as the values passed to it
are of boolean type. I don't think we could save a significant amount of
memory using bitfields.

Thanks,
Mani
>  };
>  
>  struct qcom_pcie {
> @@ -1164,7 +1166,7 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
>  	res->clks[3].id = "bus_slave";
>  	res->clks[4].id = "slave_q2a";
>  	res->clks[5].id = "tbu";
> -	if (of_device_is_compatible(dev->of_node, "qcom,pcie-sm8250")) {
> +	if (pcie->cfg->has_ddrss_sf_tbu_clk) {
>  		res->clks[6].id = "ddrss_sf_tbu";
>  		res->num_clks = 7;
>  	} else {
> @@ -1512,6 +1514,7 @@ static const struct qcom_pcie_cfg sdm845_cfg = {
>  
>  static const struct qcom_pcie_cfg sm8250_cfg = {
>  	.ops = &ops_1_9_0,
> +	.has_ddrss_sf_tbu_clk = true,
>  };
>  
>  static const struct qcom_pcie_cfg sc7280_cfg = {
> -- 
> 2.33.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43923C433F5
	for <linux-phy@archiver.kernel.org>; Thu,  3 Feb 2022 15:57:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DVo3k9fhkaEcuwC5tpFYHi8N8Hr0ryETEMlFG6f5tMU=; b=ChIWI5iKjxUQZx
	0e6tT9AKQFNDcL37ojImsFv+8r5QNL3F+gp1yRe8lW7MQDAEggwyicHv5DMFXRZC25GJdQG4hpMxF
	j+oNuq9oLtMs+L5q6iNymlVB697FNxUVAAe0ZpFaCCIKHmFbfxlvjMguSoYC1qgHFxIsd/2CuaVsU
	Eg7MlGzECHhDzM3HlcqyzwGmJp6MLjGN0XHXXWB1YyWFsO464NGM9aITAoE38w+T8e/TbHRmZaEj9
	U2Ive7p0BOYlftyPYtwumdnqUvAouyayhAnJtpfn4D1m2QWNkPxwIBr6vjGF8ZhywbEQGwKmbxLAs
	wE+lK9RCT2X1gT2kqTeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFeUQ-001v0b-Nm; Thu, 03 Feb 2022 15:57:42 +0000
Received: from mail-oo1-xc2a.google.com ([2607:f8b0:4864:20::c2a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFeUN-001uyX-R2
 for linux-phy@lists.infradead.org; Thu, 03 Feb 2022 15:57:41 +0000
Received: by mail-oo1-xc2a.google.com with SMTP id
 c7-20020a4ad207000000b002e7ab4185d2so1844000oos.6
 for <linux-phy@lists.infradead.org>; Thu, 03 Feb 2022 07:57:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=u8SvSzbd59UmkycNsXmpgzI9yGmgfD5pZgAqD9SL4Iw=;
 b=vHPVc7chXEK8xfd2k1jjj63JAbn72kRdFJAAgZDPEdRgClwYz2gFK3MVI/kcx/lNlZ
 0x+2yDywbAfAoSJl5cmnHcOnsYdWOfGcoyMptTMYPLcUFTWT+7Qv6FO5+JN/5mlHc0ja
 t4YU25OS6mwYqzBpxUTf/oD2czM7k+9/hD4ZNILagelBCJntBvvFR6UZwNi81mJ2H9zU
 qrzTjWes2UpWY+zKcuuTj2UOKD/jMaqURTsKCI3+dL+qFjFu95trOZF8FBMVEWLHAvJV
 q0+Sk720Ka6zNsRCjXiXUL8IXsguNbHobXXlmmabSK6WiaCo/T7A5wstEv1u8+5GxGdA
 g3fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=u8SvSzbd59UmkycNsXmpgzI9yGmgfD5pZgAqD9SL4Iw=;
 b=sYVE/1YcKbq36oiG7hM71f6enY7PvwCmpSHffnDxOCnINbyBG5hk5993rmy0i4O3Jk
 aiwD5ANNRTiYY7Ug8Q6//R4Ku40Ya4IKjWGSNIGM7EWfswF3Stf7rPmA7vg6N5ak6Qmt
 wsi7WiW2SY/j5cE2YgValwcUAtWpYLAzgeuJTKZ1C1UsOmBgxpdjDRsMevSrCG1IpuMH
 nZ2+Lopm5jgdegFIMuM3tMkyDzRjYZ0FPoPvHjVIh2gYn8WtcrnD3tA83RBRkMDX1Oe3
 IpyyqpFy6nE635hSw9IMSxDCnttxXmFAamJlmQPJlb35Yxsx9/mtArLG29dXDWt9MMwa
 EJoQ==
X-Gm-Message-State: AOAM533o6FMMrjL4dpO5AGnc/QSIpRrRIhCieAeQB8UIiw4alhqmZUYD
 exXAtPNCGPBJw1/Ro4O7heIkpA==
X-Google-Smtp-Source: ABdhPJyODJF45Cjmx4GtfDCTKc1xrrSopNuENSJ88j7tav9mvUwxZNuYbBU+4agG/vPbg4gbPy77lw==
X-Received: by 2002:a4a:94b0:: with SMTP id k45mr17349233ooi.64.1643903858451; 
 Thu, 03 Feb 2022 07:57:38 -0800 (PST)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
 by smtp.gmail.com with ESMTPSA id a26sm20524555oiy.26.2022.02.03.07.57.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Feb 2022 07:57:37 -0800 (PST)
Date: Thu, 3 Feb 2022 07:57:54 -0800
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
Subject: Re: [PATCH v5 4/5] PCI: qcom: Add interconnect support to
 2.7.0/1.9.0 ops
Message-ID: <Yfv7gh8YycxH2Wtm@ripper>
References: <20211218141024.500952-1-dmitry.baryshkov@linaro.org>
 <20211218141024.500952-5-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211218141024.500952-5-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220203_075739_948466_2921E4C7 
X-CRM114-Status: GOOD (  21.34  )
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

> Add optional interconnect support for the 2.7.0/1.9.0 hosts. Set the
> bandwidth according to the values from the downstream driver.
> 

What memory transactions will travel this path? I would expect there to
be two different paths involved, given the rather low bw numbers I
presume this is the config path?

Is there no vote for the data path?

> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index d8d400423a0a..55ac3caa6d7d 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -12,6 +12,7 @@
>  #include <linux/crc8.h>
>  #include <linux/delay.h>
>  #include <linux/gpio/consumer.h>
> +#include <linux/interconnect.h>
>  #include <linux/interrupt.h>
>  #include <linux/io.h>
>  #include <linux/iopoll.h>
> @@ -167,6 +168,7 @@ struct qcom_pcie_resources_2_7_0 {
>  	struct clk *pipe_clk_src;
>  	struct clk *phy_pipe_clk;
>  	struct clk *ref_clk_src;
> +	struct icc_path *path;
>  };
>  
>  union qcom_pcie_resources {
> @@ -1121,6 +1123,10 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
>  	if (IS_ERR(res->pci_reset))
>  		return PTR_ERR(res->pci_reset);
>  
> +	res->path = devm_of_icc_get(dev, "pci");

The paths are typically identified using a string of the form
<source>-<destination>.


I don't see the related update to the DT binding for the introduction of
the interconnect.

Regards,
Bjorn

> +	if (IS_ERR(res->path))
> +		return PTR_ERR(res->path);
> +
>  	res->supplies[0].supply = "vdda";
>  	res->supplies[1].supply = "vddpe-3v3";
>  	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(res->supplies),
> @@ -1183,6 +1189,9 @@ static int qcom_pcie_init_2_7_0(struct qcom_pcie *pcie)
>  	if (pcie->cfg->pipe_clk_need_muxing)
>  		clk_set_parent(res->pipe_clk_src, res->phy_pipe_clk);
>  
> +	if (res->path)
> +		icc_set_bw(res->path, 500, 800);
> +
>  	ret = clk_bulk_prepare_enable(res->num_clks, res->clks);
>  	if (ret < 0)
>  		goto err_disable_regulators;
> @@ -1241,6 +1250,8 @@ static void qcom_pcie_deinit_2_7_0(struct qcom_pcie *pcie)
>  	struct qcom_pcie_resources_2_7_0 *res = &pcie->res.v2_7_0;
>  
>  	clk_bulk_disable_unprepare(res->num_clks, res->clks);
> +	if (res->path)
> +		icc_set_bw(res->path, 0, 0);
>  
>  	/* Set TCXO as clock source for pcie_pipe_clk_src */
>  	if (pcie->cfg->pipe_clk_need_muxing)
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

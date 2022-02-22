Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0121AC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 22 Feb 2022 23:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EhEgeBW9h4UdZtStY+Xq7swj1uXoNO4fc8Xai4yF/8c=; b=0c9KwLKrE1UdEF
	3Q0JZrqxJjMOV9rmBro6e3IPgbLdeumbuxjKLKQZ8E7moDyqU+dkwJHq/UxbQ5oogjEmB+2/XhFQ+
	rmnTXv+L99za2k1BirIJPGc1jt3RRtZD9POQ4F0n4qB+/E2MBAWzz0IBv+VZ4e4lBqX04ehcM8whs
	XXplN2BUcjnQIgwfSnlt1n9/53GxibP82+cS7WiielYoKE7tD33G44ugOQpGnAg8Nrc5iQbu9RyFJ
	xKk8syyAuD+z/+ulskt+J9mP7LRAuCY5+0oJyx6yzslyzv1oYtQQx9jU4mES8FXGnNvWgw9AEZ+a3
	ZuMyWSISYpYCLmRoAa9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMesq-00BxEz-Ef; Tue, 22 Feb 2022 23:47:52 +0000
Received: from mail-oo1-xc2d.google.com ([2607:f8b0:4864:20::c2d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMeso-00BxEX-Ie
 for linux-phy@lists.infradead.org; Tue, 22 Feb 2022 23:47:52 +0000
Received: by mail-oo1-xc2d.google.com with SMTP id
 x6-20020a4a4106000000b003193022319cso19965151ooa.4
 for <linux-phy@lists.infradead.org>; Tue, 22 Feb 2022 15:47:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=mNfJggOV7YP6vqkDY7Togq40JzvOACLm16iiua2Y2uw=;
 b=l2HJoH0cwLBgMyfkawLfhKR8cFTCEKZmdiN6esWuoyfxi5CbTTS9ue0w5bVdWhEVOV
 MW2W/F0yQYGIkYeKN1tKmj9WgwBYNJX4T5SK94vU8V3SxHXEdgUDqToZdv/UE9WrmFrv
 XPUA24QHlpi02giWZWhtxkCjfc4ThgxbejQSRCkj7rabK4txPFIOjWGkcuZiwb/WaVe3
 t4p4S0DJFjbboRWjUtQaWHZ0Az1AZEsBqcz0Qb8OfOOr85TN6fpajrmmycUVV38qp78L
 MHNZ4S3N/XT03ji5SDddX+/vAcYTLwc6W2KjK7eIXMJGRsz2VvjLrZ+f3JRWaCbNNbbO
 lqng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=mNfJggOV7YP6vqkDY7Togq40JzvOACLm16iiua2Y2uw=;
 b=GkQHRsv4sL7IIefi12b/nCX4GZxX/zTNu+yZVAeDDdrh74FWvXRq/hOg+L4oEZYSE1
 flbLIGHEuaMMU6IeSC5HAvaWcSAVGKDO6tx52I7GvIQhHoj4+nnNJh5kk26w/wMYOZIl
 SbN6PMPPt0Meegqn7ZTyyCtASmNEKPiP8ez95TGjXfY9dKQxLrFBifasOhhYHflYjL2R
 3FguwY3M7ewiO0aDM7cPZbEsJfmkJilW1mtzG1OcvOMsM4JUJrRwK8JCN9ZiSI5cOVoU
 PdgGHb6mqRPiGWt1pU9BlVgui+jBO6TkKbcshOkX0Tq7kK7OZHFfyepLmGByYhV2YYCw
 KnIw==
X-Gm-Message-State: AOAM533J8t3N+ZdSc4moUdaBNF9O6Ov0booClg+K0iZW7Q+XBMw+DhKi
 PJdNlVFbixwoOtaF2cVIfwFoGg==
X-Google-Smtp-Source: ABdhPJzDOUvvuAGYdNLbTLaY4ZLSk9mbdrprvLOzCJJVN9oMZ575y6rrP65j/r/BKWpecEMZ8EIrMQ==
X-Received: by 2002:a05:6870:5b9e:b0:cf:f6de:3e89 with SMTP id
 em30-20020a0568705b9e00b000cff6de3e89mr2705326oab.94.1645573669196; 
 Tue, 22 Feb 2022 15:47:49 -0800 (PST)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
 by smtp.gmail.com with ESMTPSA id o15sm6764241ooi.31.2022.02.22.15.47.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Feb 2022 15:47:48 -0800 (PST)
Date: Tue, 22 Feb 2022 15:49:49 -0800
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
Message-ID: <YhV2nemA+t0cCdlP@ripper>
References: <20211218141024.500952-1-dmitry.baryshkov@linaro.org>
 <20211218141024.500952-5-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211218141024.500952-5-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220222_154750_643318_2A6C1A20 
X-CRM114-Status: GOOD (  20.84  )
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

I think it's fair to assume that pretty much all platforms will have a
data path to reach the config registers and for the PCI to reach DDR.

So how about we place this in the common struct qcom_pcie instead?

Regards,
Bjorn

>  };
>  
>  union qcom_pcie_resources {
> @@ -1121,6 +1123,10 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
>  	if (IS_ERR(res->pci_reset))
>  		return PTR_ERR(res->pci_reset);
>  
> +	res->path = devm_of_icc_get(dev, "pci");
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

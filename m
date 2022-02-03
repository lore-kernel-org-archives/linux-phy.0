Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 610BEC433EF
	for <linux-phy@archiver.kernel.org>; Thu,  3 Feb 2022 17:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=US9CWUY90c5pPOMjpV/MyZnrfJWKAy+3hhPPl2cJ/NE=; b=tVNIMy4z51RGH8
	LUFwPWrVhrhUmm84pVCe2Miqd+Ah800mIxfxd2FH7JqlAG3M+k1xV6nGl3P60w2/rR3pF8vjwR+HM
	nN762Uj99WTyF2cREjZCmQarO6wkCYlHDc9dgNCnJtMW6xzoolR7WN1jJuckPB1k/7N1N3cCvQuv3
	8ZT+N4pO6yRV6ReGuT9PPEwRlQzFxVsvPYLK35LEyeHizubU7XTICQIDG9pZ5WnF4h9n3FMkZX2gC
	ThYT8VTyrKbGe3IbNn57xAiMMXK5Q+nMRxsKPFXekKtZnbfSWVO7rXYtigzJcHZi9htSGkyfeIDX6
	7YyKJ4+bpkVNB28mlSSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFfdG-0025qk-Rd; Thu, 03 Feb 2022 17:10:54 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFfdE-0025pZ-FI
 for linux-phy@lists.infradead.org; Thu, 03 Feb 2022 17:10:53 +0000
Received: by mail-oi1-x230.google.com with SMTP id 4so4980428oil.11
 for <linux-phy@lists.infradead.org>; Thu, 03 Feb 2022 09:10:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=iyTnLRq74SMNTbBGSC7BPrM96WbFmvv/b/YCqRhJKOE=;
 b=thfJm2vpV7VaNu1lzrEG23OTmJsIHNzwHkX5JsY7aQhT0djoFZQjP4WbvWmzgMX1cE
 RgB7VYmGPR90SJr5tBbfTbSqWyV3Zq1VGeheW+VcHDGI1pBPHdYoo0xncHYi5bxIm0z/
 FJttwfCXgr+iSUbkSSpGH54np+ONYksPsh3OcSz3nhPuEZvH7QMawaWaVhPcczB/qcoh
 byuE8Cu4teph0I2bnsxg88DB6rHFQavLj1aUAoJQiqbdR2R7NKAguLy1140kcERS6BLk
 apaz7j+GBcmfVF31LgOSeYGL1zbvLVee1nLE+vyhb9e7RQFwEhg8m65karUqF9STUz+E
 9uDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=iyTnLRq74SMNTbBGSC7BPrM96WbFmvv/b/YCqRhJKOE=;
 b=OiJttJ8ukq7yuVHB77aMNKfdmtGzrk/tv4qqhMxXghH3LBuIDmQyKQk4OFfdFQk5Jz
 qZPslqOrS/vCPRaVj7wfG2LfsEMI4U1gc5l1dZsZeBdNFo4cxVbp3MOGEgwc/JpLhb/6
 SJQhOaV1zkDZ9myji66BcoCL3H/Hg+NRosMEBjUucAwZm3/WGEBINoII3mfmHrJzcC0A
 rSuHpdByv8vHoZEoKTCZEDUmFlX4T+2ElP4lxaJxdBTtb7MkTOQyT6OL/lfJP+4olTbr
 txQHecG+4nCGZTUEWv/t8OyUf4k00kwGIkXuSI7+4JHKkijn56DpIJcdh94YX/HzNAQY
 Gvxg==
X-Gm-Message-State: AOAM533CDiB/OXo9v/yLptuwxTjCRrxkHAJuVwmfBH+F5dIHpNouz9Gt
 QGIYMTvn98laTTrpG2/nJpzZjw==
X-Google-Smtp-Source: ABdhPJwK5V2IWgDRWmJUgoelR05uxNUjVGwc6M3avl68/CttOm1hmc7QnHQECMSMDwdigQmIe1SNdA==
X-Received: by 2002:a05:6808:1590:: with SMTP id
 t16mr8091182oiw.215.1643908250910; 
 Thu, 03 Feb 2022 09:10:50 -0800 (PST)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
 by smtp.gmail.com with ESMTPSA id g4sm19145118otl.1.2022.02.03.09.10.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Feb 2022 09:10:50 -0800 (PST)
Date: Thu, 3 Feb 2022 09:11:07 -0800
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
Subject: Re: [PATCH v5 1/5] dt-bindings: pci: qcom: Document PCIe bindings
 for SM8450
Message-ID: <YfwMq/kjmjr4d4t4@ripper>
References: <20211218141024.500952-1-dmitry.baryshkov@linaro.org>
 <20211218141024.500952-2-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211218141024.500952-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220203_091052_581146_0D0EF5B6 
X-CRM114-Status: GOOD (  15.26  )
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

> Document the PCIe DT bindings for SM8450 SoC. The PCIe IP is similar
> to the one used on SM8250, however unlike SM8250, PCIe0 and PCIe1 use
> different set of clocks, so two compatible entries are required.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../devicetree/bindings/pci/qcom,pcie.txt     | 22 ++++++++++++++++++-
>  1 file changed, 21 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.txt b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
> index a0ae024c2d0c..0adb56d5645e 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie.txt
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
> @@ -15,6 +15,8 @@
>  			- "qcom,pcie-sc8180x" for sc8180x
>  			- "qcom,pcie-sdm845" for sdm845
>  			- "qcom,pcie-sm8250" for sm8250
> +			- "qcom,pcie-sm8450-pcie0" for PCIe0 on sm8450
> +			- "qcom,pcie-sm8450-pcie1" for PCIe1 on sm8450
>  			- "qcom,pcie-ipq6018" for ipq6018
>  
>  - reg:
> @@ -169,6 +171,24 @@
>  			- "ddrss_sf_tbu" PCIe SF TBU clock
>  			- "pipe"	PIPE clock
>  
> +- clock-names:
> +	Usage: required for sm8450-pcie0 and sm8450-pcie1
> +	Value type: <stringlist>
> +	Definition: Should contain the following entries
> +			- "aux"         Auxiliary clock
> +			- "cfg"         Configuration clock
> +			- "bus_master"  Master AXI clock
> +			- "bus_slave"   Slave AXI clock
> +			- "slave_q2a"   Slave Q2A clock
> +			- "tbu"         PCIe TBU clock
> +			- "ddrss_sf_tbu" PCIe SF TBU clock
> +			- "pipe"        PIPE clock
> +			- "pipe_mux"    PIPE MUX
> +			- "phy_pipe"    PIPE output clock
> +			- "ref"         REFERENCE clock
> +			- "aggre0"	Aggre NoC PCIe0 AXI clock, only for sm8450-pcie0
> +			- "aggre1"	Aggre NoC PCIe1 AXI clock
> +
>  - resets:
>  	Usage: required
>  	Value type: <prop-encoded-array>
> @@ -246,7 +266,7 @@
>  			- "ahb"			AHB reset
>  
>  - reset-names:
> -	Usage: required for sc8180x, sdm845 and sm8250
> +	Usage: required for sc8180x, sdm845, sm8250 and sm8450
>  	Value type: <stringlist>
>  	Definition: Should contain the following entries
>  			- "pci"			PCIe core reset
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2623C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 10 Dec 2021 11:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SENuGfjJHIey6LV+IeW7S6ugDsjXjsB1QLgLigbnaCc=; b=1RPS7XcX38dsnI
	VMt81v1r4MUC/Wg50y+7U0M/0dilHSIUK+5XVqLcz+aMBlnOsAe4K6a6iO0UJBfGNnzFAIbiZq4R6
	msBtjcHGwTTm/qS+7RZ+T2+s2mJ+drni0R6Jnc/CPtirnhK+UrarpUBqujuvJCymTxHSeVDk5/9SN
	3vXsJNvIoM+io4cPZlsCeSpFs9aNyyBEiq9b5YUjJ4kUsYy6M2wH+ncV1ITmPYdByvoJQF4J8QQZs
	c7kX/ypgxdq2tLZhBIjm3FYsh6ubTD8Ne+ClGW+NTaDqtH78/tbBNqMQJpZV8nmLIIbtpjsU70S6m
	zWnAyfWCJVSE8721+swA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mveDU-001hiF-6j; Fri, 10 Dec 2021 11:37:32 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mveDS-001hg0-3K
 for linux-phy@lists.infradead.org; Fri, 10 Dec 2021 11:37:31 +0000
Received: by mail-pg1-x52d.google.com with SMTP id f125so7890080pgc.0
 for <linux-phy@lists.infradead.org>; Fri, 10 Dec 2021 03:37:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=qi2ii7axpVPM6M5j9yKMozSkF/k3GbmTDPLNt+E5MLk=;
 b=acwYIZDGWQoJ31rdBIRmigTvMAK5hGgUACwg6gzz1XMlcC9WQ8kOCqLsqu8YRJMOa5
 vrOQL9I+1esExYHfkA0CK1Qy5Mr7ckRp/7xgLfEvhia4KNQBgRP2yhHnAD+36zUSmKei
 xVbkcpaE4FvukexOVlXNRY4NSx2BnFPjIwOAPqbU14ON2flSKlOfUYL5yxT1j5wLSQrq
 mdoOIYNV0uY0aDoFDE2p7Q0CFWl7RcDiz2r+u9sl7I+ulHus7icfWSLBkqtkVSnVCKMF
 uiASmCzf0QK1EF7/KPUQuTmBDxJobM6ofAZ505tFZF4q3NBX3z5a2/hO21VgfFgzMwzh
 c5Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qi2ii7axpVPM6M5j9yKMozSkF/k3GbmTDPLNt+E5MLk=;
 b=vqy5d3oZAO7wxwWp4Hm+ZVXJHYe5Pd3IWzmal33S7RWF/FA92s9sDrUrDHy7MdFY6j
 yANEn7uWGp0kw6sPqQLeDWTucIgUkx6L9Ahr8etoPkkUilsKFHAeRyTo+LHa+tNEvHZK
 eUiHdqH7kp5LeGxVUs8iG2HTwqN4fruPcD5L17zYayEPXuU2hRQTXMCSK+FEjnSaM89o
 Q/8kvAHIhax4FpemSdcGEILtCTzbZmV+pgN7me53Yw2ZgCvXlX3orL4/YSixN39ioqTK
 r6u3paCXd3g1sxx43ENSTnrY800MHxXpjTty/FnQow1MRf1zZF4Aeox2Zu4F8uQNO5xR
 z4iQ==
X-Gm-Message-State: AOAM531/euMykAOqGQgeYAuLc/qsZxEGA+iSazdaHQEUqyDfoJ2geUAq
 yVMugFbsnd0tA/Zfan297cgU
X-Google-Smtp-Source: ABdhPJwZJzp1BvF7xLuULGMdYqjjGXpKYnPljTi18kLCPgfMUUNFpVqPsqgVa6itGcnUd1l3myVGpg==
X-Received: by 2002:a62:1a03:0:b0:494:64b5:3e01 with SMTP id
 a3-20020a621a03000000b0049464b53e01mr17584648pfa.35.1639136247602; 
 Fri, 10 Dec 2021 03:37:27 -0800 (PST)
Received: from thinkpad ([202.21.42.75])
 by smtp.gmail.com with ESMTPSA id kk7sm14517702pjb.19.2021.12.10.03.37.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Dec 2021 03:37:27 -0800 (PST)
Date: Fri, 10 Dec 2021 17:07:20 +0530
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
Subject: Re: [PATCH v2 07/10] arm64: dts: qcom: sm8450: add PCIe0 PHY node
Message-ID: <20211210113720.GG1734@thinkpad>
References: <20211208171442.1327689-1-dmitry.baryshkov@linaro.org>
 <20211208171442.1327689-8-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211208171442.1327689-8-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211210_033730_196615_F5BD89D2 
X-CRM114-Status: GOOD (  15.46  )
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

On Wed, Dec 08, 2021 at 08:14:39PM +0300, Dmitry Baryshkov wrote:
> Add device tree node for the first PCIe PHY device found on the Qualcomm
> SM8450 platform.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 42 ++++++++++++++++++++++++++--
>  1 file changed, 40 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index 16a789cacb65..a047d8a22897 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -558,8 +558,12 @@ gcc: clock-controller@100000 {
>  			#clock-cells = <1>;
>  			#reset-cells = <1>;
>  			#power-domain-cells = <1>;
> -			clock-names = "bi_tcxo", "sleep_clk";
> -			clocks = <&rpmhcc RPMH_CXO_CLK>, <&sleep_clk>;
> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> +				 <&pcie0_lane>,
> +				 <&sleep_clk>;
> +			clock-names = "bi_tcxo",
> +				      "pcie_0_pipe_clk",
> +				      "sleep_clk";
>  		};
>  
>  		qupv3_id_0: geniqup@9c0000 {
> @@ -625,6 +629,40 @@ i2c14: i2c@a98000 {
>  			};
>  		};
>  
> +		pcie0_phy: phy@1c06000 {
> +			compatible = "qcom,sm8450-qmp-gen3x1-pcie-phy";
> +			reg = <0 0x01c06000 0 0x200>;
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges;
> +			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
> +				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
> +				 <&gcc GCC_PCIE_0_CLKREF_EN>,
> +				 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>;
> +			clock-names = "aux", "cfg_ahb", "ref", "refgen";
> +
> +			resets = <&gcc GCC_PCIE_0_PHY_BCR>;
> +			reset-names = "phy";
> +
> +			assigned-clocks = <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>;
> +			assigned-clock-rates = <100000000>;
> +
> +			status = "disabled";
> +
> +			pcie0_lane: lanes@1c06200 {
> +				reg = <0 0x1c06e00 0 0x200>, /* tx */
> +				      <0 0x1c07000 0 0x200>, /* rx */
> +				      <0 0x1c06200 0 0x200>, /* pcs */

Oh, so this platform has "PCS" at the starting offset? This is different
compared to other platforms as "TX" always comes first.

And the size is "0x200" for all?

Thanks,
Mani

> +				      <0 0x1c06600 0 0x200>; /* pcs_pcie */
> +				clocks = <&gcc GCC_PCIE_0_PIPE_CLK>;
> +				clock-names = "pipe0";
> +
> +				#clock-cells = <0>;
> +				#phy-cells = <0>;
> +				clock-output-names = "pcie_0_pipe_clk";
> +			};
> +		};
> +
>  		config_noc: interconnect@1500000 {
>  			compatible = "qcom,sm8450-config-noc";
>  			reg = <0 0x01500000 0 0x1c000>;
> -- 
> 2.33.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

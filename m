Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B64FC433FE
	for <linux-phy@archiver.kernel.org>; Fri, 10 Dec 2021 12:06:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YxKWcVq1EDgngaN+hh689zprYA6E0i23eN7vWAg4tDE=; b=pfpCzAHhtoptLE
	1gXvT69eCHJyZfZoW4VN+dDBuG3znIfwB+2hbjo8/3eRpM3Ebckx8rN6NFt9Aq/sWY/LoNJO+nhco
	oaf2AXmqaZccTP9FZCvSJmirjrF5tltwaGiRvwic28pawh9L2b+HdlucspDFG1THmKu/XmdeGiwFX
	OOPPbFnxOtXzwlu6RJIeM0Yj1cSRuOWOwUVp+7pKRjfFxYyMIFk5RjBTAK5kMH5sQ0OeUPV6eALJJ
	Kb+7om7RzYyRlXeKYAm1F9uFcNmy1Ob8zLCMyGRi/54GBbJyZRvkgvDfULGBy4feyinYTNpwZ5rGF
	I4pcJ6ReLPjjT31bBxhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvefw-001mV6-OY; Fri, 10 Dec 2021 12:06:56 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvefu-001mTy-19
 for linux-phy@lists.infradead.org; Fri, 10 Dec 2021 12:06:55 +0000
Received: by mail-pl1-x630.google.com with SMTP id m24so6128886pls.10
 for <linux-phy@lists.infradead.org>; Fri, 10 Dec 2021 04:06:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=3A4XI+OFHkyTdDyIpE0tdpctLpghaRi+j3fzJm/k30s=;
 b=NxQO28OFAuO1x8qjWF6ClHK13UOKJcSviAZySdHLBXdSYHiauW02iC2EoRwL7haQlC
 ca+qRFCH80Ilal+g/OQz+DdOnDtPvdE8By0Gz6WT6mw+DbyoAJWYyVX35cr6NEmsx30r
 92ATxeNcv/eIBmrbrfF1JnKHvHKRYJ+TeUTl164OK1luGH2Yp4YETlFZxLXqxPT3okOK
 DQJv6d42Jb8Gf9GV2OhWk3/5aVMB06dJPSx8MR+BI1GFMMuba7mpOiDFc9F3utLyiZgE
 QJwG2Lat6CfcbvWCXyC54RwTQclJic4ufQJNOtTTGZy5/DZvtJjLgyWA1CHN4rG/HI69
 hw4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=3A4XI+OFHkyTdDyIpE0tdpctLpghaRi+j3fzJm/k30s=;
 b=1zNkSH75v1oSmHHMgBMlVKMhN1WW6qUJkNGmWHpRnW7O9pQ23BaqySeD1jpDeEd4MV
 aJzR47ImW4UWKldl1WBea6AxKE2LbuUeNiKJMb8nOrRXzcFZ0BAWKOx12xiC1tIqyTuE
 k4Iox/whhMIGv2YKdkravZT7ca0jqbnUZMKuUFcJBsQU77nHDC7aso3Mr3eMs1Sn66fp
 UcgxR/GdXvB6GrVzzGRMv7kjUneTbbi496U4prQvHP1oymkr45FNCbWkaXQtcxl9PbLv
 ptmUkHjKy9nrG3E1Q9X5o9ypoDJZnJfWiwfkwYdphwaN2oqsB7sf8Qr/MI+5xv/Z4Sek
 bjKA==
X-Gm-Message-State: AOAM530mY/++K89KyNtYsqyvksVZlcKHjQQmkCUuL0ZgMFziwkqowE+G
 6io+HaeBJD8PWg7XtXC9L07g
X-Google-Smtp-Source: ABdhPJx7NRQ9KL4sHfSAmZceTnS+zlwI6FhjUAfWc3FXiSkZtyVwqnhSfrm25oAxMvD0xotqRn+QyQ==
X-Received: by 2002:a17:902:bcc4:b0:141:bfc4:ada with SMTP id
 o4-20020a170902bcc400b00141bfc40adamr74670339pls.20.1639138013322; 
 Fri, 10 Dec 2021 04:06:53 -0800 (PST)
Received: from thinkpad ([202.21.42.75])
 by smtp.gmail.com with ESMTPSA id j20sm12273440pjl.3.2021.12.10.04.06.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Dec 2021 04:06:52 -0800 (PST)
Date: Fri, 10 Dec 2021 17:36:44 +0530
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
Subject: Re: [PATCH v2 08/10] arm64: dts: qcom: sm8450: add PCIe0 RC device
Message-ID: <20211210120644.GH1734@thinkpad>
References: <20211208171442.1327689-1-dmitry.baryshkov@linaro.org>
 <20211208171442.1327689-9-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211208171442.1327689-9-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211210_040654_109580_53CC3E82 
X-CRM114-Status: GOOD (  16.21  )
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

On Wed, Dec 08, 2021 at 08:14:40PM +0300, Dmitry Baryshkov wrote:
> Add device tree node for the first PCIe host found on the Qualcomm
> SM8450 platform.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 101 +++++++++++++++++++++++++++
>  1 file changed, 101 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index a047d8a22897..09087a34a007 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -627,6 +627,84 @@ i2c14: i2c@a98000 {
>  				#size-cells = <0>;
>  				status = "disabled";
>  			};
> +		];
> +
> +		pcie0: pci@1c00000 {
> +			compatible = "qcom,pcie-sm8450";
> +			reg = <0 0x01c00000 0 0x3000>,
> +			      <0 0x60000000 0 0xf1d>,
> +			      <0 0x60000f20 0 0xa8>,
> +			      <0 0x60001000 0 0x1000>,
> +			      <0 0x60100000 0 0x100000>;
> +			reg-names = "parf", "dbi", "elbi", "atu", "config";
> +			device_type = "pci";
> +			linux,pci-domain = <0>;
> +			bus-range = <0x00 0xff>;
> +			num-lanes = <1>;
> +
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +
> +			ranges = <0x01000000 0x0 0x60200000 0 0x60200000 0x0 0x100000>,
> +				 <0x02000000 0x0 0x60300000 0 0x60300000 0x0 0x3d00000>;
> +
> +			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "msi";
> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 0x7>;
> +			interrupt-map = <0 0 0 1 &intc 0 149 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
> +					<0 0 0 2 &intc 0 150 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
> +					<0 0 0 3 &intc 0 151 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
> +					<0 0 0 4 &intc 0 152 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
> +
> +			clocks = <&gcc GCC_PCIE_0_PIPE_CLK>,
> +				 <&gcc GCC_PCIE_0_PIPE_CLK_SRC>,
> +				 <&pcie0_lane>,
> +				 <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_PCIE_0_AUX_CLK>,
> +				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
> +				 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
> +				 <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
> +				 <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>,
> +				 <&gcc GCC_DDRSS_PCIE_SF_TBU_CLK>,
> +				 <&gcc GCC_AGGRE_NOC_PCIE_0_AXI_CLK>,
> +				 <&gcc GCC_AGGRE_NOC_PCIE_1_AXI_CLK>;
> +			clock-names = "pipe",
> +				      "pipe_mux",
> +				      "phy_pipe",
> +				      "ref",
> +				      "aux",
> +				      "cfg",
> +				      "bus_master",
> +				      "bus_slave",
> +				      "slave_q2a",
> +				      "ddrss_sf_tbu",
> +				      "aggre0",
> +				      "aggre1";
> +
> +			iommus = <&apps_smmu 0x1c00 0x7f>;
> +			iommu-map = <0x0   &apps_smmu 0x1c00 0x1>,
> +				    <0x100 &apps_smmu 0x1c01 0x1>;
> +
> +			resets = <&gcc GCC_PCIE_0_BCR>;
> +			reset-names = "pci";
> +
> +			power-domains = <&gcc PCIE_0_GDSC>;
> +			power-domain-names = "gdsc";
> +
> +			phys = <&pcie0_lane>;
> +			phy-names = "pciephy";
> +
> +			perst-gpio = <&tlmm 94 GPIO_ACTIVE_LOW>;
> +			enable-gpio = <&tlmm 96 GPIO_ACTIVE_HIGH>;

Wondering if this configuration varies between boards. If then, this should be
moved to board dts. Other than this,

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> +
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&pcie0_default_state>;
> +
> +			interconnects = <&pcie_noc MASTER_PCIE_0 &mc_virt SLAVE_EBI1>;
> +			interconnect-names = "pci";
> +
> +			status = "disabled";
>  		};
>  
>  		pcie0_phy: phy@1c06000 {
> @@ -763,6 +841,29 @@ tlmm: pinctrl@f100000 {
>  			gpio-ranges = <&tlmm 0 0 211>;
>  			wakeup-parent = <&pdc>;
>  
> +			pcie0_default_state: pcie0-default {
> +				perst {
> +					pins = "gpio94";
> +					function = "gpio";
> +					drive-strength = <2>;
> +					bias-pull-down;
> +				};
> +
> +				clkreq {
> +					pins = "gpio95";
> +					function = "pcie0_clkreqn";
> +					drive-strength = <2>;
> +					bias-pull-up;
> +				};
> +
> +				wake {
> +					pins = "gpio96";
> +					function = "gpio";
> +					drive-strength = <2>;
> +					bias-pull-up;
> +				};
> +			};
> +
>  			qup_i2c13_default_state: qup-i2c13-default-state {
>  				mux {
>  					pins = "gpio48", "gpio49";
> -- 
> 2.33.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

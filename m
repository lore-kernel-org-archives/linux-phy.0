Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D477FD78799
	for <linux-phy@archiver.kernel.org>; Thu, 21 Nov 2024 17:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9VQc0Kb3f9jkC+IT4edPPJqjSlLprGWBwTg1OXkmhh4=; b=35uHA1qZKAwPPw
	l/jbfNtXwJhngFhdY3yHlB7aFLUtDNQbMYjX3ltQgrt3dDCPq7D0I+2IbQM1Qo6R0+ZmZWVnaVAjn
	SIIjXyY2CXWjg5bv58cbdGvaLWaf8DkbhBjg/d88UKqdBvtKR+8+M4eko1ChJ2MZh2/DPyTM+hS1j
	Iaxs7gZFP8clKZb+T0e4Jl3xL1KYk7ZkK0NpTwTaFwPMSsOrHEXj9HyIPUK/j5stbj9rlUf0SwACd
	gzWafHBMM3MNdROpWedIH1YRCudwGRiYLySNuhy7RAYlTSI+QwDXiWtSDFPumnfVdAWFAQQEbk9dy
	z7P1kIuj+eZ4+n6+6zrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEAY0-00000000V7N-2ciP;
	Thu, 21 Nov 2024 17:00:52 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEAXx-00000000V61-25oD
	for linux-phy@lists.infradead.org;
	Thu, 21 Nov 2024 17:00:50 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-539f1292a9bso1282502e87.2
        for <linux-phy@lists.infradead.org>; Thu, 21 Nov 2024 09:00:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732208447; x=1732813247; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tTXid3Zut7ENV6u5lEywLtVroH0vN+GAHGKS1dMMtj0=;
        b=eWMUMWajtLl9jUHpFXUDIYgkzjKpzqDebNfp5wmJtTubsXonvxmlp7hI8AlgWAqP5l
         ppLA9sQlFNmbJTttdGk/WKRtGJFRMDOC1tU2O+KAQwToQpBRC5himdL4CQWhYj05PZhU
         GdEJkFQygilBmlpexxLnqHhGQS/6zV8GCG6Dtgxl+JORX//EBI63YJ5s35HiKCOnWLKJ
         +tIXr6G0yovXP43E6h76JKPuZ3Qt8519bQ1yhdLv6Ltvm4CGCohQIBYo74Ecx46asN4Z
         WDbPnLkX9HgUojqVl3HAs1mOrP0iJTJJcLN1C1YxXQ+79sKzg2HTnEQEIot+hFalND2T
         OjAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732208447; x=1732813247;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tTXid3Zut7ENV6u5lEywLtVroH0vN+GAHGKS1dMMtj0=;
        b=Ts4PW+1jtABLzrBIynUXmDCye0FcqnqGZi8dF0gXkHkxvRSdG7sGA/kCQhLf2NhUu+
         +pccN/fYxuMfFWQtrHBKXVZvd07mP+9MPk17AA17beIFVMD3F4E9XgO2SjaUYc6DG3rY
         wvZBnjjCMcRv6UXJKTUNPpXFamDdlEWJbjx1oTcujf7rqctBXhOOPWytT/Qm4eThfb4Z
         nWCHKLMDRE5IKEfxXZhc2+DhVPgVIS9O4o6bXPfiTjkvpzPKGUqBbf8zmltC6DSFtn64
         R0XONI5P3RrKZXYo+LHiSDwn2IsZg6GkKonuQ+gcrBMPpWgxcrmg5qz4dB1TUqvfiA+4
         EgpQ==
X-Forwarded-Encrypted: i=1; AJvYcCXA9fnTYjRq7rclVY4kYpmV6yfh49S1McT+xapbXQY4GeywwMnVm2qw1yLd1OwQ8nOm941qkNSuyW8=@lists.infradead.org
X-Gm-Message-State: AOJu0YyCeZMJyPx5E2tU/fkWU5wIsVErPSn65ptnMXXlw2DrZNeFoqVk
	B490uKJUKtDsqdHwrLa7H95FoI1boEtcoyfM+PFdk1tl71qa3AL+hJrZwaejtmA=
X-Gm-Gg: ASbGnctvopGAA3GTYC6tpt+y8slTcJEqMJw/2x129thqSHq/JwK0CDE8sGYTJ1QSs/z
	S7iHV0Cv5mm6OdptA/Ikm+1ZqKwpWg1OMwEs9LB+cYBj9Q0AGp2Ho519YYQf19wc4rhxwWKILIJ
	dXRBCHQDKh00Pz6f7id3Qlmb8uXqkzPgzBt7tC1ZSWCTcRm5TjtR2MPdHhh/pCO1Z7I4dGvt3UC
	T0Cn7CcN5g9niOpyIPRrwFCxJnRPrLd/q2jp4oieH+J6tpYUhe4hXfCYRhSmkFbGBIDFr3GRBq1
	Dz0pI3HHCDUkiF+xkNW5G4Qw3zsSIQ==
X-Google-Smtp-Source: AGHT+IHHxVFXWhGPPdA9ksqKTV8tWCXoqA5zp3uVM/KOFvDJ1Wc2NNeKT6Y5HEDYj4Oq06/7SimNdw==
X-Received: by 2002:a05:6512:32d4:b0:53d:cfe0:5937 with SMTP id 2adb3069b0e04-53dcfe059a2mr1179637e87.13.1732208445738;
        Thu, 21 Nov 2024 09:00:45 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd24455e6sm16713e87.3.2024.11.21.09.00.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 09:00:44 -0800 (PST)
Date: Thu, 21 Nov 2024 19:00:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Xin Liu <quic_liuxin@quicinc.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, 
	quic_jiegan@quicinc.com, quic_aiquny@quicinc.com, quic_tingweiz@quicinc.com, 
	quic_sayalil@quicinc.com
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: qcs615: add UFS node
Message-ID: <45cb4thpg6mrtxiwdb333w2jxgtpw426akik2l3f7qv57dvwmm@kma6vrglbrjh>
References: <20241119022050.2995511-1-quic_liuxin@quicinc.com>
 <20241119022050.2995511-3-quic_liuxin@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241119022050.2995511-3-quic_liuxin@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241121_090049_552631_45D1C9B6 
X-CRM114-Status: GOOD (  15.24  )
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

On Tue, Nov 19, 2024 at 10:20:49AM +0800, Xin Liu wrote:
> From: Sayali Lokhande <quic_sayalil@quicinc.com>
> 
> Add the UFS Host Controller node and its PHY for QCS615 SoC.
> 
> Signed-off-by: Sayali Lokhande <quic_sayalil@quicinc.com>
> Co-developed-by: Xin Liu <quic_liuxin@quicinc.com>
> Signed-off-by: Xin Liu <quic_liuxin@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 112 +++++++++++++++++++++++++++
>  1 file changed, 112 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> index 590beb37f441..ceceafb2e71f 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> @@ -458,6 +458,118 @@ mmss_noc: interconnect@1740000 {
>  			qcom,bcm-voters = <&apps_bcm_voter>;
>  		};
>  
> +		ufs_mem_hc: ufshc@1d84000 {
> +			compatible = "qcom,qcs615-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
> +			reg = <0x0 0x01d84000 0x0 0x3000>, <0x0 0x01d90000 0x0 0x8000>;

Please consider splitting to have one entry per line (and reg-names
too).

> +			reg-names = "std", "ice";
> +
> +			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_UFS_PHY_AHB_CLK>,
> +				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
> +				 <&gcc GCC_UFS_PHY_ICE_CORE_CLK>,
> +				 <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
> +				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>;
> +			clock-names = "core_clk",
> +				      "bus_aggr_clk",
> +				      "iface_clk",
> +				      "core_clk_unipro",
> +					  "core_clk_ice",

Wrong indentation

Other than that LGTM.


> +				      "ref_clk",
> +				      "tx_lane0_sync_clk",
> +				      "rx_lane0_sync_clk";
> +
> +			resets = <&gcc GCC_UFS_PHY_BCR>;
> +			reset-names = "rst";
> +
> +			operating-points-v2 = <&ufs_opp_table>;
> +			interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> +					 &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ALWAYS>;
> +			interconnect-names = "ufs-ddr",
> +					     "cpu-ufs";
> +
> +			power-domains = <&gcc UFS_PHY_GDSC>;
> +			required-opps = <&rpmhpd_opp_nom>;
> +
> +			iommus = <&apps_smmu 0x300 0x0>;
> +			dma-coherent;
> +
> +			lanes-per-direction = <1>;
> +
> +			phys = <&ufs_mem_phy>;
> +			phy-names = "ufsphy";
> +
> +			#reset-cells = <1>;
> +
> +			status = "disabled";
> +
> +			ufs_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-50000000 {
> +					opp-hz = /bits/ 64 <50000000>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <37500000>,
> +						 /bits/ 64 <75000000>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +				};
> +
> +				opp-100000000 {
> +					opp-hz = /bits/ 64 <100000000>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <75000000>,
> +						 /bits/ 64 <150000000>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>;
> +					required-opps = <&rpmhpd_opp_svs>;
> +				};
> +
> +				opp-200000000 {
> +					opp-hz = /bits/ 64 <200000000>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <150000000>,
> +						 /bits/ 64 <300000000>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>;
> +					required-opps = <&rpmhpd_opp_nom>;
> +				};
> +			};
> +		};
> +
> +		ufs_mem_phy: phy@1d87000 {
> +			compatible = "qcom,qcs615-qmp-ufs-phy", "qcom,sm6115-qmp-ufs-phy";
> +			reg = <0x0 0x01d87000 0x0 0xe00>;
> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
> +				 <&gcc GCC_UFS_MEM_CLKREF_CLK>;
> +			clock-names = "ref",
> +				      "ref_aux",
> +				      "qref";
> +
> +			power-domains = <&gcc UFS_PHY_GDSC>;
> +
> +			resets = <&ufs_mem_hc 0>;
> +			reset-names = "ufsphy";
> +
> +			#clock-cells = <1>;
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};
> +
>  		tcsr_mutex: hwlock@1f40000 {
>  			compatible = "qcom,tcsr-mutex";
>  			reg = <0x0 0x01f40000 0x0 0x20000>;
> -- 
> 2.34.1
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

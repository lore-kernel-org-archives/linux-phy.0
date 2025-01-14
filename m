Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C008E77188
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jan 2025 10:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DeZzVGGg5U2WLLahiMxAb+PNcNwR/ZJY6nEBonDLyPQ=; b=KD9obAUw8Hl/gE
	bH2quu8rmpGhjPQZZLOqw1RWP06icj341BYdEM3BQpqV6xlFzYZos2tmIjwoPog1Z4QQKoHlOwov2
	Vd7q8IUB6O49CQ9/cQFHgnUhHzPT9ojaQNyEJ9VSN+sHNWikwD5yxHNexEGTsU8MSLYoTvmSAqA8o
	x+1M/dPlU/sjb/dc3SVbXzwWvzxiSXYDK3SDuc2PJrJA8yvI3TFaTQkeDOimdqZZSjoTzZFEqW3Vl
	u1lXND+CL1OexRK+5RObllSoO3XdVlQe0xF+MxK1uToIwNZlBWEYsw4xu6dwfH9QyoHZeSYy99MpT
	TBRr+TFCis11EzoLzGvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXeX5-000000089c1-0FMY;
	Tue, 14 Jan 2025 10:52:27 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXeX2-000000089bQ-1sco
	for linux-phy@lists.infradead.org;
	Tue, 14 Jan 2025 10:52:25 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-54024aa9febso4657565e87.1
        for <linux-phy@lists.infradead.org>; Tue, 14 Jan 2025 02:52:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736851943; x=1737456743; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rN4m3NQ5n5N7wtBEgakYpYBKKXw32xM8SaDJsWoHWYE=;
        b=rw+3oYivt/7gT30WAsx4vf4GbGGp+ZOwpaeN/VfXPGs3si12+8zyq9p7uPwYmgBLmm
         WHNDvDgO3grNXedmlvIzl792O7b88vbkTWhN+VPkU+21pg2jV12kvyEkUUt2wIEfcKOc
         pdI1UWw3Fep3cX9Dr8tDyua+elFxNsR1hnDNWGatKEpb0VB1fyrukqwtwzt+Ooy0gSxi
         qvszO6YSPn5LsZrRmjAxlPM+SQTCrSOHeVcxOkcE3JY3Xwd5yQHcSOa2Oa8VW+wVhFPb
         mHF5T+9RUSh7g5d4W5BzybUSrIVIvdpxcaUllxwOmAeV7SblPNvt2oRKUXoKtTkMRf6g
         0aWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736851943; x=1737456743;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rN4m3NQ5n5N7wtBEgakYpYBKKXw32xM8SaDJsWoHWYE=;
        b=S1hnopRbMwNNwDTOf9DC835RMcqfaNarpKgj+qq6WeKppN7w7QGt9eBq8poj8NvcJD
         O5VfA50guBNi7y3CD9AOAfefrTPV/eWeOZXGBQsr2O2uwlLF7IE/D6EjimEg+Cq8QLAU
         w6DAR6PRzvGkQ+2H5gSeObN6Y6k0txm6YsVC5/E/mdJSvn/eFn1dShJLOJmE9U40zj6l
         DnZWJVBMW7saYCYGAFiCZZUF1Ft/jfPCpuCNdvy1yqhMz4vbXvaA0vQaXVNiDngBRJDN
         AbbawwNxnQqfeRHzKvzfui0o54qOmsgqM7DzLkOPUK9GdwN2u9A2sXzeB15Dd2xIV7OT
         mGCA==
X-Forwarded-Encrypted: i=1; AJvYcCVEvYvtiHFrWbc6pVt0BiQGPuCReDihNOSemSnT7gPjQAFdHTCQW1/Nt7rhdmaLIbhhf/mhcdZrg0g=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/eDbKZTZ2VMAc1A3li/rG6A4qajjOy8joVHEPpOUJgQ0Ck43s
	dGZLUhLeTB2QPTPviHQEld7frE8FcsOhbLWaX9cmAxYQNpO/iA+Ku25k2OAj0zs=
X-Gm-Gg: ASbGncsPGN0KnyBWf+7GPti6r7luALlVr/j95hgL6C0eseUOHnjHpFzc2xmHYRTQOgs
	u/kKA6W759b0StZj2Yn3IaZKp16RYhqlbeE3AsknWDFuGBCWM/67rACeG9uITHqECCE2XjYTCA2
	r1g+dafetDymnHlK2QFaZQ6EHx1RRkpH2wx4QJ2untqYKKEGHE8U86Y8o2FnKzob8jnc1okhdIU
	f9leryrFyZO3Dr/NQU7SAPWLiCpWMySlS6+nAUXEjh7r7DGmMm4yzSrvJcNmT/S/o4wywO2qU4U
	5ws6LxCY4P5Y/DUa8KMQjHR8hPmGeUIU8PYJ
X-Google-Smtp-Source: AGHT+IFXNDZ+6CVMWolZf+t30Za37hYF2mQh5sPd0zYDKOS8PyTtXOJy3bJAdSC7lS3KwvFjETHcXA==
X-Received: by 2002:a05:6512:3d22:b0:540:2022:e3b7 with SMTP id 2adb3069b0e04-5428481c05emr6867029e87.53.1736851942720;
        Tue, 14 Jan 2025 02:52:22 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428be540c6sm1677395e87.71.2025.01.14.02.52.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 02:52:21 -0800 (PST)
Date: Tue, 14 Jan 2025 12:52:19 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, 
	Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, 
	Nitin Rawat <quic_nitirawa@quicinc.com>, Manish Pandey <quic_mapa@quicinc.com>
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sm8750: Add UFS nodes for SM8750
 SoC
Message-ID: <vifyx2lcaq3lhani5ovmxxqsknhkx24ggbu7sxnulrxv4gxzsk@bvmk3znm2ivl>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <20250113-sm8750_ufs_master-v1-4-b3774120eb8c@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250113-sm8750_ufs_master-v1-4-b3774120eb8c@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250114_025224_496629_4DD1F285 
X-CRM114-Status: GOOD (  14.35  )
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

On Mon, Jan 13, 2025 at 01:46:27PM -0800, Melody Olvera wrote:
> From: Nitin Rawat <quic_nitirawa@quicinc.com>
> 
> Add UFS host controller and PHY nodes for SM8750 SoC.
> 
> Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 81 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 81 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> index 3bbd7d18598ee0a3a0d5130c03a3166e1fc14d82..20690c102244b337847a6482dd83c37e19746de9 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> @@ -13,6 +13,7 @@
>  #include <dt-bindings/power/qcom,rpmhpd.h>
>  #include <dt-bindings/power/qcom-rpmpd.h>
>  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
> +#include <dt-bindings/gpio/gpio.h>
>  
>  / {
>  	interrupt-parent = <&intc>;
> @@ -1939,6 +1940,86 @@ mmss_noc: interconnect@1780000 {
>  			#interconnect-cells = <2>;
>  		};
>  
> +		ufs_mem_phy: phy@1d80000 {
> +			compatible = "qcom,sm8750-qmp-ufs-phy";
> +			reg = <0x0 0x01d80000 0x0 0x2000>;
> +
> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
> +				 <&tcsrcc TCSR_UFS_CLKREF_EN>;
> +			clock-names =	"ref",
> +					"ref_aux",
> +					"qref";
> +
> +			resets = <&ufs_mem_hc 0>;
> +			reset-names = "ufsphy";
> +
> +			power-domains = <&gcc GCC_UFS_MEM_PHY_GDSC>;
> +
> +			#clock-cells = <1>;
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};
> +
> +		ufs_mem_hc: ufs@1d84000 {
> +			compatible = "qcom,sm8750-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
> +			reg = <0x0 0x01d84000 0x0 0x3000>;
> +
> +			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_UFS_PHY_AHB_CLK>,
> +				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
> +				 <&rpmhcc RPMH_LN_BB_CLK3>,
> +				 <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
> +				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
> +				 <&gcc GCC_UFS_PHY_RX_SYMBOL_1_CLK>;
> +			clock-names = "core_clk",
> +				      "bus_aggr_clk",
> +				      "iface_clk",
> +				      "core_clk_unipro",
> +				      "ref_clk",
> +				      "tx_lane0_sync_clk",
> +				      "rx_lane0_sync_clk",
> +				      "rx_lane1_sync_clk";
> +			freq-table-hz = <100000000 403000000>,
> +					<0 0>,
> +					<0 0>,
> +					<100000000 403000000>,
> +					<100000000 403000000>,
> +					<0 0>,
> +					<0 0>,
> +					<0 0>;

Use OPP table instead

> +
> +			resets = <&gcc GCC_UFS_PHY_BCR>;
> +			reset-names = "rst";
> +
> +
> +			interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> +					 &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ALWAYS>;

Shouldn't cpu-ufs be ACTIVE_ONLY?

> +			interconnect-names = "ufs-ddr",
> +					     "cpu-ufs";
> +
> +			power-domains = <&gcc GCC_UFS_PHY_GDSC>;
> +			required-opps = <&rpmhpd_opp_nom>;
> +
> +			iommus = <&apps_smmu 0x60 0>;
> +			dma-coherent;
> +
> +			lanes-per-direction = <2>;
> +
> +			phys = <&ufs_mem_phy>;
> +			phy-names = "ufsphy";
> +
> +			#reset-cells = <1>;
> +
> +			status = "disabled";
> +		};
> +
>  		tcsr_mutex: hwlock@1f40000 {
>  			compatible = "qcom,tcsr-mutex";
>  			reg = <0x0 0x01f40000 0x0 0x20000>;
> 
> -- 
> 2.46.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAED8CD6137
	for <linux-phy@archiver.kernel.org>; Mon,  9 Oct 2023 21:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FaUomk2GoEX7UoHqe4qITsozdxsFteVLgdH2PftRiTA=; b=x4pc2Bcq7RFDRP
	GHku34hoZenbn8CMkQLdN7hCt94bdNF/JH8J0VMJejpMuKdulJ3b7JDiP6D/Q3Ubk9CLVzIpfX1hI
	mi0tRUn1z4w8Pv3Vm8l3SGrz9mhJYkNlrMuf8XViXcvhe7WUfaHNE6co6Xv0U5JBGTlD97nUGAZS0
	MDYN6JZbzFaT3DIiSraaVbQgmeCgaO+uZ3FkrognRR5uWz+rSZmuPsjRsuyXlYrZu5/1Of2eUhm/c
	T69qUSfCIpzGPHSC8OgH/tTzdqpfe8IfF+Fz86WXqURaMTvULTxuezeW1ztJEUQniwJxtM+0aQYa1
	G3+i3eQR7eB031xqBS/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpxYS-00Bd8t-1u;
	Mon, 09 Oct 2023 21:12:44 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpxYP-00Bd8G-0q
	for linux-phy@lists.infradead.org;
	Mon, 09 Oct 2023 21:12:43 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-5044dd5b561so5958573e87.1
        for <linux-phy@lists.infradead.org>; Mon, 09 Oct 2023 14:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696885957; x=1697490757; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jGoGhItmjXMm5592hTQT86oDx5AEAugpeAAG92Ldv9c=;
        b=i4uXV8cAL0ykugWBubUFyVo8m89S0U+E/Z0bjQ9Kjab5yDjxNS3FLbCwWqKQqAab47
         WSYR39Yd/saSYjvPxJpfWvmyQo3okC6Hj1XH509c5liQ++dbjWhoiUY/PeiiA1jGuoQm
         3c5+Dm9vlSRu4PGztdcR47kcAo6SnKriQfoTilsK68EVjYrF0fPRAyhVEs7cbBoWfc7t
         v8DtlzyT4wYHEaJHUo0ihn4gdw2ON6hbwLSj2FTBi0O/w3rRbNge42XjsQxGtqJLTKgg
         SiCPJtPQNuZvVa23C2+2iY/xT+wun5/7YEDHer++PTc62Wm/wHC5BhGPQFbq68UEe5FF
         db0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696885957; x=1697490757;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jGoGhItmjXMm5592hTQT86oDx5AEAugpeAAG92Ldv9c=;
        b=AqU4S17P6N1hoxW+w2c2dRpl4wTCSTatdYvBfwlPcajCDsZ0ON9cKZOMu/oPlPT8pE
         WDJjwUy1W55mLlbNYv0h+7iDdh4j3h0YuBSe8ncLWcrEmgZfde/GlA+FhmUi8WfAdzYp
         Two2NIPVC9R4oq5kpoq3mWIy5rkuzRkxSp+WZPiektsjj5gwhN+JKI4Zienigd4kanh1
         dnbKo5iWgPQDVQXUR3g1+6xzNT3v7M9lV5tDvmq9aUHNXsy46tUjRzmEczIw/IJyOTDf
         8Gu7GCphaevIh3dC4IqfsMjKB4s/t+pvj/52XwUNks5MTUCkMH9ikRvMh9I2HVO7gPWG
         WhAA==
X-Gm-Message-State: AOJu0YwVOz7VCa5tDRzDPtv4HLo9/sGFpdilke8cQ035zXiR/7FbMsSB
	vgiiWpAnTj5KCQ++USJw8FmYHg==
X-Google-Smtp-Source: AGHT+IES2gxCqlfZ4jVm2fkrFudmIdnYvMcqyuJquOODcke/lKVXTFzg0TPAm6K5BgdJCoKWv5t6WA==
X-Received: by 2002:a05:6512:138e:b0:503:7dd:7ebc with SMTP id fc14-20020a056512138e00b0050307dd7ebcmr18050066lfb.18.1696885957242;
        Mon, 09 Oct 2023 14:12:37 -0700 (PDT)
Received: from [172.30.204.90] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id w10-20020a19c50a000000b005056efabed0sm1563171lfe.29.2023.10.09.14.12.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Oct 2023 14:12:36 -0700 (PDT)
Message-ID: <c69dc6e0-30a8-460c-a718-99874b543534@linaro.org>
Date: Mon, 9 Oct 2023 23:12:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/7] arm64: dts: qcom: sc7180: Add UFS nodes
Content-Language: en-US
To: David Wronek <davidwronek@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, Joe Mason <buddyjojo06@outlook.com>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 hexdump0815@googlemail.com, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20231007140053.1731245-1-davidwronek@gmail.com>
 <20231007140053.1731245-6-davidwronek@gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231007140053.1731245-6-davidwronek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_141241_326595_1D809330 
X-CRM114-Status: GOOD (  13.58  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 10/7/23 15:58, David Wronek wrote:
> Add the UFS and QMP PHY nodes for the Qualcomm SC7180 SoC.
> 
> Signed-off-by: David Wronek <davidwronek@gmail.com>
> ---
>   arch/arm64/boot/dts/qcom/sc7180.dtsi | 70 ++++++++++++++++++++++++++++
>   1 file changed, 70 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index 11f353d416b4..9f18be4fd61a 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -1532,6 +1532,76 @@ mmss_noc: interconnect@1740000 {
>   			qcom,bcm-voters = <&apps_bcm_voter>;
>   		};
>   
> +		ufs_mem_hc: ufshc@1d84000 {
> +			compatible = "qcom,sc7180-ufshc", "qcom,ufshc",
> +				     "jedec,ufs-2.0";
> +			reg = <0 0x01d84000 0 0x3000>,
> +			      <0 0x01d90000 0 0x8000>;
> +			reg-names = "std", "ice";
Recently the ICE was separated into its own node

> +			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
> +			phys = <&ufs_mem_phy>;
> +			phy-names = "ufsphy";
> +			lanes-per-direction = <1>;
> +			power-domains = <&gcc UFS_PHY_GDSC>;
> +			#reset-cells = <1>;
> +			resets = <&gcc GCC_UFS_PHY_BCR>;
> +			reset-names = "rst";
> +
> +			iommus = <&apps_smmu 0xa0 0x0>;
> +
> +			clock-names =
> +				"core_clk",
Remove the newline after the =, here and below

> +				"bus_aggr_clk",
> +				"iface_clk",
> +				"core_clk_unipro",
> +				"ref_clk",
> +				"tx_lane0_sync_clk",
> +				"rx_lane0_sync_clk",
> +				"ice_core_clk";
> +			clocks =
> +				<&gcc GCC_UFS_PHY_AXI_CLK>,
> +				<&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
> +				<&gcc GCC_UFS_PHY_AHB_CLK>,
> +				<&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
> +				<&rpmhcc RPMH_CXO_CLK>,
> +				<&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
> +				<&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
> +				<&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
> +			freq-table-hz =
> +				<50000000 200000000>,
> +				<0 0>,
> +				<0 0>,
> +				<37500000 150000000>,
> +				<0 0>,
> +				<0 0>,
> +				<0 0>,
> +				<0 300000000>;
> +
> +			interconnects = <&aggre1_noc MASTER_UFS_MEM 0 &mc_virt SLAVE_EBI1 0>,
> +				<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_UFS_MEM_CFG 0>;
Please make the <s align and use QCOM_ICC_TAG_ALWAYS from 
include/dt-bindings/interconnect/qcom,icc.h like in sa8775p.dtsi
> +			interconnect-names = "ufs-ddr", "cpu-ufs";
> +
> +			status = "disabled";
> +		};
> +
> +		ufs_mem_phy: phy@1d87000 {
> +			compatible = "qcom,sc7180-qmp-ufs-phy";
> +			reg = <0 0x01d87000 0 0x1000>;
> +
> +			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
> +				<&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
Please align the <s

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

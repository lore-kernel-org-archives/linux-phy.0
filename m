Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F423C7618D
	for <linux-phy@archiver.kernel.org>; Thu,  6 Apr 2023 20:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UWVD14JBz+VYi1pzGlI4fux9hQlQ1QxgT28OORH3GNo=; b=4dIbyBgr2ruW+7
	CAlsCcvf7zcNKyqglHgBu4wB/VD0pWBohE0/D5HcW4EQncEjiDOgXhfHptkhWX99USfDTi6dLA7s1
	4cf6IRUZN4t2V8JL0cM5sY/eaN5MlqVBqg0ZbO0f/uWJZvTom/1aOT3rehLq5w/mtPbaoz7vc7Jej
	ajIqQVLMQq5cXSe3ojsJix6Uh0LzsQorU0KtiJMgrb2+8Bo3yikxMc0UebOSPzrTm1UBiJlsfx/lD
	nG3hMq8b+v2odE0O//5i8EDLwOsZhHbtlIcQvAUZfaqdeoAkGdN8e6u+BdeqiUndQXXZko75fOORW
	7IQSWD+HFijcqz3xoQmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkWIc-008XfH-1s;
	Thu, 06 Apr 2023 20:33:38 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkWIY-008XeP-22
	for linux-phy@lists.infradead.org;
	Thu, 06 Apr 2023 20:33:37 +0000
Received: by mail-lf1-x132.google.com with SMTP id g19so39218566lfr.9
        for <linux-phy@lists.infradead.org>; Thu, 06 Apr 2023 13:33:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680813212;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dONEmhUJMhKYFyZCBXcrCjLm9T5FLjoW/K6qSBrVWs8=;
        b=iXhYZHOsYYYByLIA54EIRN5iC1g9jRD/H4vcAjIRVUNPxfUo6SjOyNgbGDjm5sAiue
         jubnPKPMjjmxtQDKeS6mmlRhRjIeQSZDA4Rnevei6eELX0UwkBaUiDD2557RfOvIOigA
         JdOK7tx8C8ejzaAS2c7nWwtYXa5VL0eD9o9LU8aiMDgKiXYeIIzK3EuDFoVOF8EFvdiB
         gKuF94X6obIasywVx+EVNlehhtOsuqTLkcYMDSE1HXVQBw5WLu7kPOVGuSvG1FrMifII
         CQPNSnE7Q8gFxF0RqHkN36Ts//vYU5rzFrqjMvRP9VOYZVsjOBO/y/YB32JSEtvlQbnv
         9gtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680813212;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dONEmhUJMhKYFyZCBXcrCjLm9T5FLjoW/K6qSBrVWs8=;
        b=LJo08M/jFKIP1p6P4Iqa9w1PE65NdnS+UrIqIFbqMQRTghYHUotMzOJoVTAenCeWV1
         gT3wA9tEUMzrHJINaapFVHAGJDzpOn5B8YUn9hOtkjyd2cPiZHxXZ9Wue2FemUVRTznO
         M2zYtlM1l2B7CBDptwCPOdABpzMy+CmbK0JfYe4/i/mAr3TdpdXLRaolcPEC0iVjdX7P
         +WzKqwNLj4yuCQax050fxkm+OJ1JXrjjAQvuEk2UMvb4kTSbHLbeRfzKgc3EkbNGfpDn
         jQrOhbZ5fc9jZWxt/0qqeq9FgcCpJlwfvRrTpo9d3vJc1VMfwA+WyHFMT2rX+owcmTWO
         s7Xg==
X-Gm-Message-State: AAQBX9cFmYMsBWNUHW/eU6H4oXKLUdbPgqnRZCL4nZ1jipSBelW/Lvqh
	W/Sqy9UHpNufpWxYxBcgY3R3iA==
X-Google-Smtp-Source: AKy350aK+D04bDPlVQe02bcm3DZA2ygZJUKZhuGRc1v3vQWp0mlWlfT3uHMd/Rqq0oinC0UjePn6Ew==
X-Received: by 2002:a05:6512:3ca6:b0:4dc:8049:6f36 with SMTP id h38-20020a0565123ca600b004dc80496f36mr1912599lfv.1.1680813212065;
        Thu, 06 Apr 2023 13:33:32 -0700 (PDT)
Received: from [192.168.1.101] (abxh37.neoplus.adsl.tpnet.pl. [83.9.1.37])
        by smtp.gmail.com with ESMTPSA id d13-20020ac24c8d000000b004db3d57c3a8sm405663lfl.96.2023.04.06.13.33.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Apr 2023 13:33:31 -0700 (PDT)
Message-ID: <9f4cb333-bea0-0849-e8a6-dd96cb09bdbd@linaro.org>
Date: Thu, 6 Apr 2023 22:33:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v2 4/5] arm64: dts: qcom: sa8775p: add UFS nodes
Content-Language: en-US
To: Bartosz Golaszewski <brgl@bgdev.pl>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Manivannan Sadhasivam
 <mani@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20230406194703.495836-1-brgl@bgdev.pl>
 <20230406194703.495836-5-brgl@bgdev.pl>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230406194703.495836-5-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230406_133334_672355_28C43124 
X-CRM114-Status: GOOD (  14.32  )
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



On 6.04.2023 21:47, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Add nodes for the UFS and its PHY on sa8775p platforms.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 58 +++++++++++++++++++++++++++
>  1 file changed, 58 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 2343df7e0ea4..5de0fbbe9752 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -585,6 +585,64 @@ &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
>  			};
>  		};
>  
> +		ufs_mem_hc: ufs@1d84000 {
> +			compatible = "qcom,sa8775p-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
> +			reg = <0x0 0x01d84000 0x0 0x3000>;
> +			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
> +			phys = <&ufs_mem_phy>;
> +			phy-names = "ufsphy";
> +			lanes-per-direction = <2>;
> +			#reset-cells = <1>;
> +			resets = <&gcc GCC_UFS_PHY_BCR>;
> +			reset-names = "rst";
> +			power-domains = <&gcc UFS_PHY_GDSC>;
> +			required-opps = <&rpmhpd_opp_nom>;
> +			iommus = <&apps_smmu 0x100 0x0>;
> +			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_UFS_PHY_AHB_CLK>,
> +				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
> +				 <&rpmhcc RPMH_CXO_CLK>,
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
> +			freq-table-hz = <75000000 300000000>,
> +					<0 0>,
> +					<0 0>,
> +					<75000000 300000000>,
> +					<0 0>,
> +					<0 0>,
> +					<0 0>,
> +					<0 0>;
> +			status = "disabled";
> +		};
> +
> +		ufs_mem_phy: phy@1d87000 {
> +			compatible = "qcom,sa8775p-qmp-ufs-phy";
> +			reg = <0x0 0x01d87000 0x0 0xe10>;
> +			/*
> +			 * Yes, GCC_EDP_REF_CLKREF_EN is correct in qref. It
> +			 * enables the CXO clock to eDP *and* UFS PHY.
> +			 */
> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
> +				 <&gcc GCC_EDP_REF_CLKREF_EN>;
> +			clock-names = "ref", "ref_aux", "qref";
> +			power-domains = <&gcc UFS_PHY_GDSC>;
> +			resets = <&ufs_mem_hc 0>;
> +			reset-names = "ufsphy";
> +			#phy-cells = <0>;
> +			status = "disabled";
> +		};
> +
>  		tcsr_mutex: hwlock@1f40000 {
>  			compatible = "qcom,tcsr-mutex";
>  			reg = <0x0 0x01f40000 0x0 0x20000>;

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

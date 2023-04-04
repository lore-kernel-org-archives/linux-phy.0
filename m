Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94CE7C761A6
	for <linux-phy@archiver.kernel.org>; Tue,  4 Apr 2023 18:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r4ZCo0aeSTNwP4CRf59DDP67MjWYhcXEKAfyqeW5r04=; b=TRRQOllVUmJokB
	QjVPeh0sZdag+pkkaAV+SOiuUlYIzfpUET0oe96PYkSbEmpsEV/WVN0bNyp5KwE/tuYnP2TR01MfX
	LXUGMUbFe4eOX50cT1GZIRbBUbedu9XjS6qiFKbQTVT7Kj/vc36NWifu8qOMmozui/2imgGoKfZLP
	QVTuBwrEU1cwt54jXFxZ/GkPdaxF1lzwn6w/9YL+IfsPqjB/8Ky1B4AKEgEkXWaT+l8GkPkCNH67T
	QNxVxnG+CbfdtTP/pEoiqD935PVVY0GCFXa4h1QziwOFuBavm7+Wp9h4DvNXyp41pvuXvFNwBjkMB
	qTAn3AiRylvNiw8CGAJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjlXo-002Wua-0c;
	Tue, 04 Apr 2023 18:38:12 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjlXl-002Wtg-09
	for linux-phy@lists.infradead.org;
	Tue, 04 Apr 2023 18:38:10 +0000
Received: by mail-lj1-x234.google.com with SMTP id x20so34876288ljq.9
        for <linux-phy@lists.infradead.org>; Tue, 04 Apr 2023 11:38:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680633487;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=r0v+inyVMSxumUxkXEg0IMy1xpo29RCtCfHQnamMFuY=;
        b=SGviJSWpa4o4eiL6gw+EP/0NI2Wd1z4iACXy9aXPAznCuQ8RkmzpKgmtCAX0Vu6Vbw
         XyjPi+RTRoaJWKHYa/LalcxUMCvlLnAzfFJ/S2NqpM5gDM0dAS8ABstHajL/lc9MuthF
         jbj+JCvl1auodY4U82dEjEGDrp3/e651A2y5IqzNbQ0ztYiCwONYbeOZyXxLgKHzhaQV
         +c864JPo5eGLZa8Kh4kOxRSeWxjpHBzJYsLRTit/cuaMp2vYZxbaD4RvjSVyvFGIocWj
         IwqM0FoGXczljKBkqzhVl1U/zQPG11pHLMvwRBFqoCqqNqLNjx68224EaTgeLuNO7/5M
         x2jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680633487;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r0v+inyVMSxumUxkXEg0IMy1xpo29RCtCfHQnamMFuY=;
        b=iZOwTZL7lcj6ZyN4YKAAFHBpbJlOsGycdmkLF5scdov7KMjbhxkcL8Vjg1lpyvAKAq
         hmPCC0sULKj7hdH5JSO2wnFSVs/cTX3VEqqlvtr7XPpPqTD3Ebd7ip9Cb26Ljo9Ch5Z8
         /nYQfCtA/OW9ZD88mqmWq6qyAYtOKfDpPd8VCGoo5pyHY3NMe9fhtCzdSPv2rfAIG+li
         EEZdc5iyoichWMpOYRMq629kMIH1LNHE1VB8bdxwCEflne6siMt6OrvlU043h2COpwqf
         mtaOF9pY0V2ihRFLMaj9AjfEjC9cwm4p4pzG/6DuoEKeps7XMqBI8KySHDMa5PSLHPsC
         iw2g==
X-Gm-Message-State: AAQBX9fuv5IwLL0b5onniTGURiz7NlRxqQBG0eF8kdN3BgmDuaA3mBxv
	raY6d9Yf27PtDJKBWPLenAiIww==
X-Google-Smtp-Source: AKy350aaeDXjGJ0QphUqfp4sFI+LB8O5NTshtcAt+oZjYG33GJY8acRCwNzZDjzLgMmBg+sCjqyEWg==
X-Received: by 2002:a2e:7d0f:0:b0:298:ad8e:e65 with SMTP id y15-20020a2e7d0f000000b00298ad8e0e65mr1209834ljc.21.1680633486886;
        Tue, 04 Apr 2023 11:38:06 -0700 (PDT)
Received: from [192.168.1.101] (abxh37.neoplus.adsl.tpnet.pl. [83.9.1.37])
        by smtp.gmail.com with ESMTPSA id u24-20020a2ea178000000b002a61bd34f63sm2471403ljl.84.2023.04.04.11.38.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Apr 2023 11:38:05 -0700 (PDT)
Message-ID: <3bf62942-117f-b016-0e64-31829816aa1d@linaro.org>
Date: Tue, 4 Apr 2023 20:38:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sa8775p: add UFS nodes
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
References: <20230331195920.582620-1-brgl@bgdev.pl>
 <20230331195920.582620-5-brgl@bgdev.pl>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230331195920.582620-5-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_113809_095071_EF2C8660 
X-CRM114-Status: GOOD (  13.56  )
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



On 31.03.2023 21:59, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Add nodes for the UFS and its PHY on sa8775p platforms.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 54 +++++++++++++++++++++++++++
>  1 file changed, 54 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index de5e8449397c..c737e67b9239 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -586,6 +586,60 @@ &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
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
> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
> +				 <&gcc GCC_EDP_REF_CLKREF_EN>;
EDP? 0_o

Konrad
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

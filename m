Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58B35EB64D9
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 12:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=la08t8KbiPU/H5/X1ipxrz+S13gZAifwJeyzR3sCJwo=; b=fblv0ORdxpmOWM
	V3vZx12NoHO1TpeIbp4zOJGdkOD0GUnbtCsSKnqIqFoT5d794gh+1KGfwux9CC0MTSc89ZRJRXySZ
	FVJ+i9xj1Ng5oe5lCtTgSLsKor6S3+abCj1DeWkkr+u8mRaj5s1FSRkMY14rssgze68JyDZrn9gdR
	ELwB8mEN49H1OyXrD2L4nGErdFDxeXzGRcKZLkYCj/dhy0llDkCYH9rkozQzll0sq3owknGub4RhP
	JoPI+xXjxqUfrfsOvirjV9yU4dmikwSuvgbxYVGOQ/AmexVTXfZ8xcr8A+CvryH1fr+HLzD0vhBER
	1fZIWKG4eUwAITGixxbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9mX2-00EwNJ-38;
	Thu, 15 Jun 2023 12:56:56 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9mX0-00EwLn-1R
	for linux-phy@lists.infradead.org;
	Thu, 15 Jun 2023 12:56:55 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-4f004cc54f4so10512119e87.3
        for <linux-phy@lists.infradead.org>; Thu, 15 Jun 2023 05:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686833812; x=1689425812;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v1CbTBRn8vQDvPf6Z2biUED1bJGUXq/a80Hy0PH+rSA=;
        b=pIzCccIMIRGK2q25DpBRdjMSE9rF2EraF12WiZ8h6N7uHRGusZ2WBw7HdRHqX2CeL5
         EKul/KBbvQJkKxXtT093+Wj1U/LHPnCAmqvmia0QrGEdbHfA+Zss1Abfir1yj56IH/9o
         uOGSulxNPYsuDFKg+RHzEHMoS48IYece+jmC5VW4+cnXP4VxKmfwBOr++lmyPuey5vXe
         Pq6ZGehysyoWw4MAO8BKFLiDiFqbT/PklBljqRPuA896y5RlHwx4Tm5/0eWdIxhu0TtZ
         ubzHiTGNXQ4XpK81GBliesQcRh1r6v4SjeNXQbHNPM0IOGA+tRleTV9kXy14TroVf1Lt
         d4gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686833812; x=1689425812;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v1CbTBRn8vQDvPf6Z2biUED1bJGUXq/a80Hy0PH+rSA=;
        b=jsAMxXZt669yZLNIfhwPHT1Qbp3yK05txECJ1pI1fQTlXpnCfiVXLOK4mDQ/01ukYr
         xM3hPRGhGx7slaCbkzq3MzhVuGdxEBAdkAwdMKekmrJLU9oYxLk2hU3jX2wdE7YCEFi6
         YVpQL1dFv7E2mDM8sc4Xc/JcWzrBnosqA9g/J+2pGggyCTRK1TzfS1bYGJoUadxprZdj
         GJO4Tedeqp70a//l44qhp0sZM2DEEOKLe/VtlDbKe6f/yQ5TZ6wP07mP0xUaerYkhPH6
         5JG2vGPBPM6i0HmbRPptYGfCm8i7uJkGxWF2mWou+6FKeRvExB3VWUvq4OtPYzz3c1V+
         z58w==
X-Gm-Message-State: AC+VfDyzcPjXsHI3ZOThGpTPByWYNNsjdRJvu4NVsy6cgkGvsOCOwtbr
	JkN7u7fA9q6yvVbjpEHY7oQsgA==
X-Google-Smtp-Source: ACHHUZ4idKi9MKj9dACNe9eMwOfmRi1oqlCWD4/JIb33nDqyZCNa4kpiBxTMJ7GeUtyUjAUAiC/Yng==
X-Received: by 2002:a05:6512:48b:b0:4ef:ed49:fcc2 with SMTP id v11-20020a056512048b00b004efed49fcc2mr11392533lfq.26.1686833811790;
        Thu, 15 Jun 2023 05:56:51 -0700 (PDT)
Received: from [192.168.1.101] (abyj190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id l9-20020ac25549000000b004f63739e2f1sm2559845lfk.255.2023.06.15.05.56.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jun 2023 05:56:51 -0700 (PDT)
Message-ID: <18103637-c191-9b8f-7983-d0b1591f9024@linaro.org>
Date: Thu, 15 Jun 2023 14:56:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v2 19/23] arm64: dts: qcom: sa8775p: add the SGMII PHY
 node
Content-Language: en-US
To: Bartosz Golaszewski <brgl@bgdev.pl>, Vinod Koul <vkoul@kernel.org>,
 Bhupesh Sharma <bhupesh.sharma@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20230615121419.175862-1-brgl@bgdev.pl>
 <20230615121419.175862-20-brgl@bgdev.pl>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230615121419.175862-20-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_055654_485664_3035741B 
X-CRM114-Status: GOOD (  12.42  )
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

On 15.06.2023 14:14, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Add the internal SGMII/SerDes PHY node for sa8775p platforms.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index b130136acffe..b6d95813c98c 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -1837,6 +1837,15 @@ adreno_smmu: iommu@3da0000 {
>  				     <GIC_SPI 687 IRQ_TYPE_LEVEL_HIGH>;
>  		};
>  
> +		serdes0: phy@8901000 {
> +			compatible = "qcom,sa8775p-dwmac-sgmii-phy";
> +			reg = <0x0 0x08901000 0x0 0xe10>;
> +			clocks = <&gcc GCC_SGMI_CLKREF_EN>;
> +			clock-names = "sgmi_ref";
> +			#phy-cells = <0>;
> +			status = "disabled";
> +		};
> +
>  		pdc: interrupt-controller@b220000 {
>  			compatible = "qcom,sa8775p-pdc", "qcom,pdc";
>  			reg = <0x0 0x0b220000 0x0 0x30000>,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

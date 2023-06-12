Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9298C7EE23
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 09:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1drCVUS98VRZXGyxqzim8q15D+IevVuuu+W0DFtbBHM=; b=tjvzAel+LBBk9/
	vHRHVYwcEYUQZSWkmtjJJ1K3xY0hMtCF5ul0LL/hE/ZgO5TMELIqjMsN6zM2w4fcUjnxZCdq4GfeH
	pcQWu26QzUtUegV+AHCz1VThm4UWi6dngVcdbnylBVEMe6SNeStzHPQKEgS0WefR/Y5uP5JEbQbr5
	am+rqJtpDOpCvxsodrxFwgmDvf5q3T9/UCHL964gAZA1vQjGTex2h2yRKVa0oPEEZoYbWhWWscw/B
	yH29246FLPczufklrEUoJe9wzaWhD85Mu44SG+7dbN+/FjE2e+LKGyGS1fTaM2BqfbTIY/7luGbNI
	cvxRGtMop04TyohBicGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dxv-003KQx-1Z;
	Mon, 12 Jun 2023 09:35:59 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dxt-003KQ8-0G
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 09:35:58 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-4f62b512fe2so4921289e87.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 02:35:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686562555; x=1689154555;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EVRsoBw2mYIKseG/0Qd8GC6oHBJlAAcz7DAhIfqh+7s=;
        b=Rwr9kl19lrfXZO0AeqyotRMwrSFgHnX2AoP9H6w4oq+N6tErLHtVV+lzHKFYdeULvb
         0pmtApmxu/AUW/D4E+4XdehvlfPdV8hcOHKPHv6o37u4RTUzH7lrEQO6A6RrJA4LYSTe
         cuerQiT4YbiV5uOghU2r35CX6IQAn0XlgVO84KYd+2mU1hLnzNIEtKPudu4D2NKk9DOC
         tXKGnDD35U+C60x+tSU/qUHuRH9UI3YphmR8XP8r0xRKbFH1o2Fo+8syvQtxj8Tqp66k
         vW8fcMPyDnIddHxQ8A7AVPkk+qmP55MTnznHaLlLWG7lpCu53xpBBjSugjQFeU9dB4jH
         7Apw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686562555; x=1689154555;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EVRsoBw2mYIKseG/0Qd8GC6oHBJlAAcz7DAhIfqh+7s=;
        b=bwZUBNPwJ/FthnOjXvbYa6RrcrwaoUtOC0t/35sZYTwadNr/SEXPOXDUUt77yCUGqm
         mr2btsF8kmXCo+LneTSTy6IaFlKC9CUdp3kOdjZzGza28pQYlBZRPoivrWBB0xd3KKJn
         ZXVfzZ35XzqImn5QtPAHbMtmnvTdrdGMgdp/cEx8sIi8RTsB8ylqRerCnvshZqFdH/V0
         jHNdOdvpu+ghg7AR7qs3R0X+XrempeaU/ui3weAZNDqRav2tzsK2KobyjftZ6k/puPSC
         NaGqJZlK8uETpHtaRliJEka9kujLcmH3EN+0yKh/9T/1dboo7KUxu60SYad0PKQRV2hv
         57UQ==
X-Gm-Message-State: AC+VfDwiR7oi4yhEVH4d+DF5SoRuOWU1Ffzd6i6apO8T2tYB8EC01RVr
	7D3/ls5u9wRFgEdvu1RYOMS14A==
X-Google-Smtp-Source: ACHHUZ4XIHc31aI7Yz7vxkZ7gA16gu5nwoiLxWZswPLz9iLHvgp3AlnZy1KH+hfVh/JFNYj+qnFqdw==
X-Received: by 2002:a05:6512:1ce:b0:4f6:1154:deba with SMTP id f14-20020a05651201ce00b004f61154debamr4261756lfp.65.1686562554980;
        Mon, 12 Jun 2023 02:35:54 -0700 (PDT)
Received: from [192.168.1.101] (abyj190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id i9-20020ac25229000000b004f2b6a203aasm1386474lfl.224.2023.06.12.02.35.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jun 2023 02:35:54 -0700 (PDT)
Message-ID: <9562db04-ef2e-b32e-9fd6-1396798f28e5@linaro.org>
Date: Mon, 12 Jun 2023 11:35:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH 22/26] arm64: dts: qcom: sa8775p-ride: add the SGMII PHY
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
References: <20230612092355.87937-1-brgl@bgdev.pl>
 <20230612092355.87937-23-brgl@bgdev.pl>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230612092355.87937-23-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_023557_123788_48E46820 
X-CRM114-Status: GOOD (  12.75  )
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



On 12.06.2023 11:23, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Add the internal SGMII/SerDes PHY node for sa8775p platforms.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index b130136acffe..0e59000a0c82 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -1837,6 +1837,15 @@ adreno_smmu: iommu@3da0000 {
>  				     <GIC_SPI 687 IRQ_TYPE_LEVEL_HIGH>;
>  		};
>  
> +		serdes_phy: phy@8901000 {
> +			compatible = "qcom,sa8775p-dwmac-sgmii-phy";
> +			reg = <0 0x08901000 0 0xe10>;
The usage of 0 is inconsistent with 0x0 everywhere else

Konrad
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

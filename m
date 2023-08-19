Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B93D8EE49A5
	for <linux-phy@archiver.kernel.org>; Sat, 19 Aug 2023 13:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YaPjg/C6gLkE5ZxDuJwBRzS5Vx4g9t3rjNSZzUPIZ3A=; b=I18xW5uApryKql
	70ZxwCB/SaU1kSM3msZEfguQ+Co1TZbIZIGcL1pBK8jz/dn+Z7aMHrOkYzOBEUSXMXdfyaAT0IFPC
	+pQAA3p1+23D2lanBYKnQ/gTWfzH9CFqCifch0r1Y9B9ph1/Tj5ERYX+JhCtXh/Mvd5ya6cbkg5Fm
	HSh8/HXYxUKBqa16l85mzgPp/lufY3npR313ts+ag5mQmhw1QK6e5+coTnY9bo67icOFZWpKemf9O
	DVOG0EeOMtbwhdNdeKoEqM+1bbNf4RIpojielhei9ZCXlFYwFA5x8yIFq/ivzN4egn8Rbe4Nebg/+
	ObN6aIOUDWRKSjh6OKxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXM2r-00AwA2-1A;
	Sat, 19 Aug 2023 13:31:13 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXM2o-00Aw9h-03
	for linux-phy@lists.infradead.org;
	Sat, 19 Aug 2023 13:31:11 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-991c786369cso237671166b.1
        for <linux-phy@lists.infradead.org>; Sat, 19 Aug 2023 06:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692451868; x=1693056668;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6u71a4GN6p55OTirDsp4k592nMNAa1SITGD9uIaliLA=;
        b=BRLCNoH9Ev+EnS8mjT0tFNZXuOUVtw36Q1L89be9WUdF2CmhlCL8aFJBGAloga7Wbt
         quu9HTXxApINWUqU2ZCHf5MxzusOYBIYkOyf/m8mlax2/A0VNmjzpWH5lKse+UEvdUt9
         CY9AmGo3g+xAnlQNRXbHS31Q1imuWJFKwtht/4xF19mgteWWTVxDfXdoX71LFBeBU2qB
         o/zPzTJZchl9q9scYo08omAdPAIjME2VyAdXv/waVcipCKo6ERZ12WMzVbsFziB4ETL5
         DlQZHoDY4y0lSVttzAqNOXliDuHwY8Z1cFCfaiZ89EhjDgU/BYdH6Piadt2UJAy3kw6L
         i/YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692451868; x=1693056668;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6u71a4GN6p55OTirDsp4k592nMNAa1SITGD9uIaliLA=;
        b=iEHFWooqDXkSuXOTmtKOUYw6LG6dHtknBJ5yBYRqreWtfhu9lsXjbiu9xPJqrXga4S
         0dCUpY9HborLGEslS2YvxVkgg96pF8E0ySQTg06dzycHa/N6dLGc4Jp4IErW6rjAAWb9
         OqyHD+eBXrG2ikmzSv07rP/Hr9+2X+nbb4I/oZr9cNR9BVCxAAYQyDSJo1/c+t9WFNcI
         K5eVE2BVlHrRNKhdN2MbXfEPjzZ7KR/gdEM2m5EmLkPC2SwV/YTfbQwhec/15RH0OxF4
         IKK+/vIiE8LrBpYkGa1cjLSHOXG50/6699GgDE5iCHWxvRu2XLhGEJBeS+SLzqma6QCS
         x9Lg==
X-Gm-Message-State: AOJu0Yx7usj8Z8Pi6/pQkDVFq5OZRVwRFcto0YcOnZ0IpZbDykmWZQtO
	O2dqmsnzVbjKEFyO/ixHPEU1Gv5fJBxv2s3f4ng=
X-Google-Smtp-Source: AGHT+IEVcx34dx4up2eFiu04+FWi85Kw0alMYHRym8IFNh+XSRYSBnMl29STr6JLAnGaxsCq/r1M1w==
X-Received: by 2002:a17:907:7617:b0:994:5577:aeed with SMTP id jx23-20020a170907761700b009945577aeedmr1389041ejc.5.1692451868511;
        Sat, 19 Aug 2023 06:31:08 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id lv27-20020a170906bc9b00b0099cb349d570sm2716405ejb.185.2023.08.19.06.31.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Aug 2023 06:31:07 -0700 (PDT)
Message-ID: <9ed564a1-13a8-e63e-bdd0-901d4f357bab@linaro.org>
Date: Sat, 19 Aug 2023 15:31:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2 01/13] dt-bindings: phy: migrate QMP PCIe PHY bindings
 to qcom,sc8280xp-qmp-pcie-phy.yaml
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Johan Hovold <johan@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20230731105759.3997549-1-dmitry.baryshkov@linaro.org>
 <20230731105759.3997549-2-dmitry.baryshkov@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230731105759.3997549-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230819_063110_061716_DF2DA8B3 
X-CRM114-Status: GOOD (  17.11  )
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

On 31/07/2023 12:57, Dmitry Baryshkov wrote:
> Migrate legacy bindings (described in qcom,ipq8074-qmp-pcie-phy.yaml)
> to qcom,sc8280xp-qmp-pcie-phy.yaml. This removes a need to declare
> the child PHY node or split resource regions.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../phy/qcom,ipq8074-qmp-pcie-phy.yaml        | 278 +++---------------
>  .../phy/qcom,msm8998-qmp-pcie-phy.yaml        |  97 ++++++
>  .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |  34 ++-
>  3 files changed, 163 insertions(+), 246 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-pcie-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
> index 3d42ee3901a1..5073007267ad 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
> @@ -13,287 +13,79 @@ description:
>    QMP PHY controller supports physical layer functionality for a number of
>    controllers on Qualcomm chipsets, such as, PCIe, UFS, and USB.
>  
> -  Note that these bindings are for SoCs up to SC8180X. For newer SoCs, see
> -  qcom,sc8280xp-qmp-pcie-phy.yaml.
> -
>  properties:
>    compatible:
>      enum:
>        - qcom,ipq6018-qmp-pcie-phy
>        - qcom,ipq8074-qmp-gen3-pcie-phy
>        - qcom,ipq8074-qmp-pcie-phy
> -      - qcom,msm8998-qmp-pcie-phy
> -      - qcom,sc8180x-qmp-pcie-phy
> -      - qcom,sdm845-qhp-pcie-phy
> -      - qcom,sdm845-qmp-pcie-phy
> -      - qcom,sdx55-qmp-pcie-phy
> -      - qcom,sm8250-qmp-gen3x1-pcie-phy
> -      - qcom,sm8250-qmp-gen3x2-pcie-phy
> -      - qcom,sm8250-qmp-modem-pcie-phy
> -      - qcom,sm8450-qmp-gen3x1-pcie-phy
> -      - qcom,sm8450-qmp-gen4x2-pcie-phy

...

> +        #phy-cells = <0>;
> +
> +        resets = <&gcc GCC_PCIE_0_PHY_BCR>, <&gcc GCC_PCIE_PHY_BCR>;
> +        reset-names = "phy", "common";
> +
> +        vdda-phy-supply = <&vreg_l1a_0p875>;
> +        vdda-pll-supply = <&vreg_l2a_1p2>;
> +    };
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index ca55ed9d74ac..a2c894a33c1c 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -18,11 +18,21 @@ properties:
>      enum:
>        - qcom,sa8775p-qmp-gen4x2-pcie-phy
>        - qcom,sa8775p-qmp-gen4x4-pcie-phy
> +      - qcom,sc8180x-qmp-pcie-phy
>        - qcom,sc8280xp-qmp-gen3x1-pcie-phy
>        - qcom,sc8280xp-qmp-gen3x2-pcie-phy
>        - qcom,sc8280xp-qmp-gen3x4-pcie-phy
> +      - qcom,sdm845-qhp-pcie-phy
> +      - qcom,sdm845-qmp-pcie-phy
> +      - qcom,sdx55-qmp-pcie-phy
>        - qcom,sdx65-qmp-gen4x2-pcie-phy
> +      - qcom,sm8150-qmp-gen3x1-pcie-phy

This was not present before. If you add new compatible, split it to new
patch.

> +      - qcom,sm8250-qmp-gen3x1-pcie-phy
> +      - qcom,sm8250-qmp-gen3x2-pcie-phy
> +      - qcom,sm8250-qmp-modem-pcie-phy
>        - qcom,sm8350-qmp-gen3x1-pcie-phy
> +      - qcom,sm8450-qmp-gen3x1-pcie-phy
> +      - qcom,sm8450-qmp-gen4x2-pcie-phy
>        - qcom,sm8550-qmp-gen3x2-pcie-phy
>        - qcom,sm8550-qmp-gen4x2-pcie-phy


The rest looks good to me.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8162C761AF
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 19:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ATqYhtIOOCBHZNopYT50ts5zp2iZPrXjHywEK+EQ1E=; b=yfuiViMNP5yIAQ
	BGueOtXfq0ATDxD/qAiIklhT6Bz0aJErHzeJI82cF6zgxMlerlHLEj26J30is6Q/DxFYJgEYfq3s1
	NzeZo7RGN5K9Rzy/YCR6OPnftQVtLubGbt9qYJJWI/JUr6bNi7SpY/wsoe40eDnSCiDJ5SzXxxWd4
	pMGFFaL4e+XkTffM7c3Og5ezocSKJfIruQTDreGovy2zdkC7zznHvPBfj0pjRJvigPiSngcP8/qua
	NX3f9eNlvp49XtOiKD9XrhbeaSc5NIOAoigapJQ80wzUzNv8vZR9F3VZgJeUQnVwyugNMNBu4FwFS
	R9umkC+N8VAmbwbz4POQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk8xj-005WNt-1P;
	Wed, 05 Apr 2023 19:38:31 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk8xf-005WN1-32
	for linux-phy@lists.infradead.org;
	Wed, 05 Apr 2023 19:38:29 +0000
Received: by mail-lj1-x232.google.com with SMTP id a11so38416536lji.6
        for <linux-phy@lists.infradead.org>; Wed, 05 Apr 2023 12:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680723505;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5f0mC+vCbK8/t6861d0Rm2iLKPedST0RJhiJavXpidc=;
        b=O9u3HSfoQYfNm6hUe5TGddkA7cx/XjoVwsGfqDgI7F3H+tUYOwSbPAseA3xNdBIIDK
         bBRAR5iK7zjnYQ3VOKqF700zJn4FuPbmEr8/GvFUm6YArkvGYHpcSh4oaisU2ezPOXOT
         sUHslTba6C7mypK/br5++omC6AonLN5v0G4WjZOMmo9iRNdZFYrtliDA/4vQWQV8um05
         NQhUBRstoghlaBAD7zIObzOfXVS3o5aAw+gBgmGviJCC4CborHlJg0hTc/KmNVUz7omK
         4ibETRW+fJ6DFbqcoiPFVyt20L7IYuTKdgROvdWw4pQlQxbWvx1GDh+r1rzq3JMz9b4F
         aDKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680723505;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5f0mC+vCbK8/t6861d0Rm2iLKPedST0RJhiJavXpidc=;
        b=76d84xPVVB5q8Xu5XNi0/bGm2eGsKWF7qtTAifMMLsEJGu7nuwuzjC3ARoPXvweyj/
         qsHj3MsPegjL/lXo6FdmnQOiepDTnjNZB9HCtp2Rudaj3Ii50+Kug3cjydgZNcR3RSKW
         ziQ31DsdZbP0DQROmDh/ZugvKX9LuULgVrNt52CscHBR3ZUYtJRlziTX9JKCD3wC2/x7
         CWT2844m7ikdH1bdwMUeS+oSIF4Drn2uJAsLNmF2I6tiTEZMzjvBz4g5LsxqMbGDaC2U
         xooshW4AGyDSpdLhSZXU8SBLv337LrbuoaMvefaFYbozITyZUtsir6GrPVueHlxFgjX5
         Keyw==
X-Gm-Message-State: AAQBX9e3SdIdxu0XugfWfuErAwcSayNng5//g4/qOc53LYbp2nqnfnUh
	7y9J0iEs61eDmN8IkWka7mOxew==
X-Google-Smtp-Source: AKy350aAERgJC0es3w+VWzIC+SauE/zhEA0eNoS8iq5QTbMpYVHS9MuKuSDX22w+FZJxFPZwvr9Ggw==
X-Received: by 2002:a2e:8085:0:b0:29a:95d8:3e04 with SMTP id i5-20020a2e8085000000b0029a95d83e04mr2084998ljg.50.1680723504998;
        Wed, 05 Apr 2023 12:38:24 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x23-20020a2e9c97000000b002934febffe4sm2966662lji.128.2023.04.05.12.38.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Apr 2023 12:38:24 -0700 (PDT)
Message-ID: <374d3d19-2459-064c-c7e6-7e13b4dc368d@linaro.org>
Date: Wed, 5 Apr 2023 22:38:24 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: qcom,qmp-usb: Fix phy subnode
 for SM6115 & QCM2290 USB3 PHY
Content-Language: en-GB
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
Cc: agross@kernel.org, linux-kernel@vger.kernel.org, andersson@kernel.org,
 bhupesh.linux@gmail.com, krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
 konrad.dybcio@linaro.org, kishon@kernel.org, vkoul@kernel.org,
 krzysztof.kozlowski+dt@linaro.org
References: <20230405191633.1864671-1-bhupesh.sharma@linaro.org>
 <20230405191633.1864671-2-bhupesh.sharma@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230405191633.1864671-2-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_123828_017182_E0C335FA 
X-CRM114-Status: GOOD (  14.41  )
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

On 05/04/2023 22:16, Bhupesh Sharma wrote:
> The USB3 SS (QMP) PHY found on Qualcomm SM6115 & QCM2290 SoCs is
> similar to sm8150 QMP PHY (which is named as 'usb_1_qmpphy' in
> sm8150 dtsi file, see [1]) in the sense that the phy subnode supports

usb_1_qmpphy on sm8150 is a USB+DP PHY, see 
https://patchwork.kernel.org/project/linux-phy/patch/20230324215550.1966809-4-dmitry.baryshkov@linaro.org/

> 6 regs, namely TX lane 1, RX lane 1, PCS, TX lane 2, RX lane 2 and
> PCS_MISC.
> 
> Update the dt-bindings document to reflect the same.
> 
> [1]. https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/arch/arm64/boot/dts/qcom/sm8150.dtsi#n3394
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>   .../devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml    | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> index e81a38281f8c..1575dc70bcf2 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> @@ -276,7 +276,9 @@ allOf:
>           compatible:
>             contains:
>               enum:
> +              - qcom,qcm2290-qmp-usb3-phy
>                 - qcom,sdm845-qmp-usb3-phy
> +              - qcom,sm6115-qmp-usb3-phy
>                 - qcom,sm8150-qmp-usb3-phy
>                 - qcom,sm8350-qmp-usb3-phy
>                 - qcom,sm8450-qmp-usb3-phy
> @@ -318,12 +320,10 @@ allOf:
>               enum:
>                 - qcom,ipq6018-qmp-usb3-phy
>                 - qcom,ipq8074-qmp-usb3-phy
> -              - qcom,qcm2290-qmp-usb3-phy
>                 - qcom,sc7180-qmp-usb3-phy
>                 - qcom,sc8180x-qmp-usb3-phy
>                 - qcom,sdx55-qmp-usb3-uni-phy
>                 - qcom,sdx65-qmp-usb3-uni-phy
> -              - qcom,sm6115-qmp-usb3-phy
>                 - qcom,sm8150-qmp-usb3-uni-phy
>                 - qcom,sm8250-qmp-usb3-phy
>       then:

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7092C76195
	for <linux-phy@archiver.kernel.org>; Mon, 27 Mar 2023 08:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6L1TglxxaLZScVw9BSomIkOqX6vAwE1YufXFx8E4hS4=; b=OyEQ6T3wM5jzVY
	SsIgk1gMidXl9JuQvWyFi/wNZX9GRM1PF5iU/qtXdhNvZVYm37mPzf3mn9eP//pNJJXbAJjO6PrxR
	jqumGsbwej/t7M01U+gvl59I3hICsf/qxsCwbR0UZxgmgklvxHpIDtdwhFh1WRBWNhvB//uYOM2bv
	UEA6G1h2573pNS7UD38TzesOzFHc5+NeyPxEo4EJwNmLuMV6pcvPKUANJKWUKSJaFxsibhr44C/zx
	jpUo/l08WTthn7bowTOLTnORToBsc5dURLnP92KUx65RYV1XOBiKjUUHNkT9Cqc3PRlHmgGxhNAt6
	BrgPhC7H4VzJ3nesHXWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pghmA-00A9N3-1j;
	Mon, 27 Mar 2023 08:00:22 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pghm7-00A9M6-30
	for linux-phy@lists.infradead.org;
	Mon, 27 Mar 2023 08:00:21 +0000
Received: by mail-wr1-x434.google.com with SMTP id j24so7703067wrd.0
        for <linux-phy@lists.infradead.org>; Mon, 27 Mar 2023 01:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679904017;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=zyFUNg7n9En5R9qIpd5WTwBxBqNXal61tLrhnEg793Y=;
        b=nf2hQVNadEfcLR3PzlLieEiKhWqMbZvnv+T5JHtQq6q18vncdxeWlpG1FX2InzLpPE
         2dtvmswoL6c9wQUB2pPm3NGjMway7kEsoax4iTZnCuypi/8I6p4mBP8RE4ldW12a8GL6
         wgFbpnC3Ky6r/9kfKjsIQP162It6m8G4LTFAX1pGioPLkFwl0ucWgfb9+tnKtEKo8E9M
         5AdzWjhIX/FT9HxJaBlDuyD0DoyQG8lQvwnZjDFzLovtkpXXQANP+rgJfaW3oY/nMDa4
         a0vF9kdgy05qSelJCynPJtzrHaMPIDJa+tLt0gMbghUFWeb1ShEeduRTVaYhIJs2s9Ir
         A2Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679904017;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zyFUNg7n9En5R9qIpd5WTwBxBqNXal61tLrhnEg793Y=;
        b=JA0dBHsim6xoEjZM/o/0SyM6qDvEi/crZEmWbIr62yjjPxO5AUDjy10EtKWnHDGWr5
         3UQunckFlMM5pIavEbBtNAYwgY+0Xu56RnJsdwDnC8sTuk8dt/ys6pS+229GRgHy4eAh
         ZxfhKeQ5cB18wqMRBK5+BnnJu2K+8b2Bz/4KGbeoDcx6xIxUbH9yFSCScznThZCwmpwF
         tGrxYLVrK64YrlH0NxMtRq+JDQ0DERoKSqbBppC34PN6DugHDYdyGk6oob/1fwnLdOiG
         WFtQ7OX1AfTKx7iXQq3In4h+IIhcxV870TU1T+EukeDUPgGYhNZFtDTbsGtc6DyNbwQA
         POqw==
X-Gm-Message-State: AAQBX9cIN12y17DXrTW2GUhv3F2AvidYhH3z9ERFOBoNggWZK47N2p1y
	0SIyFAc30Gb+zZUnHzCrCHLIWw==
X-Google-Smtp-Source: AKy350ZVpzk0g8Uo/mKh0MckpKDCypHEEztwKTgYIDvcHkBMmu/0AcXbH9P7NLS4OlzLxlPLPp3Ipw==
X-Received: by 2002:a5d:4350:0:b0:2dd:11b8:8ab2 with SMTP id u16-20020a5d4350000000b002dd11b88ab2mr7811188wrr.38.1679904017407;
        Mon, 27 Mar 2023 01:00:17 -0700 (PDT)
Received: from [192.168.7.111] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id v3-20020adfe4c3000000b002cf8220cc75sm16450063wrm.24.2023.03.27.01.00.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 01:00:17 -0700 (PDT)
Message-ID: <656c6ae6-41c5-9b7e-8602-02d8b3b4149e@linaro.org>
Date: Mon, 27 Mar 2023 10:00:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 4/5] dt-bindings: phy: qcom,msm8996-qmp-usb3-phy: drop
 legacy bindings
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 Johan Hovold <johan+linaro@kernel.org>, devicetree@vger.kernel.org
References: <20230324215550.1966809-1-dmitry.baryshkov@linaro.org>
 <20230324215550.1966809-5-dmitry.baryshkov@linaro.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230324215550.1966809-5-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_010019_973467_C0706F85 
X-CRM114-Status: GOOD (  11.42  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 24/03/2023 22:55, Dmitry Baryshkov wrote:
> The qcom,msm8996-qmp-usb3-phy.yaml defines bindings for several PHYs
> which predate USB -> USB+DP migration. Now as sm8150 has been migrated,
> drop the legacy bindings completely. No device trees use them anymore.
> Newer USB+DP bindings should use combo bindings from the beginning.

Shouldn't we mark then as deprecated first ?

Neil

> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   .../phy/qcom,msm8996-qmp-usb3-phy.yaml        | 80 -------------------
>   1 file changed, 80 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> index e81a38281f8c..5684eaf170e4 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> @@ -24,26 +24,17 @@ properties:
>         - qcom,msm8996-qmp-usb3-phy
>         - qcom,msm8998-qmp-usb3-phy
>         - qcom,qcm2290-qmp-usb3-phy
> -      - qcom,sc7180-qmp-usb3-phy
> -      - qcom,sc8180x-qmp-usb3-phy
> -      - qcom,sdm845-qmp-usb3-phy
>         - qcom,sdm845-qmp-usb3-uni-phy
>         - qcom,sdx55-qmp-usb3-uni-phy
>         - qcom,sdx65-qmp-usb3-uni-phy
>         - qcom,sm6115-qmp-usb3-phy
> -      - qcom,sm8150-qmp-usb3-phy
>         - qcom,sm8150-qmp-usb3-uni-phy
> -      - qcom,sm8250-qmp-usb3-phy
>         - qcom,sm8250-qmp-usb3-uni-phy
> -      - qcom,sm8350-qmp-usb3-phy
>         - qcom,sm8350-qmp-usb3-uni-phy
> -      - qcom,sm8450-qmp-usb3-phy
>   
>     reg:
> -    minItems: 1
>       items:
>         - description: serdes
> -      - description: DP_COM
>   
>     "#address-cells":
>       enum: [ 1, 2 ]
> @@ -128,28 +119,6 @@ required:
>   additionalProperties: false
>   
>   allOf:
> -  - if:
> -      properties:
> -        compatible:
> -          contains:
> -            enum:
> -              - qcom,sc7180-qmp-usb3-phy
> -    then:
> -      properties:
> -        clocks:
> -          maxItems: 4
> -        clock-names:
> -          items:
> -            - const: aux
> -            - const: cfg_ahb
> -            - const: ref
> -            - const: com_aux
> -        resets:
> -          maxItems: 1
> -        reset-names:
> -          items:
> -            - const: phy
> -
>     - if:
>         properties:
>           compatible:
> @@ -204,7 +173,6 @@ allOf:
>           compatible:
>             contains:
>               enum:
> -              - qcom,sm8150-qmp-usb3-phy
>                 - qcom,sm8150-qmp-usb3-uni-phy
>                 - qcom,sm8250-qmp-usb3-uni-phy
>                 - qcom,sm8350-qmp-usb3-uni-phy
> @@ -225,29 +193,6 @@ allOf:
>               - const: phy
>               - const: common
>   
> -  - if:
> -      properties:
> -        compatible:
> -          contains:
> -            enum:
> -              - qcom,sm8250-qmp-usb3-phy
> -              - qcom,sm8350-qmp-usb3-phy
> -    then:
> -      properties:
> -        clocks:
> -          maxItems: 3
> -        clock-names:
> -          items:
> -            - const: aux
> -            - const: ref_clk_src
> -            - const: com_aux
> -        resets:
> -          maxItems: 2
> -        reset-names:
> -          items:
> -            - const: phy
> -            - const: common
> -
>     - if:
>         properties:
>           compatible:
> @@ -271,28 +216,6 @@ allOf:
>               - const: phy_phy
>               - const: phy
>   
> -  - if:
> -      properties:
> -        compatible:
> -          contains:
> -            enum:
> -              - qcom,sdm845-qmp-usb3-phy
> -              - qcom,sm8150-qmp-usb3-phy
> -              - qcom,sm8350-qmp-usb3-phy
> -              - qcom,sm8450-qmp-usb3-phy
> -    then:
> -      patternProperties:
> -        "^phy@[0-9a-f]+$":
> -          properties:
> -            reg:
> -              items:
> -                - description: TX lane 1
> -                - description: RX lane 1
> -                - description: PCS
> -                - description: TX lane 2
> -                - description: RX lane 2
> -                - description: PCS_MISC
> -
>     - if:
>         properties:
>           compatible:
> @@ -319,13 +242,10 @@ allOf:
>                 - qcom,ipq6018-qmp-usb3-phy
>                 - qcom,ipq8074-qmp-usb3-phy
>                 - qcom,qcm2290-qmp-usb3-phy
> -              - qcom,sc7180-qmp-usb3-phy
> -              - qcom,sc8180x-qmp-usb3-phy
>                 - qcom,sdx55-qmp-usb3-uni-phy
>                 - qcom,sdx65-qmp-usb3-uni-phy
>                 - qcom,sm6115-qmp-usb3-phy
>                 - qcom,sm8150-qmp-usb3-uni-phy
> -              - qcom,sm8250-qmp-usb3-phy
>       then:
>         patternProperties:
>           "^phy@[0-9a-f]+$":


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F532C7618D
	for <linux-phy@archiver.kernel.org>; Thu,  6 Apr 2023 07:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KatV9oTgxS1FE6EHEgE3Cm1fyrvrx8oKcN8WozNjlhE=; b=b2ymJT1oWg9o7V
	1ypNN5c2xaLeaJtTkhKqc1eVxE2sktXGRZfeCkMG1W/1y36nrb7t4xSkW+6H4d3bIg6WgmsV8Pf0l
	sA6LT+gBK4catXKo7+BFqKhUfHSiqmuMnttP5fyNVEj0fnO6YPl+6vYk73hErCBE40BB7NWeQTrnJ
	Q8d+Hq44yZlJjmElnh53PlFU7iECUmnrDAimxUyLnc+Zo5ENPspE6YE0PvndD0O5cX3HoSm/1+uTD
	wN5twOO+zXos+w8mBb++tOGU+1KNjd6gLU3lErK2fU5exEAmIs8L56aNSxymsItqpyAf0/KxAJ4Cu
	IaShDmJoPS8vJ1XELAIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkKFv-006f8A-0Z;
	Thu, 06 Apr 2023 07:42:03 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkKFp-006f5r-19
	for linux-phy@lists.infradead.org;
	Thu, 06 Apr 2023 07:42:01 +0000
Received: by mail-ed1-x52f.google.com with SMTP id ek18so147234350edb.6
        for <linux-phy@lists.infradead.org>; Thu, 06 Apr 2023 00:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680766911;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hpp+0JOz+FKGY7fsBLSsdfNUNXwCqAnXR6glr6qNRMw=;
        b=U9/EmzMV+No/XF5Nq4LYvmSGD7hlHQqob5/GLw7OH9v6PeKs+BIbVHC4yEqvo3zLIM
         ewwpZeEJXgJJICeVEqDaWdKohsl5KIMAZuYGR7CgDPjCq1y3vV8etQO+WiSNRj+qmNEW
         Rjf/rCSk22jFq/DmvYb2cnlASTRzytXbuTVClOVDAhm1CxAMtuLT6RgUnkxcSvKQj2Cn
         eV03fmlQsJ8QyuN+/0Ul+K5dZvyTx2+dhtU2prTABH4Bf/7VsuzHIEXHeW9mVABRH3fJ
         QK9U5oMPUAguypNu/vx3B8jF5ZlHBPKr9evFQieqkQKvQ0lHM3kaZNvm6ywNXt4uhuy5
         o3aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680766911;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hpp+0JOz+FKGY7fsBLSsdfNUNXwCqAnXR6glr6qNRMw=;
        b=BR00Ph4ORf3FuBmZMj5XZ62o6pECSA0TASxFLyKgptkVb+gBhrG861Eho5bYZTz5l3
         66wfiqilg6lparN9kdcc0AipbaVqtVCLXMP5Z+gK81mVorgapHFrwf+BkadVChM/sZzD
         COdnlAH4b9DGHwW/5uaw/peqthnw4P0RO2WzZujaCfsBxE3mOofmI444TnkPD/RJOYD3
         n/8TWiKiOVBElHCUCz3XOGgXGMXsqAAECduOQDxaYcl1v8IZqu4DyAeZBfT3p24yuQ6v
         NuBP1qwz910sF5Nx9aYGnDxad1UNAt73WIUKS/PnUpIn3kNEaeztu9m0ACyx7bFYXk9+
         8r5w==
X-Gm-Message-State: AAQBX9c5vsfHQ4K/WIxmnT3buf/oKVDBjqp3IEVk3jOIAwYcjPXg/BM6
	g+Ux1dmREUkieD3FHavkMB+0Ew==
X-Google-Smtp-Source: AKy350bkNdf5O2eZ4KmOp+DCXA33pjr3OARoKNaTAwi7CozBGDwR42LmdRmdeTHeYyrr7Aa+Kp1SBA==
X-Received: by 2002:a17:906:c014:b0:947:c8d5:bfab with SMTP id e20-20020a170906c01400b00947c8d5bfabmr5034771ejz.35.1680766910962;
        Thu, 06 Apr 2023 00:41:50 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed? ([2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed])
        by smtp.gmail.com with ESMTPSA id y11-20020a17090629cb00b00949173c1dcfsm455419eje.18.2023.04.06.00.41.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Apr 2023 00:41:50 -0700 (PDT)
Message-ID: <0a66e291-a86d-1ff9-e674-839b8cc8f1da@linaro.org>
Date: Thu, 6 Apr 2023 09:41:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v8 2/8] dt-bindings: phy: qcom,qmp-usb: Add IPQ9574 USB3
 PHY
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <cover.1680693149.git.quic_varada@quicinc.com>
 <1efa9a64499767d939efadd0aef897ac4a6e54eb.1680693149.git.quic_varada@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1efa9a64499767d939efadd0aef897ac4a6e54eb.1680693149.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230406_004157_394235_B897E7D8 
X-CRM114-Status: GOOD (  17.29  )
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

On 05/04/2023 13:41, Varadarajan Narayanan wrote:
> Add dt-bindings for USB3 PHY found on Qualcomm IPQ9574
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  Changes in v8:
> 	- Update clock names for ipq9574
> 
>  Changes in v6:
> 	- Made power-domains optional
> 
> Note: In the earlier patch sets, had used the (legacy)
> specification available in qcom,msm8996-qmp-usb3-phy.yaml. Moved
> to newer specification in qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> ---
>  .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        | 43 +++++++++++++++++++---
>  1 file changed, 37 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> index 16fce10..e902a0d 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> @@ -16,6 +16,7 @@ description:
>  properties:
>    compatible:
>      enum:
> +      - qcom,ipq9574-qmp-usb3-phy
>        - qcom,sc8280xp-qmp-usb3-uni-phy
>  
>    reg:
> @@ -25,11 +26,7 @@ properties:
>      maxItems: 4
>  
>    clock-names:
> -    items:
> -      - const: aux
> -      - const: ref
> -      - const: com_aux
> -      - const: pipe
> +    maxItems: 4
>  
>    power-domains:
>      maxItems: 1
> @@ -60,7 +57,6 @@ required:
>    - reg
>    - clocks
>    - clock-names
> -  - power-domains
>    - resets
>    - reset-names
>    - vdda-phy-supply
> @@ -71,6 +67,41 @@ required:
>  
>  additionalProperties: false
>  
> +allOf:

As you can see in example-schema, allOf goes before
additionalProperties: false.

> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,ipq9574-qmp-usb3-phy
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 4

Don't need clocks here.

> +        clock-names:
> +          items:
> +            - const: aux
> +            - const: ref
> +            - const: cfg_ahb
> +            - const: pipe
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,sc8280xp-qmp-usb3-uni-phy
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 4

Neither here.

> +        clock-names:
> +          items:
> +            - const: aux
> +            - const: ref
> +            - const: com_aux

Can anyone explain me why do we name these (here and other Qualcomm
bindings) based on clock name, not input? Just because different clock
is fed to the block, does not necessarily mean the input should be named
differently.

> +            - const: pipe
> +
>  examples:
>    - |
>      #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

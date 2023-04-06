Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5CC7C76196
	for <linux-phy@archiver.kernel.org>; Thu,  6 Apr 2023 07:42:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ATLsHRnH9RMd/rAguB743Lps9ivGtwBQOBrcky2zRLg=; b=O9NOqXbvnRWXYO
	BI7NslqN288w0mvapta8656hWp37tIhD8NLmmzjvkcsV6WXfYMJCo92Ua05ZXFQ4oLNT5oOsT6DF4
	y9uE4cAakS+Ng1i/xrm40Kc+JYrATXDwpQkVaRhuKxnkVhU0+sLcHsA5kpfaAIOiC/vnDp+lWMBgB
	ZHeD5vqejdEFXg6tHtWKZWiex+L28mbwaMYavC1qv0hf31VyrxRsCA94NPwmRPRmR/IhNWlHK+bRd
	vL/a2fxbezTfzMNd3My4vKgavSXy9KHSy9f3V/LV9kAGdRJ1LFJbYfxawY03BIk0V9QHrE7FkPCjt
	d0cigZTDvKZn2Bi3q5zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkKGW-006fBM-1I;
	Thu, 06 Apr 2023 07:42:40 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkKGU-006fA9-0S
	for linux-phy@lists.infradead.org;
	Thu, 06 Apr 2023 07:42:39 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-93434918b67so82567266b.0
        for <linux-phy@lists.infradead.org>; Thu, 06 Apr 2023 00:42:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680766953;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2CeMX83G7CI+LCtzmkNB4MbhW1kr0GUu8L33N5bnhLc=;
        b=F0nX+SvXYvsdr0a233FjCqVMoLV5+3k7r+csjEw4U9Ah6AIbz8Pd6Cs3cA/k3VbRps
         /lUyakfE9cdeYjue/v2Fs2HO2Vfyxg41+4rqsWY53zr47IjPMeXxkD63v86CQOME/v8U
         dzFP5+Ae18a0SaaHm4Hw0nAhTCZBiNO7vXHf23+0RdHyV1OmKqs5IbQlWKduJIHZicAo
         mjnhXmW4PJMzIlxYdU7BrSR/MeDPIst+5pY2zuXdrhOqMvQlXbhX6bZpia4Az6B5kXzG
         eCoUl6V80id62O0F5VlqP774Hv4zuuWO9Uh4kio+vP3PdNOZUkbKiuMso6r1TJ6TjHWo
         CQCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680766953;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2CeMX83G7CI+LCtzmkNB4MbhW1kr0GUu8L33N5bnhLc=;
        b=vy9nW1KxIw97uzf4Pz+BOqT17oxszyKfjkylYCTM/j9YN8mIlhHvmPtdEIwGov263V
         W0h8jhCFe7Ph3P/iKpxEFWZnBUrUQyri/IIkgMEG+ee24X07a9XIb1qZIWzfpYQ3De/I
         VIp3dXtlXS76PYZQI5KlvZf/nr3Xlu6Hzw5vVAhVCJjx5ZW/804kJmxGLc5AA76+AIuo
         /0za9L9djTf3Goa9o3BQk/ImAN+kCuG2pqXQWz70tQd8NkESuoIr5hL1i4tiEk5TpeMG
         Mn42iJH0aS5mRAaWc+ZrcuntYnRDh0XfquOzfJTdjTxYV0ns+WjFFL2cxjc71L5OWmPZ
         oXog==
X-Gm-Message-State: AAQBX9fGalZRw0Jq7N/A7LaY7tdu/bLiX9O2N7y0b03t+VtAtgSaAY3L
	BCLro/gQ83yjdSr6IBAYzZVu8g==
X-Google-Smtp-Source: AKy350atbynXL3zs3eE1PYHo+8dQrh+MY7FEjoP+cVC0eI0NqgnAQYJsPpawDRy1Ph70Zky/dGiDrQ==
X-Received: by 2002:aa7:df99:0:b0:502:2f3:abd3 with SMTP id b25-20020aa7df99000000b0050202f3abd3mr4200119edy.35.1680766953612;
        Thu, 06 Apr 2023 00:42:33 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed? ([2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed])
        by smtp.gmail.com with ESMTPSA id l22-20020a50d6d6000000b004bf7905559asm362400edj.44.2023.04.06.00.42.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Apr 2023 00:42:33 -0700 (PDT)
Message-ID: <b9763bee-c0c8-86be-14de-2ed077b1f1d5@linaro.org>
Date: Thu, 6 Apr 2023 09:42:31 +0200
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
X-CRM114-CacheID: sfid-20230406_004238_184667_05D8C8C1 
X-CRM114-Status: GOOD (  14.14  )
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

Power domains are required. Commit msg does not explain why this should
be now optional.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

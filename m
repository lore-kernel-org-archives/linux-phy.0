Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0695EC761AF
	for <linux-phy@archiver.kernel.org>; Wed, 22 Mar 2023 21:52:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NiUXTE5StS+dIQyNbZ/hJxL7ETsY/S9ziBcnOGEdpmE=; b=b58BSzuDJoUWR+
	RW45/KsILyQuPikSC1Q777PWp6ed7vjtWjESf/hGH8/0Qh4XZku8uitc6h9raIiBIa8Ix0DE7LZ19
	EqPZ/YgTzCq0V2IH94O6FxOYxZcgL+YK9ReKkHuP5ZUzgeaaTg/tBqnVHgDzqWBLGOrhQ7fZ3eEEY
	JeM/x+XpE9DgpB/+SzYg87PYHwKs1HtQtki41d7oKu93buA1QB1w3g3WxE9rHlOQsJjyLbGoxNZuN
	0QkRlD/3iWcdgApSGDnXiV8oM6Gw6oS5Shukkx70quDsW8xHMuzn2hOCxSs0KtZD3DwXWzN/4CyLF
	Y5cfXxKdRNnku2k0A93Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pf6O4-00HWx9-0n;
	Wed, 22 Mar 2023 21:52:52 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pf6O0-00HWvX-1M
	for linux-phy@lists.infradead.org;
	Wed, 22 Mar 2023 21:52:50 +0000
Received: by mail-ed1-x536.google.com with SMTP id y4so78872046edo.2
        for <linux-phy@lists.infradead.org>; Wed, 22 Mar 2023 14:52:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679521966;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ae1Fg1XrNO0U2G9oXfkthXql4Cz6bcgr28jd3JL36xQ=;
        b=MhhTNWacisy6aVXWag8D/bV7u6OA1Z5BweJMma4y2nxaFetFPEd1946+0b+Ylqw2OC
         Kq0bqlJVqcv+wj/EB+AR89gfXto7MWzPeQ06XW99ZVveKLV0jTKp/y923NdLqvt+vxFR
         EvC+RZiHhkOoKODsvKtiG7i7dL/7U7Cy4wqFQCYgenxFfihZk8MbQGHtehsL37txDRmP
         HaI/VNZRWWOE9cYic9BwSguWuef225+VL+y4CLBeK0EhhVQfEJQXazo9fB2vyvC7q+d/
         M1zftfaWEuHy1y0n+E3dWI9/RF5noB59veAPSGQ8VjOn2dlZtoByfzbsf1UNLONrTLKg
         Ofqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679521966;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ae1Fg1XrNO0U2G9oXfkthXql4Cz6bcgr28jd3JL36xQ=;
        b=J/tqTdOX/Ky5MJuRAMRN51ITMdVK6gXLaozM/6I/LsvZndW/nQc3qgDHceUUD5hoLK
         0bZc7y93bElpN9Rfa7u8KIjOI6UK++ziDItr3pbghNPZTrHIwVQH8YypxLBTvEVjR53g
         uCEWaVDnmCWtP30gin4XTfFF32O11d9tGTXsVmdeDuOShECTbjE+tNRN0WtRlQSVt8o9
         cfBFNMNoj+fdHXrCSwf8DiV2DU6fb9F2DP4NztlM+GuS8AQK+1z3dMe/CUUp3yCbgPWi
         xA+VAVGMUrZ/NGZbE6zGuVKEoV27BVZhvv/jMBm+S7dTqKeGGmsU7/FsIiFyraM1dJPy
         mXFw==
X-Gm-Message-State: AO0yUKXGETaSw+sGAQJSDtH6ieDPxprylAatJa0qxgtcxLRUgQP4wWf7
	kMUZiAObf27ZZh/80msGMKUG0g==
X-Google-Smtp-Source: AK7set+36xqihcRaSbhw9EZd7MivK51J2wyj0FDKumen87LrblW3ZwyU1x5vO2IU1KXVqvSiIqgKkA==
X-Received: by 2002:a17:907:1628:b0:878:6477:d7 with SMTP id hb40-20020a170907162800b00878647700d7mr9845624ejc.72.1679521966159;
        Wed, 22 Mar 2023 14:52:46 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:626d:5729:6e71:4c22? ([2a02:810d:15c0:828:626d:5729:6e71:4c22])
        by smtp.gmail.com with ESMTPSA id t25-20020a170906065900b00939a61113d3sm2987235ejb.110.2023.03.22.14.52.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Mar 2023 14:52:45 -0700 (PDT)
Message-ID: <c52a329d-8683-de82-9b55-209b99ac36c0@linaro.org>
Date: Wed, 22 Mar 2023 22:52:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v3 2/8] dt-bindings: phy: qcom,qmp-usb: Add IPQ9574 USB3
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
References: <cover.1679479634.git.quic_varada@quicinc.com>
 <e34d8eddc1dda8bb0ff840a7dd18ca4dd6c62d22.1679479634.git.quic_varada@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <e34d8eddc1dda8bb0ff840a7dd18ca4dd6c62d22.1679479634.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_145248_475204_CFA83729 
X-CRM114-Status: GOOD (  13.12  )
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

On 22/03/2023 11:44, Varadarajan Narayanan wrote:
> Add dt-bindings for USB3 PHY found on Qualcomm IPQ9574
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> 
> ---
>  Changes in v2:
> 	- Updated sections missed in previous patch
> ---
>  .../bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml    | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> index e81a382..beae44c 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> @@ -21,6 +21,7 @@ properties:
>      enum:
>        - qcom,ipq6018-qmp-usb3-phy
>        - qcom,ipq8074-qmp-usb3-phy
> +      - qcom,ipq9574-qmp-usb3-phy
>        - qcom,msm8996-qmp-usb3-phy
>        - qcom,msm8998-qmp-usb3-phy
>        - qcom,qcm2290-qmp-usb3-phy
> @@ -204,6 +205,27 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - qcom,ipq9574-qmp-usb3-phy
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 2

toplevel defines minItems as 3, so are you sure this works? Did you test it?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

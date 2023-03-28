Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0969FC76196
	for <linux-phy@archiver.kernel.org>; Tue, 28 Mar 2023 07:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZB1PJHRYCo4CdLFfQUk2jSLi6xpMXXJ424yccrwep4g=; b=tFweFrZN2/eZZs
	HcX8wdJVFe22Nu0yppEjanxZlMeutprhEtjPSy3DpzIZlmGUrCGS3B8RgqlAfVwEQHFH8dZ5OpTyc
	6YXpF1PeFO65GBONuOMilsDF33ALazaEpiraMptAFVVKZqEflEkCH1B0SlSNQOIsxOk8+zLEuxEXY
	hSjshgzZtlt5YXswaruxbdKaOLAaC79l90Wz2MfKETOWn6oLtLn+bwVh0UXmzolls4LwS02Es8KSW
	qhRKkztIfUuwsAH/h2jI0m7AD7k8Z3iK/WgHBrCVguE6ggzgx4UUwi6nzrpt7XcSf+WO8cI4XY2Yn
	8DlLFyNde4tkIcMIJ3fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ph3Ue-00DP2D-23;
	Tue, 28 Mar 2023 07:11:44 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ph3Ub-00DP19-2I
	for linux-phy@lists.infradead.org;
	Tue, 28 Mar 2023 07:11:42 +0000
Received: by mail-ed1-x536.google.com with SMTP id y4so45688796edo.2
        for <linux-phy@lists.infradead.org>; Tue, 28 Mar 2023 00:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679987499;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a5fyW1eX1RAR+NBmwPpWJ9Jn0eMpcCTBleyehK3tanw=;
        b=yUYRLQb9IVWEbo20PLorrGnjtm3zZiFX+UHX46vIe6ye583NOm04sdjQJF0ruYxHRO
         0wltvHNA3PsMmTaKV7r/wcnE5B0u/pExzwBFBABJtuSlm4nhbXQ58ZrrFMLU5E5KkfT4
         +De9QmNLjfzZ8c85rGnVqsW1mIiSXDoGYpRRDJt7tKagLlUPQ8jV9F33CCKtfUAx1p4T
         JFTUt/iPM5pVFebaNmS7U/DXABCDUyyN8GRG82xvSFPxE/LG7HfnK5YuoEkl5nqEscps
         j+7QIwwHdnLT5AF8F2VJRA2i9nJ34uekIaizThFaUCrtjrRvuZFZL7AlfnSVcaBCQnhF
         m79A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679987499;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a5fyW1eX1RAR+NBmwPpWJ9Jn0eMpcCTBleyehK3tanw=;
        b=dI+VsTBOeuWcF17PbIaKwKIAHsQiaN1CyKLTthJUUF1fTqQWqIYLaEMdKjdb2nlhSH
         nnsukfMtXoufgnS6XRIMf7fNAKaePV0zu17YBG+15qpTTWKAl2RpEkipplssxc1EA8jk
         l+9iFW8e7NflMM/MjbwEdWnA5Dja3VnOdYk1ZLOodvHYuombFFVtgxGulbiJtvVyPNNh
         H9EHX5beZE+87tsp72rERa/s+iQRwCDxsKYB/ewPyNgq19Z1yXFGpEyc6isjx/kauHGV
         hoMFgNpA1YNm2SAAwu1MGS/qJEXQ/MfryJ2Tfpb9qiNTcZvb/WGEjRn6pFljQyHsRArr
         KVeQ==
X-Gm-Message-State: AAQBX9e4seJZHU98bAgoa8C6dCyWju89bmxmPQS/tWNjGy92DMgaIMLD
	9S0z17RgX7YZJqyYBqsD9W3opA==
X-Google-Smtp-Source: AKy350bYJuSxq8c07X8GOgM+6HypZc8my/E583ZMsjqpdiOYZOwxDATAJ8NU9HcdX0ogeGKLpjFyIA==
X-Received: by 2002:a17:907:c248:b0:931:ce20:db8e with SMTP id tj8-20020a170907c24800b00931ce20db8emr15303083ejc.51.1679987499545;
        Tue, 28 Mar 2023 00:11:39 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9e92:dca6:241d:71b6? ([2a02:810d:15c0:828:9e92:dca6:241d:71b6])
        by smtp.gmail.com with ESMTPSA id o23-20020a170906289700b00922547486f9sm15222236ejd.146.2023.03.28.00.11.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Mar 2023 00:11:39 -0700 (PDT)
Message-ID: <a68c7693-9d43-0aa9-c77b-26183e5a0a06@linaro.org>
Date: Tue, 28 Mar 2023 09:11:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v4 3/8] dt-bindings: usb: dwc3: Add IPQ9574 compatible
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <cover.1679909245.git.quic_varada@quicinc.com>
 <526f822a4d2397284f70ba632d92feaa3db0143e.1679909245.git.quic_varada@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <526f822a4d2397284f70ba632d92feaa3db0143e.1679909245.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_001141_755166_C8ADF5E9 
X-CRM114-Status: GOOD (  13.46  )
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

On 27/03/2023 11:30, Varadarajan Narayanan wrote:
> Document the IPQ9574 dwc3 compatible.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  Changes in v4:
> 	- Update other relevant sections
> 	- Remove constraints not applicable to IPQ9574

No, that's not way to go. These are required.

> ---
>  .../devicetree/bindings/usb/qcom,dwc3.yaml         | 22 +++++++++++++++++++---
>  1 file changed, 19 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> index a2aabda..3fc8c3c 100644
> --- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> @@ -17,6 +17,7 @@ properties:
>            - qcom,ipq6018-dwc3
>            - qcom,ipq8064-dwc3
>            - qcom,ipq8074-dwc3
> +          - qcom,ipq9574-dwc3
>            - qcom,msm8953-dwc3
>            - qcom,msm8994-dwc3
>            - qcom,msm8996-dwc3
> @@ -132,11 +133,8 @@ required:
>    - "#address-cells"
>    - "#size-cells"
>    - ranges
> -  - power-domains
>    - clocks
>    - clock-names
> -  - interrupts
> -  - interrupt-names
>  
>  allOf:
>    - if:
> @@ -242,6 +240,24 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - qcom,ipq9574-dwc3
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 5
> +        clock-names:
> +          items:
> +            - const: sys_noc_axi
> +            - const: anoc_axi

Heh, do we really need entirely different clock names for each new variant?


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

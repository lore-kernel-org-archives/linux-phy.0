Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01591C76196
	for <linux-phy@archiver.kernel.org>; Thu,  6 Apr 2023 07:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2RY/dG3/xI6CgNAj40mEBxWnOxba/JB5tjoM3yegZWw=; b=iue6yP0uco4lVx
	nqGlyZWaDeNvD17kTynh0jQi45WaaInZS77w+SJxEbR4k3z+TNpj2zuqf3Xx8DGnm2UHUbqo2Php3
	2l3oZ/rhAUsK0/xCfZCczlNhHMDbwUKEGQLs95wlz1axLCQKepD2uTYFVVGZu0dOWfAmpVTyQHwi7
	pEmPkZbiZJOqhs0X1YrEIhi7aqoLJyppIiE313Mszw7PKaWyFTtE0J28ywJ27JMo6Z6NyrrAfjf7v
	MhRCnrHHZ75GN029j5OAnvic4Ii6fkMS+OnbBrJOqrmmGoCY5iZsG7pFxKacNqXfb/H5pjN6UuGp0
	LwWqbRA3OasVN+Y3ZTWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkKHm-006fGK-28;
	Thu, 06 Apr 2023 07:43:58 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkKHk-006fFQ-00
	for linux-phy@lists.infradead.org;
	Thu, 06 Apr 2023 07:43:57 +0000
Received: by mail-ed1-x530.google.com with SMTP id h8so147207292ede.8
        for <linux-phy@lists.infradead.org>; Thu, 06 Apr 2023 00:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680767030;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uaae/Gf1/6wg+LDa+ygkgJGlypxcIUaHAsaoRhlT34o=;
        b=oXPhlK+Jp0n/xdreEycT0BU+UJH6W9xVaby3EULDTFHAz2yHsR8lYbX8zW4k/44/7H
         GMVW8mvM+/g/uyhBGczPsO9l7u07KGv0QeMItpug//0pEAuiGM4IPWtekhOpZGn9TPmx
         nvpx0JHMZQFQFIp/mjEtPutTlrQFx9MvZnb6hCPJaQniZQu5sC1yOXJ8kJDMRyxjkSiQ
         T0Fwx6nxyQ/LYMsDppw5D0vfEh9+DCA3wTdIorI6tB4uf2wF8Pjy8PysVe6Dq3fSVAm6
         tnckOPPaimKZUKnnIma4C8oKxdM0jrqhhyf86omiQZnZmlMBU2wTTsGN4Tr8Z3KMfcs6
         3VoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680767030;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uaae/Gf1/6wg+LDa+ygkgJGlypxcIUaHAsaoRhlT34o=;
        b=baApaWsw9p1x3AwU+1kUGPm64UfZZWioZlmMcnz1GgAZAamFUtDkZpUi8/mO/Bi0vw
         Fkbfpbq1WVXBvrVL6pmjzgGotPY6zCoRxNzZ2liqqPuqDyJWbhzpvoHRuJ4h//2VDS03
         zmhOPp7Ngl25osxopN6+BIDD8z8mNEG4Ec3rMmqgjuvHScrhorQ5ZT4Dv7Jgd7EQ3WzY
         2W1r7LNHg8+d3rmGm6VzQi1+9d28Mt6j/9AYDtDkNgxY6AZVvJD4DIcyv+dj0ZNKVeCG
         9Rztj/cMUQpfCtVWguvNyoycfVYTN7TcSB57WXwu/GSFMPnPk669280qb3nLxKnqwwWV
         1KPA==
X-Gm-Message-State: AAQBX9dsERE5TL58sq0xQqP3vLPgnZefVtt0QkVysKewIFY6cwryE2Oz
	39jGao+p9PqZiD6hZSyJnLDvLQ==
X-Google-Smtp-Source: AKy350aoGvLE98pNqsudQV1mmoNS4KNifIl0+eEz3ycTrvouiOMXIacvp9zYbbwm8qYxno+2SD352A==
X-Received: by 2002:a17:907:118a:b0:948:aac6:7def with SMTP id uz10-20020a170907118a00b00948aac67defmr4854533ejb.19.1680767030731;
        Thu, 06 Apr 2023 00:43:50 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed? ([2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed])
        by smtp.gmail.com with ESMTPSA id h7-20020a50cdc7000000b004fa99a22c3bsm359770edj.61.2023.04.06.00.43.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Apr 2023 00:43:49 -0700 (PDT)
Message-ID: <533651bb-e72a-c899-5b64-16d000819e20@linaro.org>
Date: Thu, 6 Apr 2023 09:43:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v8 3/8] dt-bindings: usb: dwc3: Add IPQ9574 compatible
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
 <3ee3163e6933b52e3eb4144c8041062dbd15e6c2.1680693149.git.quic_varada@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <3ee3163e6933b52e3eb4144c8041062dbd15e6c2.1680693149.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230406_004356_044807_38CF274B 
X-CRM114-Status: GOOD (  14.30  )
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
> Document the IPQ9574 dwc3 compatible.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  Changes in v6:
> 	- Made power-domains as optional
> 	- Resolved all 'make dtbs_check' messages
> 
>  Changes in v5:
> 	- Restore removed constraints
> 
>  Changes in v4:
> 	- Update other relevant sections
> 	- Remove constraints not applicable to IPQ9574
> ---
>  .../devicetree/bindings/usb/qcom,dwc3.yaml         | 22 +++++++++++++++++++++-
>  1 file changed, 21 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> index d842819..f5dd268 100644
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
> @@ -133,7 +134,6 @@ required:
>    - "#address-cells"
>    - "#size-cells"
>    - ranges
> -  - power-domains


Power domains are required. Commit msg does not explain why this should
be now optional.

>    - clocks
>    - clock-names
>    - interrupts
> @@ -197,6 +197,26 @@ allOf:
>              - const: iface
>              - const: sleep
>              - const: mock_utmi
> +      required:
> +        - power-domains
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,ipq9574-dwc3

You do not need new entry. Just open the file and file respective
existing if.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

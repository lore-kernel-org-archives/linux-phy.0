Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E653BC7EE23
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jun 2023 18:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RRIjXErckGOafrMSAC9MRBHLbCg9y2Q7gJgUW8KEpMo=; b=ALO5PFMdsAGQxX
	N2OCVT9UIR4BfsB2juE4e1An5n4jk9kWmDgc8D6N0/E/d5p+G14a99F/M/RVtT8ZRF3qe/MJG+2Zu
	7aSTDKyplO58ZILNe+J8/RPkTpxprIAdi+RvfHnKLEFgOTS1YW9PLLhK75+/sODpXyja/EBckNDTw
	tb8CYo8g4v0gyZ4xzq0qsy6IWjIJlhiiZjAjTmakyDE1ZUj5B3mNhWKfw9jF4YngvV9JCBS/ZRaCY
	AJ0Y0v+kZc5bCYZTNDr6Gq/xrWm1cT5z6rMEM4PBLHHE+cMY3mKYAi7q5cJn/7NcImWGeHcLfagRs
	xh0meWNJpoyr4VbEBsnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6xyS-006r71-1q;
	Wed, 07 Jun 2023 18:33:36 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6xyP-006r3h-2z
	for linux-phy@lists.infradead.org;
	Wed, 07 Jun 2023 18:33:35 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-5169f920a9dso1616296a12.0
        for <linux-phy@lists.infradead.org>; Wed, 07 Jun 2023 11:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686162810; x=1688754810;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3/jEtJl4NZ6AFVWENqpwdvujWaidPCP3Ivs0uh/tsyc=;
        b=yyIsvyaz+YC6j/5Dzy/+MNvUGSoqQNTFQzpkiVol4liPe22EGvhC9TO/27GhWPbBwp
         6d/U7GKG1gKpGtTAhwDpMMTjjnOJn2K0IMkJjXx9OKUuIjnWXul5jdf1beGBPRUiSWrQ
         61CotoHz24j2RiaSunM2l0L/wXkl5oJrikWRcqors/KsHkNV3dFcb1raqWQGurILjbZR
         NBKXoJgJXmn5SMlzEf+I52CAxYH9w/OthqDQ6d93oWasrKe1PTlqhqykZlmC5N8yaUyk
         tpU5MNh8ajbWEIjuqo0xRKGWK8EtVJQpm4jLR8EbUIUuigBQ6UUEmVxEw/mjrgN1K80r
         EwTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686162810; x=1688754810;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3/jEtJl4NZ6AFVWENqpwdvujWaidPCP3Ivs0uh/tsyc=;
        b=SxIW3lP1itBOIYpJVrLod3lPDT7JKMGbqKKFRpB6h25XRqjXWMGQl/B5Nd1+A0x7Bw
         OCXZ7LrTkW8MMX+cY7b1JjB60t4ucPtfxIsfBUtE2EX5guTkBR10Pf71XF7u5lBRCy5n
         1BdhFcYzUFB5NhOXI64WIQUJQSd53P1TzvU9bfEt7VS+1sxd/5NwBdpTemwIhpINUH4s
         j1F0RefoMzvmSw/5Dt+lns+xWhvgpm0bVLLoyGOMDaRAgcUp2mRsyKCSyJlo9lMMRzgr
         zP6NsrNczD/YytYExqBuuLFXuswJ7slBRBzeiw3f1wjt1K5EM5NPwETH21+/jPlNnWpD
         +SaA==
X-Gm-Message-State: AC+VfDz3D2CheRznW/Ac9sy1cxmgOxC2XTLMlr+4kaeZZiG7l1oCzqUN
	jAPr+Tf0skVGpTJlZxm5X6VD3w==
X-Google-Smtp-Source: ACHHUZ44tSnQcNjSduQ/Kmu2KqHCyGS/zvLF7ZqpuqAWBIXrj7HWJDdybMg3GIK5gBATFvAVVoRLaw==
X-Received: by 2002:aa7:c256:0:b0:514:a302:c334 with SMTP id y22-20020aa7c256000000b00514a302c334mr5962899edo.14.1686162810142;
        Wed, 07 Jun 2023 11:33:30 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id bo28-20020a0564020b3c00b00514b1d2759bsm6452502edb.42.2023.06.07.11.33.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jun 2023 11:33:29 -0700 (PDT)
Message-ID: <8fdd584e-988f-8542-f635-c0f6b5e63580@linaro.org>
Date: Wed, 7 Jun 2023 20:33:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH 1/9] dt-bindings: usb: dwc3: Add IPQ5332 compatible
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com,
 will@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 p.zabel@pengutronix.de, arnd@arndb.de, geert+renesas@glider.be,
 neil.armstrong@linaro.org, nfraprado@collabora.com, broonie@kernel.org,
 rafal@milecki.pl, quic_srichara@quicinc.com, quic_varada@quicinc.org,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
References: <cover.1686126439.git.quic_varada@quicinc.com>
 <d07f804802f0678746aeba55910a83209ecbe054.1686126439.git.quic_varada@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <d07f804802f0678746aeba55910a83209ecbe054.1686126439.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_113333_970028_A07422B5 
X-CRM114-Status: GOOD (  11.24  )
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

On 07/06/2023 12:56, Varadarajan Narayanan wrote:
> Document the IPQ5332 dwc3 compatible

Full stop.

> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> index ae24dac..9c3d6f4 100644
> --- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> @@ -14,6 +14,7 @@ properties:
>      items:
>        - enum:
>            - qcom,ipq4019-dwc3
> +          - qcom,ipq5332-dwc3
>            - qcom,ipq6018-dwc3
>            - qcom,ipq8064-dwc3
>            - qcom,ipq8074-dwc3
> @@ -246,6 +247,7 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - qcom,ipq5332-dwc3
>                - qcom,msm8994-dwc3
>                - qcom,qcs404-dwc3

What about interrupts?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

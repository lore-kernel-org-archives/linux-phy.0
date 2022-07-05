Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B9D0C43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kTnMhh914ou97F14uTVBcabQU0KrljqtyQoGkbnLvnk=; b=Ie2aICCM8jlDvr
	yk6E5crnaVTQJnMfd9rbaldw0ScX7T18n0vYAosQ1FF6IZF2wSHewCC835JE7X9F/WlTFKLZtkRQr
	R42EXF3NvgxCNOFGxOg4Ya1JwIniz1wvzhyGMUEFsaXNmIwObKAesG9q5KiBRD0pTXP7L4ePXmw/j
	BKwX1jaPZe/j6LKrJUlRrGZk+5QZ7hYnqTM5raa/ELRtKSdun8LvlZA88Hs+kk5FrandCcuf6jQWp
	qDXVAbyaOTwZkTi5Cc1q0iTOQNHzFX0FJ6FhOyPFOcI/EzugeoFnbtkd8/DHVY3ac+knwEz+LYtAV
	DdrU8Au3WnBRL8Std66g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fdk-00H7Xg-Qn; Tue, 05 Jul 2022 10:18:44 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fdh-00H7VP-TI
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 10:18:43 +0000
Received: by mail-lf1-x12b.google.com with SMTP id e12so19743269lfr.6
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 03:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=hudqrHCKHjHnY86E2cbabmocgs4f7VaQ7Yht6ne0FPY=;
        b=qZrwpYGNFxwAtgnqKYHB3OuuvuoHrRVVEC7FiFeIXT6xzlnCaRvRptQdnBh674uozV
         kgxLmUqWZkrt3AGS13cn0RZq8DZ1ej/DCnRxsYzNRDr9FOTRGYmK9s/oQJISUjOCHEkz
         t3RhRbfpY1Xw7xbx1YTqltxLnpz3Afrgst27KGpgZGp3XDWVtpSnDuS1K4qtiPhVup4e
         Qahr+G4PEhGzGu7399bNB5nTZPcFyOlxcKa7pjJaTqHDD3IO4WQ6StJDVzQxa3KKrx+Q
         zznSflZSNji8VEtzRPioP4P5hdxScaBOazt9qxLA78VhetX0kDn/+MSEEtqonQ08O5Sd
         Zshw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=hudqrHCKHjHnY86E2cbabmocgs4f7VaQ7Yht6ne0FPY=;
        b=SSUmS0ql9TFd8ZVZpXCba3+dS8JNQ4s+YPr8G5V4h4NjJr0HbHkGeagdyplk4YqOft
         ihsLXfhmWCa7P85fOBdhymiV81Bw0Q+Cx/lucWxBGx9oMpYUXs9x4I0kDXwLEon6skdO
         ATBhfmDgnkDtIsvII9KcEeangK4gtfvDD/ADdZx626iIqW0kHhoweQBeCZektSS954M3
         W0Q770MKvLZic0wz4qEeFrQH1vjyCh6wVhfMU0O3ymdsxxlD3RwR7O+0fG+8TsPfQWAY
         qxVmLHyUxt+OTv7WKJZQRlQcfAqSZJCfyif17P+qYYqdHpBjN3+jXk5oHVED4CPmMaR8
         Xxng==
X-Gm-Message-State: AJIora8vVxZRBmODK4v/ttPiU3e81K7p0x3TZsB9C2NiGfaJp4P5AXGY
	i6dTcp6kCxikIo7y7oNydaBafw==
X-Google-Smtp-Source: AGRyM1uFV7Za3xwFdWCy8zr8muTdlxFxisFa4jDiP6HibmXwfHK9EEbNydOI2aOLzu9QqTL+3l8/vw==
X-Received: by 2002:a19:640e:0:b0:479:5347:b86e with SMTP id y14-20020a19640e000000b004795347b86emr21079887lfb.563.1657016320034;
        Tue, 05 Jul 2022 03:18:40 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id b15-20020a19644f000000b0048329aa6c92sm411178lfj.139.2022.07.05.03.18.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 03:18:39 -0700 (PDT)
Message-ID: <4bc79a1c-66b1-225d-5026-ddf3e6f7d22c@linaro.org>
Date: Tue, 5 Jul 2022 12:18:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 17/43] dt-bindings: phy: qcom,qmp-pcie: add missing child
 node schema
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-18-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705094239.17174-18-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_031842_001382_214CAC4A 
X-CRM114-Status: GOOD (  16.14  )
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

On 05/07/2022 11:42, Johan Hovold wrote:
> Add the missing the description of the PHY-provider child node which was
> ignored when converting to DT schema.
> 
> Also fix up the incorrect description that claimed that one child node
> per lane was required.
> 
> Fixes: ccf51c1cedfd ("dt-bindings: phy: qcom,qmp: Convert QMP PHY bindings to yaml")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  .../bindings/phy/qcom,qmp-pcie-phy.yaml       | 88 ++++++++++++++++++-
>  1 file changed, 85 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
> index ff1577f68a00..5a1ebf874559 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
> @@ -69,9 +69,37 @@ properties:
>  patternProperties:
>    "^phy@[0-9a-f]+$":
>      type: object
> -    description:
> -      Each device node of QMP PHY is required to have as many child nodes as
> -      the number of lanes the PHY has.
> +    description: Single PHY-provider child node.
> +    properties:
> +      reg:
> +        minItems: 3
> +        maxItems: 6
> +
> +      clocks:
> +        items:
> +          - description: PIPE clock
> +
> +      clock-names:
> +        items:
> +          - const: pipe0
> +
> +      "#clock-cells":
> +        const: 0
> +
> +      clock-output-names: true
> +
> +      "#phy-cells":
> +        const: 0
> +
> +    required:
> +      - reg
> +      - clocks
> +      - clock-names
> +      - "#clock-cells"
> +      - clock-output-names
> +      - "#phy-cells"
> +
> +    additionalProperties: false
>  
>  required:
>    - compatible
> @@ -180,3 +208,57 @@ allOf:
>        required:
>          - vdda-phy-supply
>          - vdda-pll-supply
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,sm8250-qmp-gen3x2-pcie-phy
> +              - qcom,sm8250-qmp-modem-pcie-phy
> +              - qcom,sm8450-qmp-gen4x2-pcie-phy
> +    then:
> +      patternProperties:
> +        "^phy@[0-9a-f]+$":
> +          properties:
> +            reg:
> +              items:
> +                - description: TX lane 1
> +                - description: RX lane 1
> +                - description: PCS
> +                - description: TX lane 2
> +                - description: RX lane 2
> +                - description: PCS_MISC
> +    else:
> +      patternProperties:
> +        "^phy@[0-9a-f]+$":
> +          properties:
> +            reg:
> +              minItems: 3
> +              maxItems: 4
> +              items:
> +                - description: TX
> +                - description: RX
> +                - description: PCS
> +                - description: PCS_MISC
> +      if:

Do not include if within other if. Just split the entire section to its
own if:.


> +        properties:
> +          compatible:
> +            contains:
> +              enum:
> +                - qcom,ipq6018-qmp-pcie-phy
> +                - qcom,ipq8074-qmp-pcie-phy
> +                - qcom,msm8998-qmp-pcie-phy
> +                - qcom,sdm845-qhp-pcie-phy
> +      then:
> +        patternProperties:
> +          "^phy@[0-9a-f]+$":
> +            properties:
> +              reg:
> +                maxItems: 3
> +      else:
> +        patternProperties:
> +          "^phy@[0-9a-f]+$":
> +            properties:
> +              reg:
> +                minItems: 4


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

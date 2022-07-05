Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D0DCC433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UfGdViOO/IQIaJYE8iq+mlfOHFKZX86gtDbmJlLf4PI=; b=JiBDThpBhRV/q+
	9b/2+lE+TUITiq/bTT1U8fhsb0Dd7HWm5iR4w5pjhstfqQsW1Czw37v1pKvDN9vLTrDHNbQa6xLNw
	uZofWvREPdUmp25dYzAKr2DuBK1LOgMn1IdKQ7f95sUFf/0nuUoLdAgdGzQUqhqhIJd5eYJB4iI68
	5TFDQNjMi45MKMQMvcddOtaGYiL+BShm39h6ovwo2Trp9kFlBQkMOy3sy/kT0DRDU7vzI8wutael7
	89urCITr/mrVzGpFLPr8zu4lr73VuGjDUDG4CW/CNrkGSBb2I0OIAODytU5cc3DlQA3N8oKZ9N5yC
	SI0N47bmXEVttZo+CsDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fef-00H7v7-S0; Tue, 05 Jul 2022 10:19:41 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8feb-00H7r9-5v
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 10:19:38 +0000
Received: by mail-lf1-x132.google.com with SMTP id i18so19724006lfu.8
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 03:19:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=7ltLTaBEV4Dndg/PZxmASrNkQw7/tHT8uBCcJkojjNo=;
        b=sshcdqW44eA9XhkENF4BsPVKcelBUpolYOWfgzC458pv/AsvxQSgJYyMapsgffJtas
         VutA2/jow5ZMwCG/WJX22xI+iaJOamCPkthvcHYRzzFxS7w3OVnLGSu4BJ7adk9QHIpO
         YYWiUI85XJyCdpwE7ytHyXrLT6DrS4+IkG8/0czlhbyy98KlZVSKMkoTbT2IsErFfnrW
         lDfF6ks7GaIQGmmb+/O5C/fqHBTZd2iDq/pUGJ+I04zgRpnV1czETUBhbleR0nJjkvky
         m13j2Zw+glqkyLvmuYtBni7C52LLIfBzG8o7gISUjCagIKzWRRjO7cPgYM/cGbaA5ULh
         rq5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=7ltLTaBEV4Dndg/PZxmASrNkQw7/tHT8uBCcJkojjNo=;
        b=1HmWT/OyuLKTcK+F2hdgtvtaD+aRaPc7CNUZRpSj/agA38O1Nuuw7m6kSGKfLa5uc1
         eMvJO2sRgC7EnFfEkR7keRFcJPVMReRqxgy57/QN4UG4s8Y1/q5q/wEMwIzRvMowggvq
         IAXtl4ovsx2hn3jBKjPvUNJ2Pt5cKW/340QD0bApvXq9v71qjr8LODAmKe/AJkvUfceZ
         3ixSgqQDyGLuTx5KYnWknr3y9REmsJ2GCfhO9ZREVFGcj84vcznIAgvuaUy5xja39uea
         XeUjd8cXWpLTvxfg5JMJI1Q9BmRfRVmhuSJAor/RvGxPp3n2qghRWK9NjlWGLFvq6RTh
         Zubg==
X-Gm-Message-State: AJIora+kWDY7NhWH4+qWKPf+i7hfsII2kaxbY3zQ8SyRcINaY06LLTeX
	qCgW+lvaatZ7DD9YKMeoLaCGTw==
X-Google-Smtp-Source: AGRyM1ubhhSgV3Tz/xKqrayJWFA5svm/yrJxl4CpDllXR/27n6qEPxHLci9PU+ox5DFVjkhsy7Jycw==
X-Received: by 2002:a05:6512:2207:b0:47f:70b3:52d with SMTP id h7-20020a056512220700b0047f70b3052dmr21424409lfu.174.1657016375352;
        Tue, 05 Jul 2022 03:19:35 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id 17-20020a2eb951000000b00253bc47c202sm5528776ljs.59.2022.07.05.03.19.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 03:19:34 -0700 (PDT)
Message-ID: <f6e9bba4-6ffc-7df9-152d-caae0c90f1b2@linaro.org>
Date: Tue, 5 Jul 2022 12:19:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 20/43] dt-bindings: phy: qcom,qmp: split out UFS PHY
 binding
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
 <20220705094239.17174-21-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705094239.17174-21-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_031937_277663_4089D51F 
X-CRM114-Status: GOOD (  13.81  )
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
> The QMP PHY DT schema is getting unwieldy. Break out the UFS PHY
> binding in a separate file.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  .../devicetree/bindings/phy/qcom,qmp-phy.yaml |  65 --------
>  .../bindings/phy/qcom,qmp-ufs-phy.yaml        | 149 ++++++++++++++++++
>  2 files changed, 149 insertions(+), 65 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> index f416a1a53a3f..04c24f8e4526 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> @@ -19,32 +19,21 @@ properties:
>      enum:
>        - qcom,ipq6018-qmp-usb3-phy
>        - qcom,ipq8074-qmp-usb3-phy
> -      - qcom,msm8996-qmp-ufs-phy
>        - qcom,msm8996-qmp-usb3-phy
> -      - qcom,msm8998-qmp-ufs-phy
>        - qcom,msm8998-qmp-usb3-phy
>        - qcom,qcm2290-qmp-usb3-phy
>        - qcom,sc7180-qmp-usb3-phy
> -      - qcom,sc8180x-qmp-ufs-phy
>        - qcom,sc8180x-qmp-usb3-phy
> -      - qcom,sc8280xp-qmp-ufs-phy
> -      - qcom,sdm845-qmp-ufs-phy
>        - qcom,sdm845-qmp-usb3-phy
>        - qcom,sdm845-qmp-usb3-uni-phy
>        - qcom,sdx55-qmp-usb3-uni-phy
>        - qcom,sdx65-qmp-usb3-uni-phy
> -      - qcom,sm6115-qmp-ufs-phy
> -      - qcom,sm6350-qmp-ufs-phy
> -      - qcom,sm8150-qmp-ufs-phy
>        - qcom,sm8150-qmp-usb3-phy
>        - qcom,sm8150-qmp-usb3-uni-phy
> -      - qcom,sm8250-qmp-ufs-phy
>        - qcom,sm8250-qmp-usb3-phy
>        - qcom,sm8250-qmp-usb3-uni-phy
> -      - qcom,sm8350-qmp-ufs-phy
>        - qcom,sm8350-qmp-usb3-phy
>        - qcom,sm8350-qmp-usb3-uni-phy
> -      - qcom,sm8450-qmp-ufs-phy
>        - qcom,sm8450-qmp-usb3-phy
>  
>    reg:
> @@ -202,60 +191,6 @@ allOf:
>        required:
>          - vdda-phy-supply
>          - vdda-pll-supply
> -  - if:
> -      properties:
> -        compatible:
> -          contains:
> -            enum:
> -              - qcom,msm8996-qmp-ufs-phy
> -    then:
> -      properties:
> -        clocks:
> -          items:
> -            - description: 19.2 MHz ref clock.
> -        clock-names:
> -          items:
> -            - const: ref
> -        resets:
> -          items:
> -            - description: PHY reset in the UFS controller.
> -        reset-names:
> -          items:
> -            - const: ufsphy
> -      required:
> -        - vdda-phy-supply
> -        - vdda-pll-supply
> -  - if:
> -      properties:
> -        compatible:
> -          contains:
> -            enum:
> -              - qcom,msm8998-qmp-ufs-phy
> -              - qcom,sc8180x-qmp-ufs-phy
> -              - qcom,sc8280xp-qmp-ufs-phy
> -              - qcom,sdm845-qmp-ufs-phy
> -              - qcom,sm6350-qmp-ufs-phy
> -              - qcom,sm8150-qmp-ufs-phy
> -              - qcom,sm8250-qmp-ufs-phy
> -    then:
> -      properties:
> -        clocks:
> -          items:
> -            - description: 19.2 MHz ref clock.
> -            - description: PHY reference aux clock.
> -        clock-names:
> -          items:
> -            - const: ref
> -            - const: ref_aux
> -        resets:
> -          items:
> -            - description: PHY reset in the UFS controller.
> -        reset-names:
> -          items:
> -            - const: ufsphy
> -      required:
> -        - vdda-phy-supply
> -        - vdda-pll-supply
>    - if:
>        properties:
>          compatible:
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
> new file mode 100644
> index 000000000000..4471f1b4fb7a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
> @@ -0,0 +1,149 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/phy/qcom,qmp-ufs-phy.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +

All previous comments apply.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

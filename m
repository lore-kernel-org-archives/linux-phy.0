Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7BD2C6FD1D
	for <linux-phy@archiver.kernel.org>; Fri,  7 Apr 2023 08:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=989nrpAS2mf59xcdt6x5H83fAP9Rx0FeerCI0XEaFiw=; b=O7R9gjZkF8Rna5
	0JKZJGfUH5GMR3CzZfNFPiDFLONRVKcD1XsDdWFzjp4Qa6nuXvInUbRFlH7Myle0lJHZcc6NBLnLI
	HIOX0mcAB/qguzedLpXhCknFnsaLp5VQ75BmY33PKQct6z81CR3V8xl9mNKeMemFLyKccHYv/w6bC
	LA/5hgt2ZytvrR9CN36M8NxkTBhUED7/+rJv3RGzxhRsVny0KX3SGQatCQuzQgiMCGfPCC8NZgtDz
	5HBSy2Qkf2Su0QE3o5Ys07WJavhYfs4+ygN0Z4hmCf5IJezlmoAPMmz+TgM9jgUJijjJy+wbTvmWs
	qMIRlbxcjjrZrqGnfr2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkhlI-009YB8-11;
	Fri, 07 Apr 2023 08:48:00 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkhlF-009YAW-2f
	for linux-phy@lists.infradead.org;
	Fri, 07 Apr 2023 08:47:59 +0000
Received: by mail-ej1-x62a.google.com with SMTP id cw23so6991164ejb.12
        for <linux-phy@lists.infradead.org>; Fri, 07 Apr 2023 01:47:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680857276;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=isknrhl7Ozvk9X2AHSK4BNf2Ami8lH42t6zYtaIblto=;
        b=X1I0/H6UGHdKgeMaP/rmuueGasci7yEZbHv1ElHhgQm6C+DxyLztboqN+eMnJMv9zs
         bRHSr4EkyHysK/fLOQsRJpCpVeFJYSmudkD2oNEQ6UGTfR5dA9QcBrJhfLJv3240lXoY
         qV8kuT+B6WbKLMJ7/tEKkTXh81qMJxxeCvX9L7meBE+HimWc8n6kZ93u0hh+fER7yDxu
         VfpJz7vGB4Erdh5nqTZI7+pl7DjPj/o/86KJBrqPV3xAq6tX6ZoVzxIIjtoULC1qkGoS
         GthZTMKntifN3XObhsHWHixeQyIcJy5IdAcuHphYrCD6n/pO9mwhm0Tbp0bJs6grnhS4
         kbLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680857276;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=isknrhl7Ozvk9X2AHSK4BNf2Ami8lH42t6zYtaIblto=;
        b=OOhHioCd0PqZIDjM8qO3kTvsQPsFkB9smZsD26MT+r8tRBOPG1zaLpQ9VPwAA9uenl
         M8vPl7zM++E+7Frue9GEWFFo5u6taxvoJYK1sWVRPar9NYBfWDyLPIu9nv+d5idEJ8hq
         gl/d6xEj3FjpkB+yCfQsBZ7fqlPfqQreAjZMghaOW/fO21BGwiGS1PqaBF7AkRfG9a8g
         PDbgc/N9Y06NOcynH2qPH3n+p2fahKcP41/vhPVXQA2ytI34v5hOfPBkxjqSkoeEaIWs
         OhXNyjAeEZt1KQHxc8NV05ClcPwoiVsc4EfUEh56E4LVKPI1SWBthTciHSlst94xVJEe
         8lEA==
X-Gm-Message-State: AAQBX9fLkqfP3u1rrDO9qs7klNgWzFIkvIH01vvuV1SABI/IPBw4Fkos
	8QH7p7aj59YVrohiXcgFXUS8jA==
X-Google-Smtp-Source: AKy350aVBNxf/rWJt3ZqXMKvTuUvnSB1Lreq8iG8swX1X8Q+ImyfVs42UjDFFR5LihOTseZ8WSogbQ==
X-Received: by 2002:a17:906:6da:b0:93a:f977:e0fe with SMTP id v26-20020a17090606da00b0093af977e0femr1404701ejb.20.1680857276039;
        Fri, 07 Apr 2023 01:47:56 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:14a3:366:3172:3c37? ([2a02:810d:15c0:828:14a3:366:3172:3c37])
        by smtp.gmail.com with ESMTPSA id fy36-20020a1709069f2400b00927f6c799e6sm1794361ejc.132.2023.04.07.01.47.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Apr 2023 01:47:55 -0700 (PDT)
Message-ID: <4b972e89-8023-8ed7-cd18-fb935be50c64@linaro.org>
Date: Fri, 7 Apr 2023 10:47:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 2/5] dt-bindings: phy: qmp-ufs: describe the UFS PHY
 for sa8775p
Content-Language: en-US
To: Bartosz Golaszewski <brgl@bgdev.pl>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Manivannan Sadhasivam
 <mani@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20230406194703.495836-1-brgl@bgdev.pl>
 <20230406194703.495836-3-brgl@bgdev.pl>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230406194703.495836-3-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230407_014757_869050_D44B50D0 
X-CRM114-Status: GOOD (  15.76  )
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

On 06/04/2023 21:47, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Add a new compatible for the QMP UFS PHY found on sa8775p platforms and
> update the clocks property to accommodate three clocks.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
>  .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        | 26 ++++++++++++++++++-
>  1 file changed, 25 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> index cd0fbbd3593d..5bc93acccbad 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> @@ -16,6 +16,7 @@ description:
>  properties:
>    compatible:
>      enum:
> +      - qcom,sa8775p-qmp-ufs-phy
>        - qcom,sc8280xp-qmp-ufs-phy
>        - qcom,sm6125-qmp-ufs-phy
>        - qcom,sm7150-qmp-ufs-phy
> @@ -25,12 +26,15 @@ properties:
>      maxItems: 1
>  
>    clocks:
> -    maxItems: 2
> +    minItems: 2
> +    maxItems: 3
>  
>    clock-names:
> +    minItems: 2
>      items:
>        - const: ref
>        - const: ref_aux
> +      - const: qref
>  
>    power-domains:
>      maxItems: 1
> @@ -52,6 +56,26 @@ properties:
>    "#phy-cells":
>      const: 0
>  
> +allOf:

I should notice wrong different placement before.
allOf: blocks goes just like in example-schema, so after required:.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,sa8775p-qmp-ufs-phy
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 3
> +        clock-names:
> +          maxItems: 3
> +    else:
> +      properties:
> +        clocks:
> +          maxItems: 2
> +        clock-names:
> +          maxItems: 2
> +
>  required:
>    - compatible
>    - reg

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

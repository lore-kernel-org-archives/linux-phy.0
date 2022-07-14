Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D761C43334
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 09:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dxV78jV1VLk8kP4F0d248Wzeu5KIbmREjcPBMAI7aZY=; b=08epqiO9MAjMkW
	e7aBf5Tv8kgw7x8cRqaZvtSYi75AG8WjBPI/bMfujV5QeYjPweHd0uVMOO33EZ4iyewI24bDGENjo
	dg5n5YPpJyenASlhnMEdlgRqB+OO3jfjNtabKJrRE7IWRRShYoHpZEl3a2JcwijBww/z0trcDAv2I
	UD24z0cIspOop6x7uIsQ+QGhMZCLcW3fGFsjyqB6+rUa0uk6vSDEMblrBOlPYEVcvaQEFNmVgeDfI
	ixVUw0vSxIRVRlWVB6eXMnKJZ0dg/2emy295Sv2cfkMlpPd7dgMnfofdbkqFtYgbhj50LTUPf/+e4
	9D1G9sQnzw1FC0MEkumQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBv5F-00CnvB-J0; Thu, 14 Jul 2022 09:24:33 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBv5A-00CnrX-Tr
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:24:32 +0000
Received: by mail-lj1-x22a.google.com with SMTP id p6so1446123ljc.8
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 02:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=RIxuG/dWnqPo1zA+7iiSWWGISkJu/Q1yXByyi5sW6U8=;
        b=lHItioyrMcudO1VZcpnWVPESfr1Qk/hh+owstM81ntCb3Qxosq2w2IYo7CW0WwKq3e
         /BPS1vgpHNVg7VgI9Z8QBewKc+GOw1br1gmSwmkvuuBcKK3IM2Ao41rKm8iPgx+FcpHN
         C3POgdOjUU4nzr1hrB99JC5i9mhGZaSVTFv8MVU2UnqbbWXIYgSvd7wTnpUzzgpjv/0/
         Vto2erTm/6hODJGYcGp8DWu2BaBS5m84Cm/oZ+HbOZt571WLStEHPmpTmnWhnJDAQvFm
         Os9ddYHeHlzVb0mT9WXV0t5TBYzb4P52C6iPSwBx4V9uwQdR/JvLSejbQS2bIoiWG6uC
         lRtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=RIxuG/dWnqPo1zA+7iiSWWGISkJu/Q1yXByyi5sW6U8=;
        b=L5ESrEq3rxSQUDy+wnLZEPSdpPIGPkigaoFiJKDlG+Yk+vZHMAMldjeDsyP8E1nLKh
         HTa1odpCBZR3B1Vj3US9NX1vhfpOnhcfHXrfahpSC6nnZN1smzG9tW+KKU+dt9HlV2T5
         2K4zcctjfm3TKlE13d2w2B9yj0An83ixeLbCVZWb3McInNnH01n1BZ7T6rc+YJeFofl4
         3wkiO5JhUz7X4W1hQ9WNz/uHGY3vUQjKHAfxD1uTcIxz1jx1HptGJWJM3ooljfMqKQal
         U32Lex15L9lqfRVjOTrOWz8iZYfx74KAMCCPsV3EJBsKmW2bEdlM3UVwaOW7UQXOPWt7
         R8jg==
X-Gm-Message-State: AJIora+bO12iB3VvU+wd4Ro3prpDusfA4QjCuU1QSG+DVtFb5qgjmHez
	nxnB8DPXwV3nHXSeRpwVa4+ZCw==
X-Google-Smtp-Source: AGRyM1umRoewL9yaPTS/tooayVYudGK1+3bahkbSalpzztsgA3NuexMrwv0s9xCdLxj1UJ3muI8JDg==
X-Received: by 2002:a2e:93c8:0:b0:24e:eabd:bf6e with SMTP id p8-20020a2e93c8000000b0024eeabdbf6emr3844403ljh.347.1657790667064;
        Thu, 14 Jul 2022 02:24:27 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id z20-20020a2eb534000000b0025d6ecbc897sm184901ljm.46.2022.07.14.02.24.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:24:26 -0700 (PDT)
Message-ID: <b98aefd2-b0d3-66da-01d4-754c206d6fca@linaro.org>
Date: Thu, 14 Jul 2022 11:24:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 19/30] dt-bindings: phy: add QMP USB PHY schema
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-20-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-20-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_022429_022106_103BA4D6 
X-CRM114-Status: GOOD (  13.15  )
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

On 07/07/2022 15:47, Johan Hovold wrote:
> The QMP PHY DT schema is getting unwieldy. Break out the USB PHY
> binding in a separate file.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  ...com,qmp-phy.yaml => qcom,qmp-usb-phy.yaml} | 69 +++++--------------
>  1 file changed, 18 insertions(+), 51 deletions(-)
>  rename Documentation/devicetree/bindings/phy/{qcom,qmp-phy.yaml => qcom,qmp-usb-phy.yaml} (82%)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
> similarity index 82%
> rename from Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> rename to Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
> index 21d6ec875529..66cabf4d5722 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
> @@ -1,11 +1,10 @@
>  # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> -
>  %YAML 1.2
>  ---
> -$id: "http://devicetree.org/schemas/phy/qcom,qmp-phy.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/phy/qcom,qmp-usb-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>  
> -title: Qualcomm QMP PHY controller
> +title: Qualcomm QMP PHY controller (USB)
>  
>  maintainers:
>    - Vinod Koul <vkoul@kernel.org>
> @@ -51,20 +50,20 @@ properties:
>    ranges: true
>  
>    clocks:
> -    minItems: 1
> +    minItems: 3
>      maxItems: 4
>  
>    clock-names:
> -    minItems: 1
> +    minItems: 3
>      maxItems: 4
>  
>    resets:
> -    minItems: 1
> -    maxItems: 3
> +    minItems: 2

Skip minItems (equal to max)

> +    maxItems: 2
>  
>    reset-names:
> -    minItems: 1
> -    maxItems: 3
> +    minItems: 2

The same.



Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

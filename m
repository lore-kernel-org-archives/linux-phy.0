Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9F67C76188
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 11:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lqWqAZAfJHpr9uFbOdiu3pvwZAB/8bs/e9FpqzVLYcA=; b=VieUBTfKkSfxEp
	aD2mZpdfyT/by+cdB3BmcEex7JXqC73plN94zXcxiNwu68wJvH+euL8G7KUkJYpfyn7aL/TZPBJzL
	NX+lEcCvjOZk1cramVjnf3qUS/E53dfhnpRxKr0+DL5l6urKOxjzmPTP0Q7eJsPH4Mz9StPaQF35K
	4OfzVC9LZcEnIy3NAZbCNpWI60RUp1lW9bEp+OPAGJshk/dmRHc5qB3aYjOm+7MX3Z4l1HbuiAr17
	mhE7mjWkxLLDqCWJ7nqq6fwgMWPBENngnjhZvXeW7JJeYCBW3kYt4nr5Dly8Y0flmXoD+zsxgH7V4
	U2rny9lRi/RidEGomQTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk1fT-004KQz-1Q;
	Wed, 05 Apr 2023 11:51:11 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk1fO-004KOU-2L
	for linux-phy@lists.infradead.org;
	Wed, 05 Apr 2023 11:51:08 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-502234a1f08so341466a12.3
        for <linux-phy@lists.infradead.org>; Wed, 05 Apr 2023 04:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680695464;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PEJZogkw2jx65ZdRCOLlWmLoNVIfXowhGDmP2BgB5ww=;
        b=ICrSx230GHXpweLTGQkQV4pOzvP51d7Az7pKzc5Mhi/NY5kFuWC9TCngRnvgP8NqJ2
         y1k7uFlV8NiCU+4Lu210gji1TRlScgNzhxkGZIhJv8YLNIOPlX732Z0wMtlNEQ7q8mwz
         l7dcbqGWdwaZrrQhS1LjIhvOfphvOs7UXmW+SM/JTK0G72c06M3XDDqLbwnVHZKTWBQI
         I/zBcf3XJuO8tUOgw8xjeTbFy/Xz0BgdhjqKfhQiPKTvadMCUmltkGj2FQ0O16wKMYMj
         mGRHZ1W4hmCA1pzpvgSs8C6kzsM377rMC5NTKOmE6uDrATFxjaUiqmeuU4GY4e/8HLxy
         t9uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680695464;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PEJZogkw2jx65ZdRCOLlWmLoNVIfXowhGDmP2BgB5ww=;
        b=u26CgM7dXp+YR3idrTqba3f5j+7C6msA77dtRBzBTyZwAhG9ZQ0bAVO1WaXtfxVTGO
         5yIpI9Uc6zF8zWXyvSo0ipcbNIzDesBJvdO7eORJITjffsyDtd+8hwOy7m6af/BJnEey
         x+ieGj6IvxZdtaYEIdY/iQOLAWDWhQ7GZWFzZU271e4aPvyFrjDQxGN3W2jsMk0XULI1
         ewMaslGrYnLk+8fSpVv2cO75XT/zXlPX+5kexX/4ysUDvS6U7XnSA00BK9U/VtFMTIef
         YeKHcy4e9DK2CEdcAtp9Kx6bryPoAvrz7zKhhsCUMg7ZMrf9+3T60JhJd73Uwf3Y88it
         gtWA==
X-Gm-Message-State: AAQBX9eB91Edr3Ha7TqArjecA5WtXYcf9WfhV/jlCgB94AfvikT7g3x8
	PPONrqsherfYhTl3tCrR9KxmLA==
X-Google-Smtp-Source: AKy350bVqHYHaZ9yu1s8YRFR/WPFDOaNrZpD3EVzfo7T8Exbhyd2Z73xyhhF6i/zERdbvo7R04rCyA==
X-Received: by 2002:a05:6402:216:b0:4fb:ec6a:2357 with SMTP id t22-20020a056402021600b004fbec6a2357mr1607480edv.34.1680695464452;
        Wed, 05 Apr 2023 04:51:04 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:3f:6b2:54cd:498e? ([2a02:810d:15c0:828:3f:6b2:54cd:498e])
        by smtp.gmail.com with ESMTPSA id a9-20020a509e89000000b005024e725aefsm7189622edf.33.2023.04.05.04.51.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Apr 2023 04:51:04 -0700 (PDT)
Message-ID: <5398cbe0-c681-5dd7-0b3e-3a586cc4915f@linaro.org>
Date: Wed, 5 Apr 2023 13:51:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] dt-bindings: phy: imx8mq-usb: add phy tuning
 properties
Content-Language: en-US
To: Johannes Zink <j.zink@pengutronix.de>, vkoul@kernel.org,
 kishon@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, jun.li@nxp.com,
 haibo.chen@nxp.com, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20230405112118.1256151-1-j.zink@pengutronix.de>
 <20230405112118.1256151-2-j.zink@pengutronix.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230405112118.1256151-2-j.zink@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_045106_766877_C459F12F 
X-CRM114-Status: GOOD (  12.76  )
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

On 05/04/2023 13:21, Johannes Zink wrote:
> Add optional properties for tuning of usb phy.
> 
> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
> ---
>  .../bindings/phy/fsl,imx8mq-usb-phy.yaml      | 40 +++++++++++++++++++
>  1 file changed, 40 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> index e6f9f5540cc3..f452a41b4f32 100644
> --- a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> @@ -35,6 +35,46 @@ properties:
>      description:
>        A phandle to the regulator for USB VBUS.
>  
> +  fsl,phy-tx-vref-tune:
> +    description:
> +      HS DC Voltage level adjustment

"Level" in what units?

> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
> +
> +  fsl,phy-tx-rise-tune:
> +    description:
> +      HS Transmitter Rise/Fall Time Adjustment
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [0, 1, 2, 3]
> +
> +  fsl,phy-tx-preemp-amp-tune:
> +    description:
> +      HS Transmitter Pre-Emphasis Current Control

If this is current then use standard unit suffixes.

> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [0, 1, 2, 3]
> +
> +  fsl,phy-tx-vboost-level:
> +    description:
> +      TX Voltage Boost Level
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [0, 2, 3]
> +
> +  fsl,phy-comp-dis-tune:
> +    description:
> +      Disconnect Threshold Adjustment
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [0, 1, 2, 3, 4, 5, 6, 7]
> +
> +  fsl,phy-pcs-tx-deemph-3p5db:
> +    description:
> +      TX De-Emphasis at 3.5 dB
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +
> +  fsl,phy-pcs-tx-swing-full:
> +    description:
> +      TX Amplitude

I have feeling you just pasted here short titles from datasheet. They
are not that helpful.



Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

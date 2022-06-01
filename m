Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6ADAAC433EF
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jun 2022 09:35:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vHvVkd4SvQ3KgR506YzT3osJLsK+cOxqC0j90NluJG0=; b=csMEfF8UJo4R/j
	tlw9IxDI4jUIpU1UiKqRP6rgei9qWnxK5eU0hVII4H+dhIX0RqV9I1TXWSeHohwkjEztmO0yz4LrJ
	nntcoJSPq4yLQrhoYQwax5HN+IWR0tktbxXrWNa8+jPRZY5MEBjD6yEUcMlEg1CIqtGek1/N6Mc4W
	STsfC0HzdKpV5tNkzfv5hbDWtXn4FkyevDW6tqtHzNgsAoeJAIl3xIrNzCbBFaiwCHJnFh1ZsGWbk
	8ZESPk4j2g+vlYqmkYhiXCPId59iy/Pntns1nhllPo2D3SyH7WZEYVk43ZaNb5cWegby+bTRBy0a9
	VyTEIbrVJ+VbZPmVz4ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwKkp-00EwiH-Pb; Wed, 01 Jun 2022 09:35:03 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwKkl-00Ewg0-6x
	for linux-phy@lists.infradead.org; Wed, 01 Jun 2022 09:35:00 +0000
Received: by mail-ed1-x52e.google.com with SMTP id fd25so1369450edb.3
        for <linux-phy@lists.infradead.org>; Wed, 01 Jun 2022 02:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=1np58l0Ga8gAPyEnQM7qbTnnn39ozk3WmSTf/pHhsMA=;
        b=FxTMvGpBCFeg1BoYbwmxDdCMOXat0Dl6sDzqkF2MpWnJq2pZtTCNhwmj6W3PeB75qP
         rcPx+5D0Z3FQ8MKmJFh/4q9tShdIZea0l5zEmH43NfBWqwvsk6nv0b014UeFfKZuOIJM
         7M6cZtmof8mF6X4ZH6LWCm95ou26ImCaBaNzOi46ZR1WrbeDHmwdISTvPIMCZ+QsDJVR
         uH4HT1Lkl+X2M7UexFy4Duv1Fo88VNVCnN9YDMcqSCBEKdUv05UNVIBxHxknJwA6DqC1
         c4qXXwjka6hHBGl8n5xtVoZrADjT5c1LU9AIHJO+9vwtz1FHXKKeq1M2uC0Ws2BGju+k
         uZTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=1np58l0Ga8gAPyEnQM7qbTnnn39ozk3WmSTf/pHhsMA=;
        b=BEmbW821TbcvvOFJHYK3TaINtjvrhLieGKTL0E9I8N9pb3fx8aaaOOxnJJoCobNAtl
         mp3WvszNsFKO2IwGgOWmsB/LL5QZhgMCIJlglsCksjBaf7A1tOxI1sV5++44s/90x4Qg
         j7EMur0QDUXKDsb2F826zVb9Di5tHo+hIcZcDYv1nV78YEWxYpYWAvLkV1nxulkRGDnr
         +dcIIvFSrhxDAg53kflFN/TkoEf1Qa3dBEbrKYMvNZNeRc1CiihLcw2QRZqdA3xZC4C2
         TkFxFEivIxeZsU5Bb4FzVzL28CGznDzV6NErmfHSB/x9AFto12HioCWZs5FRbkpd0E1i
         5o6w==
X-Gm-Message-State: AOAM532QL0OgVb2Hotq7EkNhsxyELWz0157hDZJBzrOUm+msgW5n5ilq
	ENpFqqStktXXoWYP5aHs4fbfKg==
X-Google-Smtp-Source: ABdhPJxEdF+CfXbx7tU2wd905loniQlDvsO66TbxWB3RqmGrBCz/WUwZDXZTrxvdJ4CljmwLTrODcA==
X-Received: by 2002:a05:6402:1941:b0:413:2555:53e3 with SMTP id f1-20020a056402194100b00413255553e3mr69664287edz.164.1654076097997;
        Wed, 01 Jun 2022 02:34:57 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id s9-20020a056402164900b0042ddfbea36asm709513edx.62.2022.06.01.02.34.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 02:34:57 -0700 (PDT)
Message-ID: <eab5fecb-8e75-06d5-d598-ff0221406252@linaro.org>
Date: Wed, 1 Jun 2022 11:34:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 01/17] dt-bindings: i2c: i2c-mt65xx: add binding for
 MT8365 SoC
Content-Language: en-US
To: Fabien Parent <fparent@baylibre.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, qii.wang@mediatek.com,
 matthias.bgg@gmail.com, jic23@kernel.org, chaotian.jing@mediatek.com,
 ulf.hansson@linaro.org, srinivas.kandagatla@linaro.org,
 chunfeng.yun@mediatek.com, broonie@kernel.org, wim@linux-watchdog.org,
 linux@roeck-us.net
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-iio@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-serial@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-watchdog@vger.kernel.org, Rob Herring <robh@kernel.org>
References: <20220531135026.238475-1-fparent@baylibre.com>
 <20220531135026.238475-2-fparent@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531135026.238475-2-fparent@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_023459_312301_9CC9D6DB 
X-CRM114-Status: GOOD (  12.92  )
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

On 31/05/2022 15:50, Fabien Parent wrote:
> Add binding documentation for the MT8365 I2C controllers.
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> Acked-by: Rob Herring <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-mt65xx.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-mt65xx.yaml b/Documentation/devicetree/bindings/i2c/i2c-mt65xx.yaml
> index 16a1a3118204..a6fe0d8b0cbe 100644
> --- a/Documentation/devicetree/bindings/i2c/i2c-mt65xx.yaml
> +++ b/Documentation/devicetree/bindings/i2c/i2c-mt65xx.yaml
> @@ -43,6 +43,10 @@ properties:
>            - enum:
>                - mediatek,mt8195-i2c
>            - const: mediatek,mt8192-i2c
> +      - items:
> +          - enum:
> +              - mediatek,mt8365-i2c
> +          - const: mediatek,mt8168-i2c

Order entries by last item, so this goes before mt8192

>  
>    reg:
>      items:


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

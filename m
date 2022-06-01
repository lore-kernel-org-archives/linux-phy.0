Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8939AC433FE
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jun 2022 09:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XkR+4M7QtB63NoItkjnrvo2nCiv2kPZzkOhSdQMEzVU=; b=cKp5MrbZobeQNC
	cIXaZlkHmmOulOd47IsRLXtNuUIL/OJPfjE4VovuN0TxVhejNkk4HhM9VoiyMAdXXA6ypZyiWNEuB
	XWCUaaI3uTOZbip2Zmym8kP70T/blmz1T95ctwe7rsdgDgUWNMVgfxWPVB++Defa1SOOjng8coP4K
	HfZ15BuPwng4BI3RsA+8gZoGvGch5UtqJrhOThhZ2rh4wnACZXq/0Q6kTbyarIHforGC9tqwwJI0B
	bRlLgCkMp7IQ+3su9meetJI1cvy/+flak2zgpzpWhtWmhFlOlvRBnUQ+Tyk/8/ECfa+tlSukyj2er
	5/Zfi7Ir+IOgzMOsKiaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwKmh-00ExX2-Sb; Wed, 01 Jun 2022 09:36:59 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwKmL-00ExKN-56
	for linux-phy@lists.infradead.org; Wed, 01 Jun 2022 09:36:38 +0000
Received: by mail-ej1-x62b.google.com with SMTP id gi33so2553334ejc.3
        for <linux-phy@lists.infradead.org>; Wed, 01 Jun 2022 02:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=SXy2jxkQQlSv6Zx0OkI1k2j7NF0aEo6KqD+T9sPY7WM=;
        b=OdjBPtg23WUxhKUm9hU2NUXHqwMlxMRYyzulQr63FTEhuJ5jj1zz5lOlc37ZWJDHx1
         yBhSh0WzM7/4DEHCvoa6AK6vkRMAI1J0tLHVOSHX/9b1IGLPHsOtweDVsk/MZajf+cXT
         8Et9FDg8ZIst859pqWHpcvZmU9M3p5yefD+06N0IwXhF9bXrgnSdfuFiyHhHPzdrsz8/
         Meq3v3nRKuI+9gdizaNXVVyWj5YJorA5MYEZQNkWpT10S6gKi7Dy4KckdtGAIdDn+Ix6
         iJA5aaf1/tkVvNhO5A06NtSALO1K/Qgd9Anjuo4M2n15L5wGPW2I1dqtQglKf4EcZ5fR
         X0mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=SXy2jxkQQlSv6Zx0OkI1k2j7NF0aEo6KqD+T9sPY7WM=;
        b=2J6nrAiOIu/bEB2qNKp6zwnJhrRyJH75FWkIBQksn0t2M3k968+8+mYpuQZMvo3EPC
         R+rtNT2bXB8+srEywj2/acGnLpDXaM0+ZPxFrzoHDj8EDfkHn28WPbMruWh/qShMRQZO
         5wmT4GP7cigXCtqGFzx1dmH6ZpgiM5NxhHa3sjRdNwjeR98xstwKc8n40eMuoRUAe6Wf
         slNC/InT5wmRjAcRFElRGbkHxC3ZJYlsTEqWg1CDneOqZwkfPBsdiOHBmTiEelA7HSwQ
         KE5MhZMDqQ496IG2XxuNZJppGxVbCm0DgvaKAQmygE40jAO7CJMIwV4htV2nh7j71AYO
         ewIQ==
X-Gm-Message-State: AOAM53125ODsTEqKVrkPyyH2mMpsX5urQ8LNKUXoo3q2bQMypFXzdv10
	EkRXoLMt7GBv20qSHY0e0xT3Vw==
X-Google-Smtp-Source: ABdhPJwjWC7FIS5LNCO1EphF1UnMztgGaShcktFcPPwtjGiwFhZCxmDcyHE8hBBzwAedsIdemtVCQw==
X-Received: by 2002:a17:907:8688:b0:707:926e:ea44 with SMTP id qa8-20020a170907868800b00707926eea44mr1377732ejc.547.1654076193885;
        Wed, 01 Jun 2022 02:36:33 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id w12-20020a1709064a0c00b007066283fdfesm474720eju.111.2022.06.01.02.36.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 02:36:33 -0700 (PDT)
Message-ID: <8f695677-a45c-7117-6659-c2778cbc221a@linaro.org>
Date: Wed, 1 Jun 2022 11:36:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 04/17] dt-bindings: arm: mediatek: Add binding for
 mt8365-evk board
Content-Language: en-US
To: Fabien Parent <fparent@baylibre.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, qii.wang@mediatek.com,
 matthias.bgg@gmail.com, jic23@kernel.org, chaotian.jing@mediatek.com,
 ulf.hansson@linaro.org, srinivas.kandagatla@linaro.org,
 chunfeng.yun@mediatek.com, broonie@kernel.org, wim@linux-watchdog.org,
 linux@roeck-us.net, Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-iio@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-serial@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-watchdog@vger.kernel.org
References: <20220531135026.238475-1-fparent@baylibre.com>
 <20220531135026.238475-5-fparent@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531135026.238475-5-fparent@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_023637_246160_9C3D083D 
X-CRM114-Status: GOOD (  14.45  )
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
> Add binding documentation for the MT8365-EVK board. The MT8365 EVK board
> has the following IOs:
> * DPI <-> HDMI bridge and HDMI connector.
> * 2 audio jack
> * 1 USB Type-A Host port
> * 2 UART to USB port
> * 1 battery connector
> * 1 eMMC
> * 1 SD card
> * 2 camera connectors
> * 1 M.2 slot for connectivity
> * 1 DSI connector + touchscreen connector
> * RPI compatible header
> * 1 Ethernet port
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> ---
>  Documentation/devicetree/bindings/arm/mediatek.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
> index 4a2bd9759c47..a4b1288fa837 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek.yaml
> +++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
> @@ -216,6 +216,10 @@ properties:
>            - enum:
>                - mediatek,mt8516-pumpkin
>            - const: mediatek,mt8516

Blank line here

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

> +      - items:
> +          - enum:
> +              - mediatek,mt8365-evk
> +          - const: mediatek,mt8365
>  
>  additionalProperties: true
>  


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

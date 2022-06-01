Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A8ACC433F5
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jun 2022 10:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5uoqkqWdSV9aPnUFjpiMN53kZO9xOBjsNctK5Di+N9Y=; b=JfmaNOyz/tckMT
	x2g/zFkKUWK271w/er4ySmWHik1HQgqs69jet4CNcZ05l1N4aOV7q0GpzD5DKMyP3w7YovnByXzOC
	d1Tg1bzGXrz6hu6RmEthLi7P5v71m/RT6S24AzNwRYaPoy8UoLQKGykO7miNltuAwz7tTX8vM2HnX
	PC1BlGLuzyVaIzg11Yq7GH67GQykzxZiJtztr2jweeNPqaVWmtrj+onBiUxLN4PIIz21D3zSuk+95
	BKTTCQT8SJRaC0eDj5DV1bSLhsLTaYbr6mlDDt0c/5LxgObrCn1wN1A0BumxTi7rmX+YPHK5tN+Kp
	xniLWU73odr6LDBkhYPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwLSV-00FFF4-UA; Wed, 01 Jun 2022 10:20:11 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwLCN-00F7h6-LX
	for linux-phy@lists.infradead.org; Wed, 01 Jun 2022 10:03:33 +0000
Received: by mail-ej1-x630.google.com with SMTP id q21so2703009ejm.1
        for <linux-phy@lists.infradead.org>; Wed, 01 Jun 2022 03:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=92onIsfnQU4QWfZIhdpAqRgE4HYf0xEpGZfJ1tdg0UY=;
        b=gHr7AuP5mdT/9AXsHRh38QGrskKD2LKcexs69b9Rdu7QOjJax5QX/GZeEMJJ3NwmMP
         kH1pp5EgK+KcgNv0eHLHkFcn1jT5YEJ2eAJSS0ldtTgos9WxRqAPkFecGVlCi002jWJ8
         cOGjgKKWpJzcVCRADRLhpuG+7rOrocG1+NfhV9BdB0dEugHub+fWC6fnm+briys+8Vjd
         siI+ZXvklNVBzj/4deHJNWLlJieWpxia1x5YTeXRD/Pq8e9TljHLrz6rEHpc26dEPTUv
         eSFtMGIg7W5Qex7E9dLRKNwqv4ngl+/gQZ3tYfu0Qcjv6lumesRbznxeGpy/FuRDyAV2
         ANqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=92onIsfnQU4QWfZIhdpAqRgE4HYf0xEpGZfJ1tdg0UY=;
        b=enpgJL/3bEbpSOeaPYJsX8at8c4+Fd94+KqGpkc4FHjK0gqHtRp856rEMk9dUpGFtD
         nUsRTBcHStFmsg/mDt10hNnCzNQUrZJSO/pgdpTWJQf2swBD83lP9NYqwL6YAJGREAuv
         M99DbwYUGFHXm/UkHcDJEK3/ic0+8prFY6kKV+AHZ1E7MzBz8JPgvryItrLIrS7R15W4
         a+e7wfiteRNN+4hQ8tpJuzt3eiOE+gg9TEAN7lkv3nGUeM7XtqRV2qCb7OWvPtj6Wir7
         DSP5tpY+gNKVUxS6D1hBXriqYxVUm1XL9HtzQ5uYOjomBIKPNI0JjM5JiHLoOEB/bCHT
         v3+Q==
X-Gm-Message-State: AOAM532ipeahwOZbYubUYb5jC/YdIi/gsZsCxNqJJbRNZSwB5vfywdcW
	1Ll1AN72Qd1bhj0HTb2w7DEccg==
X-Google-Smtp-Source: ABdhPJwsJCUv/SqbvzjiYBS6yN4lVmi+3xJ5LLsHbHg+hdAs1UqqGr3udpbhfrS2ZnyB0x3mxgD/gw==
X-Received: by 2002:a17:907:3c81:b0:6e6:cf3e:6e14 with SMTP id gl1-20020a1709073c8100b006e6cf3e6e14mr57688342ejc.181.1654077808486;
        Wed, 01 Jun 2022 03:03:28 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id w7-20020a056402070700b0042aa153e73esm719655edx.12.2022.06.01.03.03.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 03:03:27 -0700 (PDT)
Message-ID: <54f64086-5ff0-1295-af5a-4989ceff128e@linaro.org>
Date: Wed, 1 Jun 2022 12:03:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 08/17] dt-bindings: watchdog: mtk-wdt: Add MT8365 SoC
 bindings
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
 linux-watchdog@vger.kernel.org
References: <20220531135026.238475-1-fparent@baylibre.com>
 <20220531135026.238475-9-fparent@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531135026.238475-9-fparent@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_030331_722994_B18D1005 
X-CRM114-Status: GOOD (  13.99  )
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
> Add binding documentation for the MT8365 SoC.
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> ---
>  Documentation/devicetree/bindings/watchdog/mtk-wdt.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
> index a97418c74f6b..0e63c4ba3785 100644
> --- a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
> +++ b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
> @@ -19,6 +19,7 @@ Required properties:
>  	"mediatek,mt8516-wdt", "mediatek,mt6589-wdt": for MT8516
>  	"mediatek,mt8192-wdt": for MT8192
>  	"mediatek,mt8195-wdt", "mediatek,mt6589-wdt": for MT8195
> +	"mediatek,mt8365-wdt", "mediatek,mt6589-wdt": for MT8365

Just for curiosity - how does this (and previous binding patches) depend
on your big list:
"This series has dependencies on the following series:"
?

>  
>  - reg : Specifies base physical address and size of the registers.
>  


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

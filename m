Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F187C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 18 Nov 2022 14:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M84+mx7VMH6KBisuzKLnui8nVmFvDppcRDAoQkWIkrE=; b=ClPquSgrmro8mf
	BSFaIdBaXNIr6UjrK7Q91vFDelwm2807AXj0EY2dq3BFAX3OInc7ejhXZ8JRQZdNuq4ObLtptvC0X
	JM+uY7eQ4s2gKinpUVzEyXWvlfVD9v0ZYVk2iaYBwF+PIXd5olB6hU4qW+oNauj88T84oji88OJYn
	lj7XaBJ+hWUj27VT1jWEdHsfxb6yBl7Pf88o8oxG0PjU//IZ/gxafl0u176DQ7SmhwTlIBZDFGiSs
	wiif4Q1epFpNLLuU7rVbv5pMpUd71ZaoOeCEDRMqiLiIV3zmdYvywTQmPBCJ4rcAijRtaPeh5B8JQ
	7WdritIjACaEkuqiO2eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow2fc-004bvB-Cn; Fri, 18 Nov 2022 14:48:44 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow2fF-004bdj-8h
	for linux-phy@lists.infradead.org; Fri, 18 Nov 2022 14:48:23 +0000
Received: by mail-lj1-x234.google.com with SMTP id u11so7038199ljk.6
        for <linux-phy@lists.infradead.org>; Fri, 18 Nov 2022 06:48:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JzDAVj14Kg7cyIXYwLhr95fRyEdtiFybQ+a9MmGfD7k=;
        b=P4iKBxDecGp7qNoMMYwLnoMJ7yQ2X4wm+chKoQAVcYgIbVgW/4Ic8Xtb7DnzlMuYXa
         a+KagPKM9e/V54JuDN4+ZpL+QSS0cClqMG3jaI8OG6ey10xV8p5VOGhv4B335yHdxxZ6
         udWuBi6XP4QdHTPL0/u9jWPb4AmhpkScZ6bVOxyFMBMkN5Up2LKYq3H5zmJuIcdkX0Fx
         8fRUzWUlUGxjaJQgcLB1Zf1N9rH+cvB0CSSHsOL6EuqAPju3FneXzOwnJAxFBrQpQVyr
         +UCtax2+FAg215FZ7h57gHkOjOg6N1bkk3yl6x31o6eYoiHPgEiKNXvzlBRf3tcxr8+J
         ZKMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JzDAVj14Kg7cyIXYwLhr95fRyEdtiFybQ+a9MmGfD7k=;
        b=Tcuil5ircf1ScmxG/+Ska08MOWISduOQEKVkIUNiwGxaHdZAdHyll0yEkbRpXdpfEu
         VuoNPwa1Uve1KjLi5WNaK3cAPJxOPH1ygktyPozLLk1hZY+mjYxWMge/jb0/b/5yOPTH
         boHwJodBwF0P6q358paxv2hnn0PexAKrrSKHLyZCUsZnBHn0XSRT5qQY5jYfUAE7K2gb
         2/9abmrIj0fv3Va66tfvcuaFC/kG59UwrmntNkkS5eeOE+9Xrlggq7/l2dLbpAMDYRVU
         YwBDJtzR5LC0U+dCN1LaTww26GUrJGTlNp4ZsWzibx/QR7emHXcS7kwgU0vDrkcbLcDn
         Ff0g==
X-Gm-Message-State: ANoB5pngb3wq3mERt2aUZx2eicoX3ErIF17rAdIB0J3vsRT/i4zOSxrS
	P8gMkveRqrdBWrVExCAWDikC6Q==
X-Google-Smtp-Source: AA0mqf5cBtRAtVWCHt/JKQ9brxqzzQxd4TedCgkS2P/jQOnKdMCSZLGEZqSJlBl/s61brK5m99FHbQ==
X-Received: by 2002:a2e:a274:0:b0:278:eef5:8d07 with SMTP id k20-20020a2ea274000000b00278eef58d07mr2463980ljm.61.1668782898632;
        Fri, 18 Nov 2022 06:48:18 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id be40-20020a056512252800b00497a61453a9sm683196lfb.243.2022.11.18.06.48.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Nov 2022 06:48:18 -0800 (PST)
Message-ID: <40a4d3fd-bde8-c8ce-a93e-e0f8b633f10b@linaro.org>
Date: Fri, 18 Nov 2022 15:48:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 02/12] dt-bindings: nvmem: convert amlogic-efuse.txt to
 dt-schema
Content-Language: en-US
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Jakub Kicinski <kuba@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Alessandro Zummo <a.zummo@towertech.it>, Eric Dumazet <edumazet@google.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Kevin Hilman <khilman@baylibre.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Heiner Kallweit
 <hkallweit1@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Jerome Brunet <jbrunet@baylibre.com>, Paolo Abeni <pabeni@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Cc: linux-media@vger.kernel.org, netdev@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-mmc@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20221117-b4-amlogic-bindings-convert-v1-0-3f025599b968@linaro.org>
 <20221117-b4-amlogic-bindings-convert-v1-2-3f025599b968@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221117-b4-amlogic-bindings-convert-v1-2-3f025599b968@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_064821_487262_FEE2A17D 
X-CRM114-Status: GOOD (  14.95  )
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

On 18/11/2022 15:33, Neil Armstrong wrote:
> Convert the  Amlogic Meson GX eFuse bindings to dt-schema.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../bindings/nvmem/amlogic,meson-gxbb-efuse.yaml   | 52 ++++++++++++++++++++++
>  .../devicetree/bindings/nvmem/amlogic-efuse.txt    | 48 --------------------
>  2 files changed, 52 insertions(+), 48 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/amlogic,meson-gxbb-efuse.yaml b/Documentation/devicetree/bindings/nvmem/amlogic,meson-gxbb-efuse.yaml
> new file mode 100644
> index 000000000000..1d88f7eee840
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/nvmem/amlogic,meson-gxbb-efuse.yaml
> @@ -0,0 +1,52 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/nvmem/amlogic,meson-gxbb-efuse.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Amlogic Meson GX eFuse
> +
> +maintainers:
> +  - Neil Armstrong <neil.armstrong@linaro.org>
> +
> +allOf:
> +  - $ref: nvmem.yaml#
> +
> +properties:
> +  compatible:
> +    const: amlogic,meson-gxbb-efuse
> +
> +  clocks:
> +    maxItems: 1
> +
> +  secure-monitor:
> +    description: phandle to the secure-monitor node

This does not look like standard property, so you need the type ($ref).

> +
> +required:
> +  - compatible
> +  - clocks
> +  - secure-monitor
> +


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81B5EC46467
	for <linux-phy@archiver.kernel.org>; Tue, 10 Jan 2023 10:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s87jT3Xdfz+foxB1cYo7jKtpAiRWmx3N62BNoHcMH/0=; b=ypx8ToMLqVo5as
	cF4zqWq1e2lcmDu4KDSrBG5pirFRxTMNIWMERIEfJ4rV/i4Amnrf0kwGFVONVrml9MmDtjLcNQMJg
	Zr8dRsWAbpUeHovH13S6v44bB+uxoSusmup0K8DiIkix5oR2e1n4zzuiWrKWg8ChhXwUaPUXpuDIW
	Hwl/SZTGLCOyo2aK0z0LajMgg2Em6/CxrCjt6HyHzOvmDO/mU0qs3S+os+xknukfExMCRCe8vAbyJ
	QWIA6WLKsQ4wcHhwxj7yDF0KU1IoAxxm/S9oPd8kAJ08uwKRLO/txyuxfZa+RTN2EHtRafuhl2pO8
	WLvUUzWYr+sAJdw+khGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFBhm-006Jrt-VX; Tue, 10 Jan 2023 10:18:06 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFBhk-006Jq8-Kn
	for linux-phy@lists.infradead.org; Tue, 10 Jan 2023 10:18:06 +0000
Received: by mail-wm1-x32b.google.com with SMTP id g10so8406434wmo.1
        for <linux-phy@lists.infradead.org>; Tue, 10 Jan 2023 02:18:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PM3i+83BPLCvCkjcHeSsVRsAE5H2Nw7gtRNrJCRY2Ks=;
        b=dCctDUIS0wC58/aHLK5o+YpcliPRN6sleu5Xkbclt/zqSjkzezo8juF4OGzlLsvyGf
         tUK3Rkiu727qQvxILep6HVoaAKnbkXRJxXvgarWY5BU8gAhVnxynCpG6cAqFAtwFfQan
         3pwJ3RN0AT5mFJYR+byVFD9HC1x7kN8/SimGHmYJMdTQmmPWlFJml+nBX3qwrwOyQ0L2
         UvUktrvtRBUHh2RAj9it+AGiFB2eOiNTbZqual4iMCHAWr+CVeoF7M3ea+Zyeosp0P2O
         Fta/A301YwGUtq0CiX/gKZAwpIxyloMcGasDLKovqyrb3C28XcQSXdlOKbYVcLBa90Gh
         bQdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PM3i+83BPLCvCkjcHeSsVRsAE5H2Nw7gtRNrJCRY2Ks=;
        b=sK7MJLOKYSvDTyuq8lmRQQQRVESJee61w7wH3Z0jMNiKQ2Cafh3AFWTPLUaxB0U7iq
         ORCzYr9hBMXtvx8IivWFk+mWUJu1hzX086+eTq7kdGzyX7SSXy6ZBTtc7k0PaTazfTUl
         UBSl9a1vHYNU2sYJTZ1iMAWoV3S04LOqEzd4NqZ86O4wCJDvkfZkJyEauewkR8lVZ6tg
         TsZ2xmW5X44qZShDeqJnRnBWoLrJhtKztaOas6T71Su+FoXWFPlMoBFJan1YnAIly5/U
         Tp2+0W7jjpnwJYsn9tBjL3CJluvhLXu8ZPFXu1q2UYLGAnKN/GYFdNYpQeR5SncZeZPp
         aPxg==
X-Gm-Message-State: AFqh2krf3/KgkUZdVbIqYSRcfJHMydOG1c9vMlVQpi1kyNY/+ppbefwP
	+EaA5OvWAVcly7uHzdaW4+fwrg==
X-Google-Smtp-Source: AMrXdXvxClrR4BtCis3ALpFrfvnnBH5INQXfgVxgssgGc8gS8VU+28Qjf2O0/5xOZ+1CSwryJpUEpQ==
X-Received: by 2002:a05:600c:48a1:b0:3d1:f270:a81e with SMTP id j33-20020a05600c48a100b003d1f270a81emr48836013wmp.17.1673345883348;
        Tue, 10 Jan 2023 02:18:03 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id z9-20020a7bc7c9000000b003d9ef37ec1bsm8484251wmk.5.2023.01.10.02.17.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 02:18:02 -0800 (PST)
Message-ID: <e3d32fe1-9f2b-09fb-d7e0-2c8f42e5365c@linaro.org>
Date: Tue, 10 Jan 2023 11:17:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 09/11] dt-bindings: mmc: convert amlogic,meson-gx.txt
 to dt-schema
Content-Language: en-US
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck
 <linux@roeck-us.net>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-mmc@vger.kernel.org, linux-pci@vger.kernel.org, netdev@vger.kernel.org
References: <20221117-b4-amlogic-bindings-convert-v2-0-36ad050bb625@linaro.org>
 <20221117-b4-amlogic-bindings-convert-v2-9-36ad050bb625@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221117-b4-amlogic-bindings-convert-v2-9-36ad050bb625@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_021804_713782_75D479C6 
X-CRM114-Status: GOOD (  18.62  )
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

On 09/01/2023 13:53, Neil Armstrong wrote:
> Convert the Amlogic SD / eMMC controller for S905/GXBB family SoCs
> to dt-schema.
> 
> Take in account the used variant with amlogic,meson-gx-mmc.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../bindings/mmc/amlogic,meson-gx-mmc.yaml         | 75 ++++++++++++++++++++++
>  .../devicetree/bindings/mmc/amlogic,meson-gx.txt   | 39 -----------
>  2 files changed, 75 insertions(+), 39 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/amlogic,meson-gx-mmc.yaml b/Documentation/devicetree/bindings/mmc/amlogic,meson-gx-mmc.yaml
> new file mode 100644
> index 000000000000..30228964fd9c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mmc/amlogic,meson-gx-mmc.yaml
> @@ -0,0 +1,75 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mmc/amlogic,meson-gx-mmc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Amlogic SD / eMMC controller for S905/GXBB family SoCs
> +
> +description:
> +  The MMC 5.1 compliant host controller on Amlogic provides the
> +  interface for SD, eMMC and SDIO devices
> +
> +maintainers:
> +  - Neil Armstrong <neil.armstrong@linaro.org>
> +
> +allOf:
> +  - $ref: mmc-controller.yaml#
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - enum:
> +          - amlogic,meson-gx-mmc
> +          - amlogic,meson-axg-mmc
> +      - items:
> +          - const: amlogic,meson-gx-mmc

This does not look correct. Either gx is alone (not compatible with
gxbb) or it is compatible with gxbb. Cannot be both.



Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

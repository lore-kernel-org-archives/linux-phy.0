Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BD71C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 18 Nov 2022 14:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jLkbnlACW/myKB0fFYrctkQS9TpfDwC7f0hMLhD6VOM=; b=xAOFSnEsglV5NU
	mFPJT0uTUo6yeDgTvbk7UDOM1FhZxjbR62tXJl+gkgtyKyd0Qyt1295r6xElurTHX/4K9md7lLura
	Cvw3rjxyJKvPXsHE3hUr26uudpmpDBbqjY4vTx5+E3ybzilZfDx4syzCNxC6qelacLQs4j0ScufDd
	9FCHbBVBe/JQWOrg3j4xLptvKwQCHYBcQo03a2UnAWN3m76id3XAHpdgajokAPzqdFGMT0cMu+wpV
	1gxEFdCUYfhM6qzx40H7VHkxmeI8ollZ4UclGwcw1CKiWGQ1T4jIb5DOWYOQeGlqz8dpIkhxKANQr
	BCOVqdczeRe49rfrr4oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow2dZ-004apB-1c; Fri, 18 Nov 2022 14:46:37 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow2dS-004ak1-AX
	for linux-phy@lists.infradead.org; Fri, 18 Nov 2022 14:46:32 +0000
Received: by mail-lf1-x133.google.com with SMTP id bp15so8504997lfb.13
        for <linux-phy@lists.infradead.org>; Fri, 18 Nov 2022 06:46:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hahClhRd3DWgz5IfF3Hi2OhGzrj/JdBwzY9rjBeju8s=;
        b=JZmmE5Z+1MzabRyRffMS4z0aGT9BgDXgC9DY0MCMYG1Od3pGNI30/93iq6QOZW6IdU
         fzRFWbJEIsHpicLM2uM84cqyzD3qkQI9fT5ohEFetg4fYo8GpGdRtchVdyxXexmPlddC
         eGYx58fwwwBR/DsKEi58q/WGkaBmfRML0mdohoszmg6ZPltefO3A2rcCnwjg9H2e4uHz
         Ht2YGQKv1bXzlOexPAnjWHR0AMT7xMNE/h4sT/R2kdz2G7JqebBANYjHtmXhnqbDNEln
         rVq3At5moD/Yhfg5Ccq+IamuGznKvyJiQMbNIvLxeCTTkEAeoLQaX+gl3f5Kw0H/Tmzx
         zd0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hahClhRd3DWgz5IfF3Hi2OhGzrj/JdBwzY9rjBeju8s=;
        b=GV77/V6TTAKtbqF2XjHsDtkPq33s/aI83xFOyx/9Aip9eK/gmWdPp3KkSvHGEZvf+z
         CUC6dkab8EooyFX13WR8n7frwSF/cPdiMZpHMLwd/qfiD1lu9z/QS3adZJhy7C8ZzVKb
         qkJjYwjnyM47n4xlNmsBKzxjMKTGFguGYZOqp56Q9I3ZX3t0mdzqFgemkLVSMkoImP+K
         9B9xj3Y3qPmjcqYKg7aTHAriKVEjugQ1t1uB9CLpK/wDoQR82gfxBu8UYFIc7uXeYOzc
         eLptfUjlKivYLDcsagESzEU7wYoX65JJePM8ynWGIAGOhCiJPijTJYM7YNP9uuXVSn3L
         GpRA==
X-Gm-Message-State: ANoB5pkGbCDKleKrUguKP0LAj+FdCjfvzsHGnqODeH53eR2mtiOR6Af/
	Q4dCaOlv55S5IOYQvjeNu9Y9mQ==
X-Google-Smtp-Source: AA0mqf4xQNEVq6KlclNCEMjl56xKu/uoZoZfSEq3TwF8gKAhDBzYdep45hA5R/OZ/mt+9IdD6Luzkg==
X-Received: by 2002:a19:4f14:0:b0:4b4:b20c:4b7 with SMTP id d20-20020a194f14000000b004b4b20c04b7mr2476398lfb.201.1668782788658;
        Fri, 18 Nov 2022 06:46:28 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id c3-20020ac25f63000000b004b177293a8dsm682197lfc.210.2022.11.18.06.46.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Nov 2022 06:46:28 -0800 (PST)
Message-ID: <57c2ca7c-05be-7fc1-69ad-e06b6e571d60@linaro.org>
Date: Fri, 18 Nov 2022 15:46:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 01/12] dt-bindings: firmware: convert meson_sm.txt to
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
 <20221117-b4-amlogic-bindings-convert-v1-1-3f025599b968@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221117-b4-amlogic-bindings-convert-v1-1-3f025599b968@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_064630_516285_FCF93539 
X-CRM114-Status: GOOD (  17.18  )
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
> Convert the Amlogic Secure Monitor bindings to dt-schema.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../bindings/firmware/amlogic,meson-gxbb-sm.yaml   | 36 ++++++++++++++++++++++
>  .../bindings/firmware/meson/meson_sm.txt           | 15 ---------
>  2 files changed, 36 insertions(+), 15 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/firmware/amlogic,meson-gxbb-sm.yaml b/Documentation/devicetree/bindings/firmware/amlogic,meson-gxbb-sm.yaml
> new file mode 100644
> index 000000000000..33d1408610cf
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/firmware/amlogic,meson-gxbb-sm.yaml
> @@ -0,0 +1,36 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/firmware/amlogic,meson-gxbb-sm.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Amlogic Secure Monitor (SM)
> +
> +description:
> +  In the Amlogic SoCs the Secure Monitor code is used to provide access to the
> +  NVMEM, enable JTAG, set USB boot, etc...
> +
> +maintainers:
> +  - Neil Armstrong <neil.armstrong@linaro.org>
> +
> +properties:
> +  compatible:
> +    const: amlogic,meson-gxbb-sm
> +
> +patternProperties:
> +  "power-controller":

This looks like a property, not a pattern.

> +    type: object
> +    $ref: /schemas/power/amlogic,meson-sec-pwrc.yaml#

Would be nice to add it here to example and drop from
amlogic,meson-sec-pwrc.yaml (unless it will be used by more schemas?).


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

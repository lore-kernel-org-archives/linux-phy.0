Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D96FC54EBC
	for <linux-phy@archiver.kernel.org>; Tue, 10 Jan 2023 10:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s2rfnXjjIO4YPHLx8TPnRgKTRrSvqpaUo5aQhLCD8i4=; b=RdUrX0txLL4YYC
	Wz2F20Oq0WrCmdotnO7EpFODU4wuLiNHlO4Nj5dZz8QIifBPPg27rSZkpGcGRpkZrh7IskM7RG+DY
	t4MSbNJkGhY8ElXBChkYXwKAP0Q3Uhnd/Tj2XhJjrTlpsRSkpsgwc8MIr+7okXg56/6i6dowGLJYV
	0YoMynL4RWnhQRL/QHEsZD3Hfq9nvOMqzTFJdM/e92T2UXMZBD64BQYq8Fx0WJQgEJhnFv2w92qEp
	jqWjBjsqbcj2gf621iIHhbTmnNBL7Z1atR3xYp1hgD7VgwmlhiiyYsvvSDBHe8eiVkJ/Ztcu3I0BR
	d5sJ5Uwv7uUoyYn7QD0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFBfm-006Isz-Rg; Tue, 10 Jan 2023 10:16:02 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFBfk-006IrG-MV
	for linux-phy@lists.infradead.org; Tue, 10 Jan 2023 10:16:02 +0000
Received: by mail-wr1-x42c.google.com with SMTP id d17so11184707wrs.2
        for <linux-phy@lists.infradead.org>; Tue, 10 Jan 2023 02:16:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G6m47pJ/58Hq8p7TJbcNCm8zVbjrhNNs4P/gWK+tMI8=;
        b=yHxzcr9U9WVUxu0CfdLJGsHZKmUX8EdHygpQCodC4TPZe7ChByni5EFoxjbKjG4CB9
         zqm1FtO4AMCKyq0Il3XcCB98mSSF+UxQzFR6zKgo61CPkTeI/xURnN2+tqVOYw7NZo54
         Vr4ovZm9fiTOSmhzRhi72hdQQD6PSFiFSwoVDDk5OGDB8l0r4f2PXxFLzF2MEcpb4eYt
         drNtDkBsghZyLBosolfbkSZr+S60rgUftMeDRiaKG6SRnrk+mZC5Xh2ID1lnQmx60heD
         bcNFTY2FGmCFiqqTxtnmQpx1XeujtQrzGmHje59EXXUQZpidvUvzlYTZpQPFaYrWdRD4
         EkXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G6m47pJ/58Hq8p7TJbcNCm8zVbjrhNNs4P/gWK+tMI8=;
        b=BF5sZ2fjF5/0SMbt2hwzROXfTaTl9EjOplRUiJWkUSPAeAUZFNyS4vh+x8A4l493iR
         MhYSoFYuMGqUCRgKGI7pwDyduCiRPKECwUdD6p8iYBASLjWUm1R2ZN5Z+65ROoZ1Lf0D
         K1pmDhLqiJe6mEgvzIAI7oFDVvmGvqHGaq+5itheSdGp5uhE0IFQf/IzioVGJSY0ttTh
         hEE/McDc3w9+r5v7qzc/po1dJ+Fn/0mxW+/sg98oeLjN8Wqlxvaeo6womXDeTugwSA/E
         7TdfYtjM55cE7KtM2B/JoC/miCaXuHhzD8hxB/1bNOI57w7E4tcKTwb6102l7MCa5ZDw
         ZUUA==
X-Gm-Message-State: AFqh2kqc+lZeWqNW38fE3hYH7h4+1dFdebqVquPeCsR8+NBN4HhxVN7E
	ZH+vHpxASqrzYITpzn/0BPZmhQ==
X-Google-Smtp-Source: AMrXdXungLocivNlI60dcFce730ob7mgkYD26Ohpn86HXP7EmMvFIO9LBoSeY/bYq+MnrHw4cCqeTQ==
X-Received: by 2002:a5d:51cc:0:b0:29d:f817:42d4 with SMTP id n12-20020a5d51cc000000b0029df81742d4mr19057934wrv.19.1673345759433;
        Tue, 10 Jan 2023 02:15:59 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id w10-20020a5d608a000000b0027cfd9463d7sm10822105wrt.110.2023.01.10.02.15.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 02:15:58 -0800 (PST)
Message-ID: <5c59d432-3785-8eaa-af77-03fee09b5fd3@linaro.org>
Date: Tue, 10 Jan 2023 11:15:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 03/11] dt-bindings: nvmem: convert
 amlogic-meson-mx-efuse.txt to dt-schema
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
 <20221117-b4-amlogic-bindings-convert-v2-3-36ad050bb625@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221117-b4-amlogic-bindings-convert-v2-3-36ad050bb625@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_021600_767728_0FD52697 
X-CRM114-Status: GOOD (  16.43  )
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
> Convert the Amlogic Meson6 eFuse bindings to dt-schema.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../bindings/nvmem/amlogic,meson6-efuse.yaml       | 60 ++++++++++++++++++++++
>  .../bindings/nvmem/amlogic-meson-mx-efuse.txt      | 22 --------
>  2 files changed, 60 insertions(+), 22 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/amlogic,meson6-efuse.yaml b/Documentation/devicetree/bindings/nvmem/amlogic,meson6-efuse.yaml
> new file mode 100644
> index 000000000000..11cace95d18c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/nvmem/amlogic,meson6-efuse.yaml
> @@ -0,0 +1,60 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/nvmem/amlogic,meson6-efuse.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Amlogic Meson6 eFuse
> +
> +maintainers:
> +  - Neil Armstrong <neil.armstrong@linaro.org>
> +  - Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> +
> +allOf:
> +  - $ref: nvmem.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - amlogic,meson6-efuse
> +      - amlogic,meson8-efuse
> +      - amlogic,meson8b-efuse
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: core
> +
> +  secure-monitor:
> +    description: phandle to the secure-monitor node

Missing $ref

> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +
Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

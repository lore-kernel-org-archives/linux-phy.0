Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AD5DC7EE43
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 08:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iR8olwTXmH+S74fWQCesP65ZPA2IKiOWHYDLh4mDMdk=; b=1ZHBm5E2XwZC1T
	/Gq6XMfN9XYS68r23++BHp1o19KjfFlbn7lcb+plldk81xP6gQaXHCHtQJZZHzfs80ajDBqxQTzyu
	y1JG9J+nKrrlpiKAILV0AtvnF0bivnd5gtKtTRvNWQAqTYTg598jrWeTnhaNuAAlT81lJ02kbNu7y
	vwtOJPDMgHbgD1Cr8n3PR9NUOFuDVUwakRxcdN/WZwEz2u5/xaH1EgUdKTRFRkm98rB1EHTBWDc28
	+9B3FB0dtqaFN+oPxX7N85MRoN0PhF5SNpXVq9ITChrI+udky9HYx9iqaAnp5ypjt1YqPmdOnLeWu
	nXPmq2gG4jEnaLBlpO8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8cqV-003602-3D;
	Mon, 12 Jun 2023 08:24:16 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8cqT-0035yh-0q
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 08:24:14 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-970028cfb6cso752203966b.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 01:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686558249; x=1689150249;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n6FRK4HFfgPWBirVfYDPjb6CoRt7wCHoD3lKJRadNg8=;
        b=BcAOefkle/LHxvI52wscsD1HqlHwY9cHn03i0Pabfkmt86hqe0+VxKBNAR76O5qI4U
         oLqb8BKDueIqWm4GSNHhEGDfoNaQbexuP1m7eBPGb8a2Uxj21DbG+GEMJ1BVRGNrnshz
         eQZYMbseNSJgiAwZtB4UBKG/1G/8A+CBIuekb3tKyIP3UfzSSE4azrwQuqMhArBrH+Tw
         2Snlj34SSBqT1VBYFj9ybvAo3gdaOviM2VsT4VqqoNaMfR1nr8P58VEisOVy9Thf79wo
         TZc2mycYXjO1khtlD2A4o+g2VT2kYFhviWnFmxhUt7L/aHKCUVjl9DZpSoXTsSMzogDO
         ri2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686558249; x=1689150249;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n6FRK4HFfgPWBirVfYDPjb6CoRt7wCHoD3lKJRadNg8=;
        b=UhAucO+8PHctSmaP7qzyu5FB2UavevlsBcAqeF42+NILWumvJy2FAkGLntBvqSM6Ur
         CNg3H3QinW3xCmvPs3oCl+4sIXeZmmOifkLUwLHsNKr/iS2xGooAEasH/nJoUdsVIPQ0
         V9C2ddUBZTZaul7NctP7FlY/Qkxt311XiFsjSK23gzxJW8eQ26m9ZOddd2Y+Bs/4AdbE
         M6N56O3KPuMk7wcuXR4h7PRtuEkRB2z3ynEP7vMsXCjOnUXmq8UdJTxhTFllAy6Lk7nZ
         1ea1U70pHMQSNT1qXii+aU8/laLmjs46QDZ0nfiifXiNUV4jekZMEHMRlOt3nPGXBbco
         rm5w==
X-Gm-Message-State: AC+VfDxn1FrNqspn7lND83SdD/5uI6IboP04ZNPeyP4hEc63y3e/KHGh
	35reeOcr+gN+ZpqM1WFU9f+TCQ==
X-Google-Smtp-Source: ACHHUZ6Pww7aFvpQWCcMrF5FzzrD5cGi0zKemQAOXPVxhZItaOEvFniBweIG13CsZzvJN+qjGnAFjA==
X-Received: by 2002:a17:907:9710:b0:96a:ff7f:692 with SMTP id jg16-20020a170907971000b0096aff7f0692mr11003551ejc.68.1686558249516;
        Mon, 12 Jun 2023 01:24:09 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id pv12-20020a170907208c00b0096b4ec45e10sm4824008ejb.139.2023.06.12.01.24.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jun 2023 01:24:08 -0700 (PDT)
Message-ID: <4c914503-c2e5-a5d8-97af-daaee0b4ec7c@linaro.org>
Date: Mon, 12 Jun 2023 10:24:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v3 2/5] dt-bindings: ata: dwc-ahci: add Rockchip RK3588
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Serge Semin <fancer.lancer@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-ide@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230608162238.50078-1-sebastian.reichel@collabora.com>
 <20230608162238.50078-3-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230608162238.50078-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_012413_301845_FB67F30B 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
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

On 08/06/2023 18:22, Sebastian Reichel wrote:
> This adds Rockchip RK3588 AHCI binding. In order to narrow down the
> allowed clocks without bloating the generic binding, the description
> of Rockchip's AHCI controllers has been moved to its own file.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---

...

> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - rockchip,rk3568-dwc-ahci
> +          - rockchip,rk3588-dwc-ahci
> +      - const: snps,dwc-ahci
> +
> +  ports-implemented:
> +    const: 1
> +
> +patternProperties:
> +  "^sata-port@[0-9a-e]$":
> +    $ref: /schemas/ata/snps,dwc-ahci-common.yaml#/$defs/dwc-ahci-port
> +
> +    unevaluatedProperties: false

You should be able to skip this patternProperties entirely, because it
comes from dwc-ahci-common -> ahci-common schema. Did you try the patch
without it?

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - ports-implemented
> +


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

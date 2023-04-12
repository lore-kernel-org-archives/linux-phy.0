Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D34DC7619A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 11:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9D7No6nGdfixE4M+jdy4cXCXT0j6mVRMDJ8JsV7Orqw=; b=eJMig4uT0IpusP
	dgnqxgG/yiWEUEhQ+1ryhfUvlon4Fa9bltAQ8WLCxqTWIX2RVbLvY165NGcxTpEwf43u8701bmjt/
	Vxek1gEbC9pkWLQc0RKcrChf24dHQonqdxrrTP7P37wH5SMYfnSb4cejknHClkxlGBQnjmDVhyZat
	2K7jpHFEHv1EpnwhYjeWFii8bmufr1Ah/szG7hEoPOfQ4rnBggpIR+ST74QsrrivO6M8ww1eSFbxS
	eOPJZzN69YUH/8YgDMCvXkseSMocSkGTrxiIHrN0GcIwgK0ZPJreudf+VudQnn/d0tCXkcz8mw13u
	Sz+FIxZMhjuUbCx9Pocw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmYk2-002ta4-0B;
	Wed, 12 Apr 2023 11:34:22 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmYjy-002tWe-2l
	for linux-phy@lists.infradead.org;
	Wed, 12 Apr 2023 11:34:20 +0000
Received: by mail-lf1-x133.google.com with SMTP id h12so9317294lfj.8
        for <linux-phy@lists.infradead.org>; Wed, 12 Apr 2023 04:34:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681299256;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LxsivSQwSNGU8AJzuwSv8w61igpz8AHkC54naIDyexI=;
        b=gwjW5QtuRbOOWCGb1dONAXAbjmFVfvKKircAtLFrbHDHFvYVlzDF5RyrRu7gHFH4uK
         vuhlstToooIlcw0h4Wpps4ko40UZH6/bHQVOQZPzBtTxpUqM+NDyY6Uf+SqKqQBVrQfG
         ogODpwGkP/40If5n9YAcLxLpUzAli65yuYcjp52Ud1a+AaHKKKN/nxp0s4AUcwHabfsc
         9AZXNJAax+ENZJD6sAQlIsu9i7Dfs8TtAbAux/+o6JFnQABKwVyv29tSey5md14NMMHj
         JlE4eaMnT9JtWqJX2tAgkvrAjKcGdEsdc9kAzkVZSGMFbyVNz6K89St/hfn0e9DxO1U+
         GcYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681299256;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LxsivSQwSNGU8AJzuwSv8w61igpz8AHkC54naIDyexI=;
        b=ubs480gHtJMPI1CxuC8jXRznOTtaEM/Q4AwFFnh/MvQMAm6kJfWdTA7fZUfOvqTsva
         7toOtNUDW965HeZhpF06KvBlp+jOXggPIgMB+Zvxx3RnOIKLD4vteL+aadryuAlb5gCZ
         1CcE6t2G5N0PzpoH1HL/EwsV8n3zGbWwelTRRUb0GxaUt0FzDXXldMgXXQGuhJRUuDnM
         i9w05eaolF9zFpXKbLWV7YrRfGOol7JoyokldtSM3FVsWn/vPD+MOb0AoUjowaLO4Dvs
         zZMlHivw0L6wSYS9JJaZLp8LSVOFA5XGpyRVC6QlHMelIwTqVk94jl0TXE5qP9gbkM73
         Lj4A==
X-Gm-Message-State: AAQBX9eQxnW9zFPpVrx3dLFM/eB42CYNWj0pPlTVh5l0/hmLybU9DFnr
	f+j3Hj28L2AdyMfvofictwhhJA==
X-Google-Smtp-Source: AKy350Y6SI3oUzoCiPhWbY7FYgE1XH0PFnLrVCnn38wtCsCdGB0IrxcVCSFEseYoJY1ywr5ToEXxSw==
X-Received: by 2002:ac2:5dc2:0:b0:4ec:a218:4f9b with SMTP id x2-20020ac25dc2000000b004eca2184f9bmr309937lfq.2.1681299255813;
        Wed, 12 Apr 2023 04:34:15 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:8fa0:9989:3f72:b14f? ([2a02:810d:15c0:828:8fa0:9989:3f72:b14f])
        by smtp.gmail.com with ESMTPSA id v5-20020ac25605000000b004b55ddeb7e3sm2964212lfd.309.2023.04.12.04.34.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 04:34:15 -0700 (PDT)
Message-ID: <8dd0dc63-e0df-8764-f756-da032d9d671c@linaro.org>
Date: Wed, 12 Apr 2023 13:34:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v4 1/3] dt-bindings: phy: Add starfive,jh7110-dphy-rx
Content-Language: en-US
To: Changhuang Liang <changhuang.liang@starfivetech.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Emil Renner Berthing <kernel@esmil.dk>, Conor Dooley <conor@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Jack Zhu <jack.zhu@starfivetech.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org
References: <20230412084540.295411-1-changhuang.liang@starfivetech.com>
 <20230412084540.295411-2-changhuang.liang@starfivetech.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230412084540.295411-2-changhuang.liang@starfivetech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_043418_897221_D33A79DB 
X-CRM114-Status: GOOD (  16.83  )
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

On 12/04/2023 10:45, Changhuang Liang wrote:
> StarFive SoCs like the jh7110 use a MIPI D-PHY RX controller based on
> a M31 IP. Add a binding for it.

So this is D-PHY? Or the other patch is D-PHY? The naming is quite
confusing and your commit msgs are not helping here.

Also the power domain phandle here adds to the confusion.


> 
> Signed-off-by: Changhuang Liang <changhuang.liang@starfivetech.com>
> ---
>  .../bindings/phy/starfive,jh7110-dphy-rx.yaml | 85 +++++++++++++++++++
>  1 file changed, 85 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml b/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml
> new file mode 100644
> index 000000000000..5fb2f14af816
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml
> @@ -0,0 +1,85 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/starfive,jh7110-dphy-rx.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: StarFive SoC MIPI D-PHY Rx Controller
> +
> +maintainers:
> +  - Jack Zhu <jack.zhu@starfivetech.com>
> +  - Changhuang Liang <changhuang.liang@starfivetech.com>
> +
> +description:
> +  The StarFive SoC uses the MIPI CSI D-PHY based on M31 IP to transfer
> +  CSI camera data.
> +
> +properties:
> +  compatible:
> +    const: starfive,jh7110-dphy-rx
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: config clock
> +      - description: reference clock
> +      - description: escape mode transmit clock
> +
> +  clock-names:
> +    items:
> +      - const: cfg
> +      - const: ref
> +      - const: tx
> +
> +  resets:
> +    items:
> +      - description: DPHY_HW reset
> +      - description: DPHY_B09_ALWAYS_ON reset
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  lane_maps:

Why did this appear? Underscores are not allowed. It looks like you
re-implement some standard property.

> +    $ref: /schemas/types.yaml#/definitions/uint8-array
> +    description:
> +      D-PHY rx controller physical lanes and logic lanes mapping table.
> +    items:
> +      - description: logic lane index point to physical lane clock lane 0
> +      - description: logic lane index point to physical lane data lane 0
> +      - description: logic lane index point to physical lane data lane 1
> +      - description: logic lane index point to physical lane data lane 2
> +      - description: logic lane index point to physical lane data lane 3
> +      - description: logic lane index point to physical lane clock lane 1
> +


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

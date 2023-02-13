Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32105C636CC
	for <linux-phy@archiver.kernel.org>; Mon, 13 Feb 2023 09:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z17j9CuTZ8HgXNqnDUkXH2J/T9foRxtbcvIA7dV1uyw=; b=mKEs7Xzh07GTlh
	/hRJZ1DeS7YeBFA1GNtj6cGrftX5yv08+gj6zPvC0y6l/13QpvV7r9GnNcp2Nj36LfErX8qME0vJ+
	fO30yB396Rw2u235vPqRjbjXkBeBQ3sFGOk7pk8FLp0J9ezP96QLF43VDWY45j/ZT2+PF1z0faVPH
	wQJK19OVGbYdY5pNiNe3xk+UoFUxCl8CwMnVBjk1IM/YlVmeYLberxFGp4tPm9McQGmKA9y5Zh4hY
	2NqCeaiBKBX5kGMNyuwgb01V3KaT6K8QXqGLwdCk7WRuCVohbYXir0pMXu0lpine+eq8/i8yt4edh
	GixTXvme1rgm9f2dTswA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRVEe-00DuJz-QB; Mon, 13 Feb 2023 09:34:56 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRVAH-00DsE8-Sa
	for linux-phy@lists.infradead.org; Mon, 13 Feb 2023 09:30:53 +0000
Received: by mail-wr1-x42a.google.com with SMTP id o15so8110544wrc.9
        for <linux-phy@lists.infradead.org>; Mon, 13 Feb 2023 01:30:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OpHa2OO6IfUJ9x7Qw45HN5IHZS4VCZar5vwweznON50=;
        b=opZ+UQ/pXegz0SLGsPVxyy2F+I7SvtBR++2Ja90BdT6e+WGwxdDqNL4tiyNBwhxNjz
         lhS/SBpAmzILo0ZEFyBbAuRrZU934ghWnoPT25PSC7L/oYtAKg3FGc87Ytl8uscL+fuj
         CO3GYv0oTl3eBBgfrX5NqQj9tNV26fOYeiw8/9hCbtpuTDbrAJOl0M5dH6dCTpuWiNP6
         fuQNX7LO1b3Vz5SJrd5Kska792fxssD4J5mYjbsZXcUqkwMeQzSd3Q49ZEhLMP6e2KH6
         yDu1DTBNzLEn9gRAAlg9UX5CZKDmh/yJV93exUlTy0Vs6UJd+fSBYzcFuTf3ikEgjDa4
         RDSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OpHa2OO6IfUJ9x7Qw45HN5IHZS4VCZar5vwweznON50=;
        b=IPZAcwC6fuQd3GQ2kF9fbOcfkWZafchTgbvC7XZhV/QT8vmdGr/sQf0iKVzUq1CLT4
         imlsImIPtIMMmkN0Jm9KuGC6BhCZwFX1JakvWUcy0+z8gFGk8ZyAhNYF2ClVSVN1oiAW
         nventmREBB4gIFu2lqw4jL/cLBDwp2YLezutLmEe0ASAVhW+k2S7QbDM5ACakA9u+8PZ
         HcAL2ESp95AJyBWQhVakMMn4ArF4miX1Bi6Qm7RpbCgKLTCTrH6aU7Pdwt8Idl9UQGSU
         dxgllqNQoi+KJK7j3ZkDuuPZBvn54oKWh9i6VfEKhN18JUgGgQyXa1TQMqC2xtcwShO1
         zq1Q==
X-Gm-Message-State: AO0yUKX5p2mlepxCAusx2wLTdc9MIiow9FFIRWJ7Ws5++sadcmGpf+3b
	ZTYzMQF+G2OCRNMSUTzpoTu2cA==
X-Google-Smtp-Source: AK7set+T1ZW6DDEn7b6T2RvBeRhzbgzRxitNFID/D8/L4CyhFCQOIccrzH+3dp9VV7nUb+Gfi/O6Nw==
X-Received: by 2002:a5d:6805:0:b0:2c5:5886:850d with SMTP id w5-20020a5d6805000000b002c55886850dmr2557588wru.5.1676280624569;
        Mon, 13 Feb 2023 01:30:24 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id c18-20020a056000105200b002c5584d0e3dsm2486583wrx.24.2023.02.13.01.30.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 01:30:24 -0800 (PST)
Message-ID: <3fc07187-f5a0-86d1-a0fd-ba18a2baf555@linaro.org>
Date: Mon, 13 Feb 2023 10:30:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v1 2/4] dt-bindings: phy: Add starfive,jh7110-dphy-rx
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
References: <20230210061713.6449-1-changhuang.liang@starfivetech.com>
 <20230210061713.6449-3-changhuang.liang@starfivetech.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230210061713.6449-3-changhuang.liang@starfivetech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230213_013026_691007_B1D0E6DA 
X-CRM114-Status: GOOD (  16.97  )
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

On 10/02/2023 07:17, Changhuang Liang wrote:
> Starfive SoC like the jh7110 use a MIPI D-PHY RX controller based on
> a M31 IP. Add a binding for it.
> 
> Signed-off-by: Changhuang Liang <changhuang.liang@starfivetech.com>
> ---
>  .../bindings/phy/starfive,jh7110-dphy-rx.yaml | 78 +++++++++++++++++++
>  1 file changed, 78 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml b/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml
> new file mode 100644
> index 000000000000..1c1e5c7cbee2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml
> @@ -0,0 +1,78 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/starfive,jh7110-dphy-rx.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Starfive SoC MIPI D-PHY Rx Controller
> +
> +maintainers:
> +  - Jack Zhu <jack.zhu@starfivetech.com>
> +  - Changhuang Liang <changhuang.liang@starfivetech.com>
> +
> +description: |
> +  The Starfive SOC has a MIPI CSI D-PHY based on M31 IP use to transfer
> +  the CSI cameras data.
> +
> +properties:
> +  compatible:
> +    items:

Drop items

> +      - const: "starfive,jh7110-dphy-rx"

Drop quotes

> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 3

Drop minItems

> +    maxItems: 3
> +
> +  clock-names:
> +    items:
> +      - const: cfg
> +      - const: ref
> +      - const: tx
> +
> +  resets:
> +    minItems: 2

Ditto

> +    maxItems: 2
> +
> +  starfive,aon-syscon:
> +    $ref: '/schemas/types.yaml#/definitions/phandle-array'

Drop quotes

> +    items:
> +      items:
> +        - description: phandle of AON SYSCON
> +        - description: register offset
> +    description: The register of dphy rx driver can be configured
> +      by AON SYSCON in this property.

Can be? So does not have to? But you made it a required property....

> +
> +  "#phy-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - resets
> +  - starfive,aon-syscon
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/starfive,jh7110-crg.h>
> +    #include <dt-bindings/reset/starfive,jh7110-crg.h>
> +
> +    dphy@19820000 {

just phy@......

> +      compatible = "starfive,jh7110-dphy-rx";
> +      reg = <0x19820000 0x10000>;
> +      clocks = <&ispcrg JH7110_ISPCLK_M31DPHY_CFGCLK_IN>,
> +               <&ispcrg JH7110_ISPCLK_M31DPHY_REFCLK_IN>,
> +               <&ispcrg JH7110_ISPCLK_M31DPHY_TXCLKESC_LAN0>;
> +      clock-names = "cfg", "ref", "tx";
> +      resets = <&ispcrg JH7110_ISPRST_M31DPHY_HW>,
> +               <&ispcrg JH7110_ISPRST_M31DPHY_B09_ALWAYS_ON>;
> +      starfive,aon-syscon = <&aon_syscon 0x00>;
> +      #phy-cells = <0>;
> +    };

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

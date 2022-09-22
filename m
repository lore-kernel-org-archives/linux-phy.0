Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF2D2C6FA82
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 07:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6j9Cd6D5yUgroMm9YYB+D1G3NQkNnumSfYZbeik9OKc=; b=cyZUfNymHShkGN
	KzA+m2+tFNoyxZ5J+IWSG9ESYKPiNiJ41LSMTh8R7acoTuGZqrwquUNqqNmvpZmvVzUBeENZKbWNN
	mIvxuDRFlMcCAYOEGNakQD4A+Bo5GedP+sDrFAaoJweIKRUq5rRh8xZJGHoZGtEEx44++1Ztmw5fI
	aTNTpXhdTVZf5FGk2TVTITYbPPDMupplmDsyb1hkcR1OSNn/5vCHwgKD4i54HImd6D7bKVy6IllzJ
	w05TDdAJ/15p745WowFeTgUJQwqalhtfwMDZ8XtbmqQZicNQV79iLhPmLwPFSOEXksigJk6zmVgkw
	Z9vJ71g70kv+V9Duk90g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obGmL-00Du36-Pu; Thu, 22 Sep 2022 07:37:49 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obGm3-00DtwE-Lq
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 07:37:33 +0000
Received: by mail-lf1-x12c.google.com with SMTP id f9so13257526lfr.3
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 00:37:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=8BVSexZBc25zbrsl/l7cQOLYh/H9gnI+qVwKufcx9yk=;
        b=ENUvG4IvlLlpDT+Ei5lYUR13g4b/zaFM2hrm26L5653C8QXm1h/Lnp/+1cFn/OLIXt
         mSeR+y9113Oe3CPYDy1xbthb4LTb+1x+xR4lUdcaYU4djTeoHsaKHuIKDG5BviN5rOsN
         hZdLCF/7jX7y1Jy06XF+/5TIhOpxhpZK/oiHT5wLO9xfvBajfzoY3fszvKCPYPUXE8Lz
         nySlvUGE/nKncPsN/+AFSgimvrpceY/pJoKwMwnJO2hjGUClDZrGstnfIW57vHHAEee1
         T/pikliVPbAE4rQkpkuS7cNxiZSh5DxqYa+PTcDUoyF2LC6Y0xnMH1elFCxfuDK8hNIC
         dM8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=8BVSexZBc25zbrsl/l7cQOLYh/H9gnI+qVwKufcx9yk=;
        b=xrQuDw6rB7iUpu4JnRnWnz7ZbymZl64Xhw0X4f1ktseCS+8guPbtd11I0DP6CxPujg
         S9h7ZxkyuXqN2Yjhbrja4KBvu3cZbqJSKOulmDvSFzldBc3qK/PhxzcoVFiytthAtmjJ
         OAwDF0mWI477LujPINrrMAY/DKAdTthxouegVdHnPwxV9t4OOLlO9YP0KCzEee0ovE/x
         4HiKP9TVvrm3QeNw4Dv0FNw4oAZrdPSFAGwRLNv9MBP3BpGQBbtdwJqth/xczBdsHMMo
         s725PGI+iz7duVs0tmTMwGKunHQemkFgYuosrds8QbC3gEct5JSVHtLOf8JVEufM6TGV
         S6xg==
X-Gm-Message-State: ACrzQf0yydpOkm4LTnqLnO7h0MB63McU+R2YeNrICYKTZ6mwAUDkosn1
	7kLtTTSOvUnvOlNHxIDBAhdscg==
X-Google-Smtp-Source: AMsMyM4icsDLCQT6inm4QJfBmT99ZewPmbUn4YwLRftC6bjuLujDwNjk9aBvXqhfrUTBAPi115qcXw==
X-Received: by 2002:a05:6512:3047:b0:497:ab72:97f1 with SMTP id b7-20020a056512304700b00497ab7297f1mr672265lfb.624.1663832249776;
        Thu, 22 Sep 2022 00:37:29 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id f18-20020ac24992000000b0048b003c4bf7sm800651lfl.169.2022.09.22.00.37.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 00:37:29 -0700 (PDT)
Message-ID: <1aebd827-3ff4-8d13-ca85-acf4d3a82592@linaro.org>
Date: Thu, 22 Sep 2022 09:37:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v2 4/8] dt-bindings: net: renesas: Document Renesas
 Ethernet Switch
Content-Language: en-US
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, kishon@ti.com,
 vkoul@kernel.org, davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, richardcochran@gmail.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, geert+renesas@glider.be
Cc: andrew@lunn.ch, linux-phy@lists.infradead.org, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
References: <20220921084745.3355107-1-yoshihiro.shimoda.uh@renesas.com>
 <20220921084745.3355107-5-yoshihiro.shimoda.uh@renesas.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220921084745.3355107-5-yoshihiro.shimoda.uh@renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_003731_782568_C7E24D2D 
X-CRM114-Status: GOOD (  18.46  )
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

On 21/09/2022 10:47, Yoshihiro Shimoda wrote:
> Document Renesas Etherent Switch for R-Car S4-8 (r8a779f0).
> 
> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---
>  .../bindings/net/renesas,etherswitch.yaml     | 286 ++++++++++++++++++
>  1 file changed, 286 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/renesas,etherswitch.yaml
> 
> diff --git a/Documentation/devicetree/bindings/net/renesas,etherswitch.yaml b/Documentation/devicetree/bindings/net/renesas,etherswitch.yaml
> new file mode 100644
> index 000000000000..988d14f5c54e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/renesas,etherswitch.yaml

Isn't dsa directory for this?

> @@ -0,0 +1,286 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/renesas,etherswitch.yaml#

Filename: renesas,r8a779f0-ether-switch.yaml

> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Renesas Ethernet Switch
> +
> +maintainers:
> +  - Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> +
> +properties:
> +  compatible:
> +    const: renesas,r8a779f0-ether-switch
> +
> +  reg:
> +    maxItems: 2
> +
> +  reg-names:
> +    items:
> +      - const: base
> +      - const: secure_base
> +
> +  interrupts:
> +    maxItems: 47
> +
> +  interrupt-names:
> +    items:
> +      - const: mfwd_error
> +      - const: race_error
> +      - const: coma_error
> +      - const: gwca0_error
> +      - const: gwca1_error
> +      - const: etha0_error
> +      - const: etha1_error
> +      - const: etha2_error
> +      - const: gptp0_status
> +      - const: gptp1_status
> +      - const: mfwd_status
> +      - const: race_status
> +      - const: coma_status
> +      - const: gwca0_status
> +      - const: gwca1_status
> +      - const: etha0_status
> +      - const: etha1_status
> +      - const: etha2_status
> +      - const: rmac0_status
> +      - const: rmac1_status
> +      - const: rmac2_status
> +      - const: gwca0_rxtx0
> +      - const: gwca0_rxtx1
> +      - const: gwca0_rxtx2
> +      - const: gwca0_rxtx3
> +      - const: gwca0_rxtx4
> +      - const: gwca0_rxtx5
> +      - const: gwca0_rxtx6
> +      - const: gwca0_rxtx7
> +      - const: gwca1_rxtx0
> +      - const: gwca1_rxtx1
> +      - const: gwca1_rxtx2
> +      - const: gwca1_rxtx3
> +      - const: gwca1_rxtx4
> +      - const: gwca1_rxtx5
> +      - const: gwca1_rxtx6
> +      - const: gwca1_rxtx7
> +      - const: gwca0_rxts0
> +      - const: gwca0_rxts1
> +      - const: gwca1_rxts0
> +      - const: gwca1_rxts1
> +      - const: rmac0_mdio
> +      - const: rmac1_mdio
> +      - const: rmac2_mdio
> +      - const: rmac0_phy
> +      - const: rmac1_phy
> +      - const: rmac2_phy
> +
> +  clocks:
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: fck
> +      - const: tsn
> +
> +  resets:
> +    maxItems: 2
> +
> +  reset-names:
> +    items:
> +      - const: rswitch2
> +      - const: tsn
> +
> +  iommus:
> +    maxItems: 16
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  ethernet-ports:
> +    type: object
> +
> +    properties:
> +      '#address-cells':
> +        description: Port number of ETHA (TSNA).
> +        const: 1

Blank line

> +      '#size-cells':
> +        const: 0
> +
> +    additionalProperties: false

Don't put it between properties. For nested object usually this is
before properties:

> +
> +    patternProperties:
> +      "^port@[0-9a-f]+$":
> +        type: object
> +

Skip blank line.

> +        $ref: "/schemas/net/ethernet-controller.yaml#"

No need for quotes.

> +        unevaluatedProperties: false
> +
> +        properties:
> +          reg:
> +            description:
> +              Port number of ETHA (TSNA).
> +
> +          phy-handle:
> +            description:
> +              Phandle of an Ethernet PHY.

Why do you need to mention this property? Isn't it coming from
ethernet-controller.yaml?

> +
> +          phy-mode:
> +            description:
> +              This specifies the interface used by the Ethernet PHY.
> +            enum:
> +              - mii
> +              - sgmii
> +              - usxgmii
> +
> +          phys:
> +            maxItems: 1
> +            description:
> +              Phandle of an Ethernet SERDES.

This is getting confusing. You have now:
- phy-handle
- phy
- phy-device
- phys
in one schema... although lan966x serdes seems to do the same. :/

> +
> +          mdio:
> +            $ref: "/schemas/net/mdio.yaml#"

No need for quotes. Are you sure this is property of each port? I don't
know the net/ethernet bindings that good, so I need to ask sometimes
basic questions. Other bindings seem to do it differently a bit.

> +            unevaluatedProperties: false
> +
> +        required:
> +          - phy-handle
> +          - phy-mode
> +          - phys
> +          - mdio
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - interrupts
> +  - interrupt-names
> +  - clocks
> +  - clock-names
> +  - resets
> +  - power-domains
> +  - ethernet-ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/r8a779f0-cpg-mssr.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/power/r8a779f0-sysc.h>
> +
> +    ethernet@e6880000 {
> +            compatible = "renesas,r8a779f0-ether-switch";

Wrong indentation. Use 4 spaces.

> +            reg = <0xe6880000 0x20000>, <0xe68c0000 0x20000>;
> +            reg-names = "base", "secure_base";
> +            interrupts = <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 257 IRQ_TYPE_LEVEL_HIGH>,
Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C539C32796
	for <linux-phy@archiver.kernel.org>; Tue, 23 Aug 2022 08:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9xNgwrQoymIHT6bSVGuSr/AnXJSPHFjB8aSeR/POj/s=; b=elH3ZA7OCItlpI
	G0XImbvn+yFtfFibZi5ax1tPgkS4jDuRAwXSdFoSBoLB7jpjYvq45SLBVSoTBorvKmj+89V8tiJHV
	mt4buPjEEKygKvjDDaax8dGH1Xa0qhQ4G75yZKVkofFPT3Ex0GSH5oLAVbVatLNxYDZegFtsW5kpd
	QJYLAjqmuGWHRRBHdcrHA5Ux0sHlEIlV5WoFtR5HKustexkLT7HBfCLTz9UkOd9KlerHMbGDohawW
	OQ11i1+4lkcrV5tscJVLEtFp38uF5uuyWezeZo0l4q+tu9MYhx0rdDVxn9a+ao1j8BZdsM2Lcd+Zt
	1rrUbZlfcswHNFFj8piw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQPOq-0044HZ-OO; Tue, 23 Aug 2022 08:36:40 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQPOl-0044Br-4B
	for linux-phy@lists.infradead.org; Tue, 23 Aug 2022 08:36:38 +0000
Received: by mail-lj1-x229.google.com with SMTP id x25so12822686ljm.5
        for <linux-phy@lists.infradead.org>; Tue, 23 Aug 2022 01:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=+aSY9Y33CDXgz04lbF3PqxrBUx68k/v5JOdwfPTNsck=;
        b=QkuAXN+U7cnhI883/vPgSeyqlE+WERE888alAVsSQAP6K76e4Lq6scqjW5YP5gY4Zv
         gVD8rvePqRyUWnq08fWShX0UKGdz+64B0i1RmzOIMHquRKO34P4KjKVA1eQgbCOvET5c
         XLxKuXdMN7i7FrPlNniRLvaqe2MWHiMxe1+cKHpfOkn+zWrbYLoyoNUBJsvd/NsQRIxV
         0PAJTxFQYRRA1GjSzaLlvTMnfy5dlgNal0BIxfiprXMoLEB+392bMAYUtrZkZdjn3QD4
         aRNoqblddkQYhPC/kwhTpB8oFZ8tZvUr4aA/AJhU5tY5FrlelbEHmPwxWc2JqMxLkFl+
         3slw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=+aSY9Y33CDXgz04lbF3PqxrBUx68k/v5JOdwfPTNsck=;
        b=do3AklSHGkPpMlDxm7uXi6bvHXLvPxZBlGUx6uFYWIengVVXTn9qlZYXmGI2cz9KWW
         QwhP5qKpa9rCksKpBowHZ2vkp+g4whcj0amhCuMQUfe9ubJnU/vWMoFmOImSSI+AFNWh
         KHM3ahaEXbjnGtuKeoBKIu4ZBtS5VgYaPOdDjIZ1KvIDaMunBX5RCxk0V+CWK8kt7HQ5
         LvDduE3EwAsClHNw2LBOc0+QHxV4ktPUomKo8SPrbcIipxSv7VWtuWKDqrQauan0HS+o
         w/I4Q08iHaQ+AF/O8NSPfZRiqBUHsltIjIcdmKXACgBmBUl1hZO5Y1WY+5oELKOxgDiZ
         0ujw==
X-Gm-Message-State: ACgBeo22ijZlPLC2+HfeeZ07j4O64iLjPS4P9At603uUxIDeNa2rZ85c
	6TLjyC4q3iXagEHYO3TKXUTvBg==
X-Google-Smtp-Source: AA6agR4tz09nxCgU4KECChD6CEX8ta0EVwvv34zu7NRW9WZuo44ysLqMs2v/JFtkNU1OgDp8eiWwiw==
X-Received: by 2002:a2e:9d06:0:b0:261:d208:7475 with SMTP id t6-20020a2e9d06000000b00261d2087475mr1683044lji.113.1661243791045;
        Tue, 23 Aug 2022 01:36:31 -0700 (PDT)
Received: from [192.168.0.11] (89-27-92-210.bb.dnainternet.fi. [89.27.92.210])
        by smtp.gmail.com with ESMTPSA id p18-20020a2eb992000000b00261ca006158sm1243319ljp.54.2022.08.23.01.36.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 01:36:30 -0700 (PDT)
Message-ID: <ee93aa8a-d704-9d67-ad33-c81654c90ca2@linaro.org>
Date: Tue, 23 Aug 2022 11:36:29 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v1 1/1] dt-bindings: phy: ocelot-serdes: convert to YAML
Content-Language: en-US
To: Colin Foster <colin.foster@in-advantage.com>, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
Cc: UNGLinuxDriver@microchip.com,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>
References: <20220823060052.3921849-1-colin.foster@in-advantage.com>
 <20220823060052.3921849-2-colin.foster@in-advantage.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220823060052.3921849-2-colin.foster@in-advantage.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_013635_278229_62D9236A 
X-CRM114-Status: GOOD (  25.56  )
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

On 23/08/2022 09:00, Colin Foster wrote:
> Convert the phy-ocelot-serdes device tree binding to the new YAML format.
> 
> Additionally, add the file to MAINTAINERS since the original file didn't
> exist.
> 
> Signed-off-by: Colin Foster <colin.foster@in-advantage.com>
> ---
>  .../bindings/phy/phy-ocelot-serdes.txt        | 43 -------------
>  .../bindings/phy/phy-ocelot-serdes.yaml       | 61 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  3 files changed, 62 insertions(+), 43 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/phy-ocelot-serdes.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/phy-ocelot-serdes.yaml

Filename based on compatible, so
mscc,vsc7514-serdes.yaml

> 


> diff --git a/Documentation/devicetree/bindings/phy/phy-ocelot-serdes.yaml b/Documentation/devicetree/bindings/phy/phy-ocelot-serdes.yaml
> new file mode 100644
> index 000000000000..0666974d886a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/phy-ocelot-serdes.yaml
> @@ -0,0 +1,61 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/phy-ocelot-serdes.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Microsemi Ocelot SerDes muxing driver

s/driver//

Bindings are for hardware, not for Linux drivers.

> +
> +maintainers:
> +  - Alexandre Belloni <alexandre.belloni@bootlin.com>
> +  - UNGLinuxDriver@microchip.com
> +
> +description: |
> +  On Microsemi Ocelot, there is a handful of registers in HSIO address
> +  space for setting up the SerDes to switch port muxing.
> +
> +  A SerDes X can be "muxed" to work with switch port Y or Z for example.
> +  One specific SerDes can also be used as a PCIe interface.
> +
> +  Hence, a SerDes represents an interface, be it an Ethernet or a PCIe one.
> +
> +  There are two kinds of SerDes: SERDES1G supports 10/100Mbps in
> +  half/full-duplex and 1000Mbps in full-duplex mode while SERDES6G supports
> +  10/100Mbps in half/full-duplex and 1000/2500Mbps in full-duplex mode.
> +
> +  Also, SERDES6G number (aka "macro") 0 is the only interface supporting
> +  QSGMII.
> +
> +  This is a child of the HSIO syscon ("mscc,ocelot-hsio", see
> +  Documentation/devicetree/bindings/mips/mscc.txt) on the Microsemi Ocelot.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - mscc,vsc7514-serdes

Missing blank line

> +  "#phy-cells":
> +    const: 2
> +    description: |
> +      from the generic phy bindings, must be 2. 

Skip first sentence, it's obvious.

The first number
> +      defines the input port to use for a given SerDes macro. The
> +      second defines the macro to use. They are defined in
> +      dt-bindings/phy/phy-ocelot-serdes.h
> +
> +required:
> +  - compatible
> +  - "#phy-cells"

Missing additionalProperties: false

Base your YAML on example-schema.

> +
> +examlpes:

Typo.


> +  - |
> +    serdes: serdes {
> +      compatible = "mscc,vsc7514-serdes";
> +      #phy-cells = <2>;
> +    };
> +
> +    ethernet {
> +      port1 {
> +        phy-handle = <&phy_foo>;
> +        /* Link SERDES1G_5 to port1 */
> +        phys = <&serdes 1 SERDES1G_5>;
> +      };
> +    };

Skip consumer examples in provider bindings. They're obvious.

> diff --git a/MAINTAINERS b/MAINTAINERS
> index 714fd8b45e5a..10dd3c6ad6ad 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -13481,6 +13481,7 @@ M:	UNGLinuxDriver@microchip.com
>  L:	linux-mips@vger.kernel.org
>  S:	Supported
>  F:	Documentation/devicetree/bindings/mips/mscc.txt
> +F:	Documentation/devicetree/bindings/phy/phy-ocelot-serdes.yaml
>  F:	Documentation/devicetree/bindings/pinctrl/mscc,ocelot-pinctrl.yaml
>  F:	Documentation/devicetree/bindings/power/reset/ocelot-reset.txt
>  F:	arch/mips/boot/dts/mscc/


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

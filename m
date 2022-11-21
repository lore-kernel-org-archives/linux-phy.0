Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 356FDC4332F
	for <linux-phy@archiver.kernel.org>; Mon, 21 Nov 2022 12:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vzf+v4JlurOxqb2wikHpv6nvXmDvx2Ei6hNHTHOBW4g=; b=YGOr45tr3yE86d
	amP5jCtoLzMw3Pc193BcXj/Iax59THMDg4YObHRYC9tdsuIC0n6kSJnr5vY3iQRMv3Kngne2vNMGG
	pZVPVIXDP+sEKLnYkXEGcJgoJQ4kvX3jADyR6QwgoeE3l7UoVPUztuLexJiYBjUcIIXbsuPpf/9KJ
	a7/neGwt4IEzJ42JqXt4Xtwo6RHpyqBtNseWH6TYcvjOroMGgfYyxJTFUlwcB/VHfEieKB7FRAe5z
	dPjX/UGNBH+DY7+dotLKmgnV8tGOIFBkKgpO5OLGCfRxZVKunlG93EsCSMOf5gy3Rhcjs/NrKm3hl
	jYUnWg+tF8L/b9LxsLEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox5T1-00D9sd-K8; Mon, 21 Nov 2022 12:00:03 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox5Sz-00D9pp-1H
	for linux-phy@lists.infradead.org; Mon, 21 Nov 2022 12:00:02 +0000
Received: by mail-lj1-x229.google.com with SMTP id t10so14303043ljj.0
        for <linux-phy@lists.infradead.org>; Mon, 21 Nov 2022 04:00:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gAe96EUQJW/t2YfQOYFjoHjjiIW4hHrPPaKyPCc7BE4=;
        b=UVduBhk3PJQZkKzEskUrpKs00z1z4r/O7LnJCkT22HInQOeMTGaNIiUeqIGHvlHNel
         8VqMPfMXtV6tMv9ea7G6sbKvzE3Fm/DlG1E+g8NcPhYe8kgMQ604qRLIDomYKgkO4nJm
         nNM0oOsRVkJDTr9ybiWyVEr8r6WawaItHr7qHt8Sbx4Ok3kdRHr2SR9GXJjMcjqAyue3
         iOGkflLwOC1bOY41x6zbbYbq9oqoBTN30Z/aCEk3crJLxYULIxr+CRUxsV3WKHgXoVok
         yHMtfO5pYc15hhPs6wnzHYeNYaUln8nxRvBy6UGnsaaprdi+rLUUBCYXS1isltaJirK1
         YmLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gAe96EUQJW/t2YfQOYFjoHjjiIW4hHrPPaKyPCc7BE4=;
        b=vBchTVjK8/jCrz5ToPv+NR3dQ7hnxzCE/sXaXmPhnySq3o1Zv+gJRmd1lNJlRuhDeA
         wxkVs3u+tR9Zmz2IwuhvREcbV5kG+G3lwgRn0Dj65O0nPmnu2F276QNC3LcBaKrUWF4M
         zV0hk2a6ZNICSqZZhS05cGhDfGDIXzy1jdhtWAqXKeKd/1PC3zxNxWLBlN9WMCIZuwNJ
         NSvvCOsSweWsqi3aCxRlvp08YCMVf7vjz2gtmK7K6DBLx41r8op0202t0tSG/5qAgmCy
         A/OflTxW9LebLHASs8bdgk/chZ0OHhezbILgqVqIqPfBKixMm/K9ENMMaRRHbF90a5+q
         EKqw==
X-Gm-Message-State: ANoB5pk5cuKzlubZVbtqHcokdHcV3y/Q8TWwpU+k/zFxERgDBhU653xL
	FljOEhPaE5rNSHWm4eIHiIVbXw==
X-Google-Smtp-Source: AA0mqf6lo8pDgZCEf5cpGQ6TpOYX19afdgtwbFTqg3DuazhEzItnWlNNkGFC2exRFsAu0oB9C2ARJA==
X-Received: by 2002:a05:651c:160f:b0:278:d847:1a8b with SMTP id f15-20020a05651c160f00b00278d8471a8bmr5107958ljq.17.1669031999150;
        Mon, 21 Nov 2022 03:59:59 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id p3-20020ac24ec3000000b00492e3a8366esm2005053lfr.9.2022.11.21.03.59.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 03:59:58 -0800 (PST)
Message-ID: <856449f3-6341-78d8-28db-3d4b8a0a25ad@linaro.org>
Date: Mon, 21 Nov 2022 12:59:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 1/6] dt-bindings: phy: Add PCIe PHY bindings for FSD
Content-Language: en-US
To: Shradha Todi <shradha.t@samsung.com>, bhelgaas@google.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, kishon@ti.com,
 vkoul@kernel.org, lpieralisi@kernel.org, kw@linux.com, mani@kernel.org,
 arnd@arndb.de, gregkh@linuxfoundation.org, alim.akhtar@samsung.com,
 ajaykumar.rs@samsung.com, rcsekar@samsung.com, sriranjani.p@samsung.com,
 bharat.uppal@samsung.com, s.prashar@samsung.com, aswani.reddy@samsung.com,
 pankaj.dubey@samsung.com, p.rajanbabu@samsung.com, niyas.ahmed@samsung.com,
 chanho61.park@samsung.com
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20221121105210.68596-1-shradha.t@samsung.com>
 <CGME20221121104719epcas5p2f87febfba74a4ca6807b3095acf507d0@epcas5p2.samsung.com>
 <20221121105210.68596-2-shradha.t@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221121105210.68596-2-shradha.t@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_040001_110452_C3FA221E 
X-CRM114-Status: GOOD (  16.58  )
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

On 21/11/2022 11:52, Shradha Todi wrote:
> Document the PCIe PHY device tree bindings for Tesla
> FSD SoC

Subject: drop second, redundant "bindings".

> 
> Signed-off-by: Shradha Todi <shradha.t@samsung.com>
> ---
>  .../bindings/phy/phy-tesla-pcie.yaml          | 75 +++++++++++++++++++
>  1 file changed, 75 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/phy-tesla-pcie.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-tesla-pcie.yaml b/Documentation/devicetree/bindings/phy/phy-tesla-pcie.yaml
> new file mode 100644
> index 000000000000..8fa9a050af7a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/phy-tesla-pcie.yaml

Filename based on compatible.

> @@ -0,0 +1,75 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/phy-tesla-pcie.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Tesla FSD SoC PCIe PHY
> +
> +maintainers:
> +  - Shradha Todi <shradha.t@samsung.com>
> +
> +properties:
> +  "#phy-cells":
> +    const: 0

Put compatible as first.

> +
> +  compatible:
> +    enum:
> +      - tesla,fsd-pcie-phy
> +
> +  reg:
> +    minItems: 2

Drop minItems

> +    maxItems: 2
> +
> +  reg-names:
> +    minItems: 2
> +    maxItems: 2

Drop both.

> +    items:
> +      enum: [phy, pcs]

Instead list items one after another.

> +    description: |
> +      phy is the register access to PMA layer
> +      pcs is the register access to PCS layer

These go to describing items in 'reg:'

> +
> +  phy-mode:
> +    description: |
> +      Defines the bifurcation mode of the PHY

enum, probably type as well... phy-mode is usually a string. Is it here?

> +
> +  tesla,pmureg-phandle:

Drop phandle, so tesla,pmu-syscon

> +    $ref: '/schemas/types.yaml#/definitions/phandle'

Drop quotes

> +    description: phandle for PMU system controller interface used to
> +                 control PMU register bits for PCIe PHY
> +
> +  tesla,pcie-sysreg:
> +    $ref: '/schemas/types.yaml#/definitions/phandle'

Drop quotes

> +    description: phandle for system control registers, used to
> +                 control phy signals at system level
> +
> +required:
> +  - "#phy-cells"
> +  - compatible

compatible first.

> +  - reg
> +  - reg-names
> +  - phy-mode
> +  - tesla,pmureg-phandle
> +  - tesla,pcie-sysreg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    bus {
> +      #address-cells = <2>;
> +      #size-cells = <2>;
> +
> +      pcie_phy0: pcie-phy@15080000 {
> +        compatible = "tesla,fsd-pcie-phy";
> +        #phy-cells = <0>;
> +        reg = <0x0 0x15080000 0x0 0x2000>, <0x0 0x150A0000 0x0 0x1000>;
> +        reg-names = "phy", "pcs";
> +        tesla,pmureg-phandle = <&pmu_system_controller>;
> +        tesla,pcie-sysreg = <&sysreg_fsys0>;
> +        phy-mode = <0>;
> +        status = "disabled";

Drop status

> +      };
> +    };
> +...

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1528109E535
	for <linux-phy@archiver.kernel.org>; Thu, 26 Mar 2026 01:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mklThC86DWePMeglITXADAQES6aIqUiPuyuuvEc6l40=; b=Nn+lbAmjn+lXjq
	E8ObFmcEM+Zqf1x7hV1rh8DpRjfV48mLCy0jqMWDYQo9v/C6f8i8Nq6aXNP4AplCVF6XOGgosAi6N
	0ztPuIESX2KWf9dGfTVepu7oGtglakEBP8etWCARXLTz6CoTQyHmNN0ekg0pybPL2i22MgOiosp/s
	7yNAXyygRsbDKhq92dwVyUIIO1bpuShYHJCHi9VUPMVmzwXwjSWms6wMqmz+y/eFzlH1Var3dgHz1
	Vhvnmrwzs4S3T4Jo0vDvg43mxxPUXcZUtt4MxadVex+TvkIhSSiLYxYDBJul52biBYd0b6A9z4UzW
	23FWfKvvomKYZLAvC/Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5Zo3-00000004XX4-28WT;
	Thu, 26 Mar 2026 01:46:43 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5Zo0-00000004XW5-2rjQ
	for linux-phy@lists.infradead.org;
	Thu, 26 Mar 2026 01:46:42 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-5a285840940so79122e87.1
        for <linux-phy@lists.infradead.org>; Wed, 25 Mar 2026 18:46:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1774489598; x=1775094398; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tMM8gnzSZHuXSR/4tgTYg0ThVeyoW9N0uLZg0sQTEPk=;
        b=TKIRa9uvpQlXi0bbSySePkBALKXLtCEu3xx0YGDg+XKZFuN2Hfkxp0fWLquTe8ZOJj
         8jQTq2AAMR5RF0HHXDm60WCLYr9ReCsMjguR0s9bdL2AD2T707SkQvfN9paL+r3GpqR4
         D2ubMEe2cS8WI4a8tBOPnJLxYG2F7GrnHP85qOTHZLgx6LC4vBopfatqFyQsCotX819C
         XMZ5hcYLStljEtWsVvGYXyPZPYJrHdsyX1+mm8g2ZNILkXZ2nRBPffX3MgfEbzCqv5sJ
         v7tryaxC0XR0a728FvMunBGwLHheArQ+dzyODCUv2qTspkViK+9WOco/j3lD9Yhors8W
         Z03A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774489598; x=1775094398;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tMM8gnzSZHuXSR/4tgTYg0ThVeyoW9N0uLZg0sQTEPk=;
        b=ar+ivaq4Nrzp8icTgfmsvetUIVjya7b9DOIC86cy7VrruRNcaPYxYP6Pp8lUrBeYGk
         /JObIRBNWEYsQlfmWS2dYYT1vuH0O3mx90uhG4AcOq+2SpWZIeHMsx7hYXyKn4J6Hz3P
         XqTPLzjTL/VliO7THorCaXpuzXzBzEgaf7dT9bFMKik8NMjWi8nuIagk4Psjp7/vCfnw
         j9yu3u0+D0NykmP5mYWkSG2V9cPKpG5D9wsDvHbO1Z+nFAPSkG/7wA4tCEK8WGJoTNfv
         miBRnqpUOeyqHwtizmEByqUAaa2jg9t4EOYiqBdWOWVjNXFmAZVntPOryYe6aXPcmi4p
         X6wg==
X-Forwarded-Encrypted: i=1; AJvYcCUqXRpttWhCB7hmr68iF+o3GdTeDCB7wxDgxdpFduxGPmlUaHO4jxihyhehiwCaQDJsqpDLm4bI1pQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4VGXX5NbmRC2gX+sqZOoEJlqYZo7Yy7rKYTFV/1/hF8sww4nY
	sjh9Es06DGyiklOmgjyX5ALFU9lCs3OWB4mSc3/gJ989cIJHZxo4VGFv3q97JbTbpUI=
X-Gm-Gg: ATEYQzxXoZxJULz1QmpdPcgAtC7AspUcqEQ3ALWy3IEymbundx2/jEisLKKuEj//Rhv
	jnw7NA5TzHn0/XQC0lGyC6RUBEq0qxyWRUQbhx5+ccaA59wVFPoMYzByOGdoEJrv5Jgl5mYvYUi
	cZVl9GZJ5hHewuQnHFezWKADyseqH9EAPHajkMJAiNrgsoBhaOY8z8EbXGhzo6SxLwCGa0n+2v+
	od/5nWUWz85yYjGLxKVeaBfwaSWdCWQNH/+l19927ZjVp//iRM+0sth+jt2nWSbOmcjlRaxEHxP
	C3y7743YoUGr/IYQ7RFbkv7zI6FB/fTx3zQZomk4bl405eR39UNUhmcxCbVE02ab89p8H7sM/C1
	cnS+NBSMgwQz1z2G2Ac2erZMFaDv7pyESrMtgBV5sove0nw9eF0PZSV61b0ZKYoncbAqay23264
	mWU0J+EMhspBAGb85t336XF0y/O8Y8aLZzeTVC/QomH411pFnnDfk/Dy8a2cqejr+G177YdoFQd
	d7Ajbo0wzeiH83D
X-Received: by 2002:a05:6512:3d0b:b0:5a2:78e2:504b with SMTP id 2adb3069b0e04-5a29b9a974emr1031388e87.7.1774489597790;
        Wed, 25 Mar 2026 18:46:37 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a2a064c187sm243911e87.27.2026.03.25.18.46.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2026 18:46:37 -0700 (PDT)
Message-ID: <72ef6c9e-feb6-4e57-b8cc-7801bd748698@linaro.org>
Date: Thu, 26 Mar 2026 03:46:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260326-x1e-csi2-phy-v5-0-0c0fc7f5c01b@linaro.org>
 <20260326-x1e-csi2-phy-v5-1-0c0fc7f5c01b@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20260326-x1e-csi2-phy-v5-1-0c0fc7f5c01b@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_184640_817129_A6CA0880 
X-CRM114-Status: GOOD (  25.07  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 3/26/26 03:04, Bryan O'Donoghue wrote:
> Add a base schema initially compatible with x1e80100 to describe MIPI CSI2
> PHY devices.
> 
> The hardware can support both CPHY, DPHY and a special split-mode DPHY. We
> capture those modes as:
> 
> - PHY_QCOM_CSI2_MODE_DPHY
> - PHY_QCOM_CSI2_MODE_CPHY
> - PHY_QCOM_CSI2_MODE_SPLIT_DPHY

Distinction between PHY_QCOM_CSI2_MODE_DPHY and PHY_QCOM_CSI2_MODE_SPLIT_DPHY
is
1) insufficient in just this simplistic form, because the assignment of
particular lanes is also needed,
2) and under the assumption that the lane mapping is set somewhere else, then
there should be no difference between PHY_QCOM_CSI2_MODE_{DPHY,SPLIT_DPHY},
it's just DPHY, and the subtype is deductible from data-lanes property on
the consumer side.

So far the rationale is unclear, why anything above regular PHY_TYPE_DPHY
and PHY_TYPE_CPHY is needed here, those two are sufficient.

> 
> The CSIPHY devices have their own pinouts on the SoC as well as their own
> individual voltage rails.
> 
> The need to model voltage rails on a per-PHY basis leads us to define
> CSIPHY devices as individual nodes.
> 
> Two nice outcomes in terms of schema and DT arise from this change.
> 
> 1. The ability to define on a per-PHY basis voltage rails.
> 2. The ability to require those voltage.
> 
> We have had a complete bodge upstream for this where a single set of
> voltage rail for all CSIPHYs has been buried inside of CAMSS.
> 
> Much like the I2C bus which is dedicated to Camera sensors - the CCI bus in
> CAMSS parlance, the CSIPHY devices should be individually modelled.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>   .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 130 +++++++++++++++++++++
>   include/dt-bindings/phy/phy-qcom-mipi-csi2.h       |  15 +++
>   2 files changed, 145 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> new file mode 100644
> index 0000000000000..63114151104b4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> @@ -0,0 +1,130 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,x1e80100-csi2-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm CSI2 PHY
> +
> +maintainers:
> +  - Bryan O'Donoghue <bod@kernel.org>
> +
> +description:
> +  Qualcomm MIPI CSI2 C-PHY/D-PHY combination PHY. Connects MIPI CSI2 sensors
> +  to Qualcomm's Camera CSI Decoder. The PHY supports both C-PHY and D-PHY
> +  modes.
> +
> +properties:
> +  compatible:
> +    const: qcom,x1e80100-csi2-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 1
> +    description:
> +      The single cell specifies the PHY operating mode.
> +      See include/dt-bindings/phy/phy-qcom-mipi-csi2.h for valid values.

include/dt-bindings/phy/phy.h should be good enough as it's stated above.

> +
> +  clocks:
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: core
> +      - const: timer
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  operating-points-v2:
> +    maxItems: 1
> +
> +  power-domains:
> +    items:
> +      - description: MXC or MXA voltage rail
> +      - description: MMCX voltage rail
> +
> +  power-domain-names:
> +    items:
> +      - const: mx
> +      - const: mmcx
> +
> +  vdda-0p9-supply:
> +    description: Phandle to a 0.9V regulator supply to a PHY.
> +
> +  vdda-1p2-supply:
> +    description: Phandle to 1.2V regulator supply to a PHY.
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +  - clocks
> +  - clock-names
> +  - interrupts
> +  - operating-points-v2
> +  - power-domains
> +  - power-domain-names
> +  - vdda-0p9-supply
> +  - vdda-1p2-supply
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/qcom,x1e80100-camcc.h>
> +    #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
> +    #include <dt-bindings/phy/phy-qcom-mipi-csi2.h>
> +    #include <dt-bindings/power/qcom,rpmhpd.h>
> +
> +    csiphy4: csiphy@ace4000 {
> +        compatible = "qcom,x1e80100-csi2-phy";
> +        reg = <0x0ace4000 0x2000>;
> +        #phy-cells = <1>;
> +
> +        clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
> +                 <&camcc CAM_CC_CSI0PHYTIMER_CLK>;
> +        clock-names = "core",
> +                      "timer";
> +
> +        operating-points-v2 = <&csiphy_opp_table>;
> +
> +        interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
> +
> +        power-domains = <&rpmhpd RPMHPD_MX>,
> +                        <&rpmhpd RPMHPD_MMCX>;
> +        power-domain-names = "mx",
> +                             "mmcx";
> +
> +        vdda-0p9-supply = <&vreg_l2c_0p8>;
> +        vdda-1p2-supply = <&vreg_l1c_1p2>;
> +    };
> +
> +    csiphy_opp_table: opp-table {
> +        compatible = "operating-points-v2";
> +
> +        opp-300000000 {
> +            opp-hz = /bits/ 64 <300000000>;
> +            required-opps = <&rpmhpd_opp_low_svs_d1>,
> +                            <&rpmhpd_opp_low_svs_d1>;
> +        };
> +
> +        opp-400000000 {
> +            opp-hz = /bits/ 64 <400000000>;
> +            required-opps = <&rpmhpd_opp_low_svs>,
> +                            <&rpmhpd_opp_low_svs>;
> +        };
> +
> +        opp-480000000 {
> +            opp-hz = /bits/ 64 <480000000>;
> +            required-opps = <&rpmhpd_opp_low_svs>,
> +                            <&rpmhpd_opp_low_svs>;
> +        };
> +    };
> +
> +    isp@acb7000 {
> +        phys = <&csiphy4 PHY_QCOM_CSI2_MODE_DPHY>;
> +    };

This example is incomplete in sense that it does not include CAMSS
CSIPHY IP hardware configuration in whole.

> diff --git a/include/dt-bindings/phy/phy-qcom-mipi-csi2.h b/include/dt-bindings/phy/phy-qcom-mipi-csi2.h
> new file mode 100644
> index 0000000000000..fa48fd75c58d8
> --- /dev/null
> +++ b/include/dt-bindings/phy/phy-qcom-mipi-csi2.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause) */
> +/*
> + * Qualcomm MIPI CSI2 PHY constants
> + *
> + * Copyright (C) 2026 Linaro Limited
> + */
> +
> +#ifndef __DT_BINDINGS_PHY_MIPI_CSI2__
> +#define __DT_BINDINGS_PHY_MIPI_CSI2__
> +
> +#define PHY_QCOM_CSI2_MODE_DPHY		0
> +#define PHY_QCOM_CSI2_MODE_CPHY		1
> +#define PHY_QCOM_CSI2_MODE_SPLIT_DPHY	2
> +
> +#endif /* __DT_BINDINGS_PHY_MIPI_CSI2__ */
> 

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BC91CD5BD1
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jun 2026 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K4+CBxMBXKGJIU/X8qsM/QW5vEmUfuwReGarOKPUEE8=; b=KK9NhQdjZeQWEG
	n6nP4/56zcBRTopwLy0ctcBBmbQ8ulUnOpn2wtPXPP2T5/sTZAk/azbItPV8zGxSXz3npupZGPeeP
	waq82OxL6byJE3bBZcHKCNH6WH0w6C4qX1bqrF0AgUYXDPLQMvY8Rv0xJ2IkGcbidBGratODErPtr
	rn2Xw584qehdnP3KtScTTGEN8AUbo0cwSXel9A0jXVLSxXypXQESW/eE5TIcuQpOl/PRZQOey6sPz
	H9PCSIN1nU2R3RR0dBSEW5l2noFEpV4/Z6jVdaH1QIF0LysyBFQZqh6v+x1Z7qC33DizW9g6oR4UB
	WTQ7JLs54Rp4kKeXJpgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUX9M-0000000DrJQ-3ksh;
	Tue, 02 Jun 2026 21:59:52 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUX9J-0000000DrIg-3rjj
	for linux-phy@lists.infradead.org;
	Tue, 02 Jun 2026 21:59:51 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-396773734e8so4611921fa.3
        for <linux-phy@lists.infradead.org>; Tue, 02 Jun 2026 14:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1780437587; x=1781042387; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/rYnZ3lqT7DmKRSTxtVSgTNnxHdLejTszMrt6K93BCk=;
        b=Bq5hKH6bZxG6TtYnqGZun9fBNastMbrYvwCwTRVDMdz65j+61PHe9FZF0+47+D5TRQ
         GhQeAJOh2zjP5U37ChOMpQsGdRupp9fSjyneOqQ1TwLr2j9ee9yNsZgxVZkaukn0OHTj
         oQv9msZuTRXXiUFxomQDy5aQOnT87Wj9inWQ5dEhIv+5t5JwV5UVKOL6y6KGOimUpxeX
         hh8v1+quFlV/WOqrY3N22hSnkt5tZfDs7yMBTs+hiw6v4Uvoeqsdji3LgCDI5jylqrOF
         h1kLT5+6LfgLyOr4Pbx/j4SERTcm9eEAYei8qADt8BLbyW/0sg6lf3TXOLYqllblXLEH
         K+zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780437587; x=1781042387;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/rYnZ3lqT7DmKRSTxtVSgTNnxHdLejTszMrt6K93BCk=;
        b=q2X9LRcTKNAoONkCa4NEO/eRaYoktf8o2Pcu5KtfVzcNJP8WHRc7019dXWtIplSuJo
         gVJgCgj3GXtsUnJfJ3Zgv7t7im7veLtSYVMPS4DvZJyHY/Rt0BY0OJhT2NH6g/3dY/iP
         FFVLTBaso5PysVIJ4Uzq3GNmUWgSM6seY7pOeC/E29gROVWvbR3D0oTpSBkkoqCQ2AgM
         vl3OrgOJFSinWyv+UfBXk9RoCMJ/DayW8ANPhP4xTLL+xq4f965ZlDnsjRr9D3x6UXL5
         1wa8WswZbnqbcsB5IqehhJ5KK9nTrHiu0Cx1VwaPcG/QXZC1er/bJ8/IQkL/KOabOadC
         nMZQ==
X-Forwarded-Encrypted: i=1; AFNElJ8aJtswxCCYLDCLXUThHT8EBG7J9Zq1bRfnndqtDc0QNDE08KVaKHQbTGSUACnbXTTlyNYGWjhHa9A=@lists.infradead.org
X-Gm-Message-State: AOJu0Yylr0PyFGYyINt+wdyd1jXgMd6Lo5V/7ttLeVEctzuKTXflVstE
	LqoogAi2qKncXW+fGk41At8nQ3xgKZdX/cBMCDh6n0dOyGJqo6osVLp8O/dD7rUrpMA=
X-Gm-Gg: Acq92OEOKZrCBBjHMXAKK0e7VYkTVnN5+6j11eIm8ZUsS/bal+f0muv1nRlKbb1Tilb
	BzjnodKH3T2OV4fbSjZBAabMZYps6q5GcWhIvbYFaajVuYoUdd9svXO4euSAor0XoEyW1TAlMJI
	HnDigKVsbBZgu1L+PnezZxB4D3z8uJJEaZY5vJakBw1fh08tNRkcxd9qNlFWC1WNPc5tzYuW4Vo
	aOb0ZkHys5qdIzaKqUyO8FuKbD7rFMBmrQEd5k8NDN3GP5DQLQmcBkPmJR+jIlhAz78WpJZzwyR
	wOaXryCW9IbKgbTM5m5KRNgC4iwQmAiQLyR54PeT9p/S33wn33eGHELmaq62hkkFhZjISNYYF5b
	37Ce853Gg6q3h0x73eKuJVJqTsgZeODXpvw8DVn1Xp0Cvu9GGqEMcFn+2CzJgq5Y4xQwB8QfyEn
	gRqzWbrjyw1cDqfdrdXEbJpbmPPu2hwyLc+7H6VVpS7PMZbSzKVtd+Qd8jmZRuTrabvctFw5R7j
	kialHG4504gyPCj
X-Received: by 2002:a2e:bc2a:0:b0:396:975f:c384 with SMTP id 38308e7fff4ca-396ac314d06mr1880491fa.6.1780437587064;
        Tue, 02 Jun 2026 14:59:47 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-396abd6cbe6sm3606351fa.0.2026.06.02.14.59.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2026 14:59:46 -0700 (PDT)
Message-ID: <dda32577-04e0-4507-acaf-a5694f4f31b3@linaro.org>
Date: Wed, 3 Jun 2026 00:59:40 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-1-a85668459521@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20260523-x1e-csi2-phy-v8-1-a85668459521@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_145950_044450_31078027 
X-CRM114-Status: GOOD (  25.99  )
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

On 5/23/26 05:48, Bryan O'Donoghue wrote:
> Add a base schema initially compatible with x1e80100 to describe MIPI CSI2
> PHY devices.
> 
> The hardware can support both CPHY, DPHY and a special split-mode DPHY.
> 
> The schema here defines three ports:
> 
> port@0:
>      The first input port where a sensor is always required.
> 
> port@1:
>      A second optional input port which if present implies DPHY split-mode.
> 
> port@2:
>      A third always required output port which connects to the controller.
> 

This port numeration is imperfect, because port@0 and port@2 are required,
while middle port@1 is optional.

Like it was stated before a number of times, it seems natural to operate
with two ports, where input port may have two endpoints rather than 3 ports,
also that approach solves the problem of a hole in the port numeration.

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
>   .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 209 +++++++++++++++++++++
>   1 file changed, 209 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> new file mode 100644
> index 0000000000000..270375f949880
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> @@ -0,0 +1,209 @@
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

#phy-cells should be 0, because the PHY operating mode is well defined
by 'bus-type' property of an endpoint on the sensor side, the opposite
side of CAMSS/CSID as a CSIPHY "consumer" should not dictate the PHY type.

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
> +      - description: MMCX voltage rail
> +      - description: MXC or MXA voltage rail

Only "qcom,x1e80100-csi2-phy" device is supported so far, unlikely it's
the case that "MXC or MXA voltage rail" should be specified, it'd be
just one of two or both.

> +
> +  power-domain-names:
> +    items:
> +      - const: mmcx
> +      - const: mx
> +
> +  vdda-0p9-supply:
> +    description: Phandle to a 0.9V regulator supply to a PHY.
> +
> +  vdda-1p2-supply:
> +    description: Phandle to 1.2V regulator supply to a PHY.
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        description: Sensor input. Always present.
> +        unevaluatedProperties: false
> +
> +        properties:
> +          endpoint:
> +            $ref: /schemas/media/video-interfaces.yaml#
> +            unevaluatedProperties: false
> +            properties:
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4
> +              clock-lanes:
> +                maxItems: 1
> +              remote-endpoint: true
> +            required:
> +              - data-lanes
> +              - remote-endpoint
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        description:
> +          Second sensor input. When present, indicates DPHY split mode.
> +        unevaluatedProperties: false
> +
> +        properties:
> +          endpoint:
> +            $ref: /schemas/media/video-interfaces.yaml#
> +            unevaluatedProperties: false
> +            properties:
> +              data-lanes:
> +                maxItems: 1
> +              clock-lanes:
> +                maxItems: 1
> +              remote-endpoint: true
> +            required:
> +              - data-lanes
> +              - clock-lanes
> +              - remote-endpoint

As it's stated above, it should be converted to a single port with two
endpoints, it'd be done in accordance to video-interfaces.yaml.

> +
> +      port@2:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        description: Output to CAMSS controller.
> +        unevaluatedProperties: false
> +
> +        properties:
> +          endpoint:
> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
> +            unevaluatedProperties: false
> +            properties:
> +              remote-endpoint: true
> +            required:
> +              - remote-endpoint
> +
> +    required:
> +      - port@0
> +      - port@2
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
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/qcom,x1e80100-camcc.h>
> +    #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
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
> +        power-domains = <&rpmhpd RPMHPD_MMCX>,
> +                        <&rpmhpd RPMHPD_MX>;
> +        power-domain-names = "mmcx",
> +                             "mx";
> +
> +        vdda-0p9-supply = <&vreg_l2c_0p8>;
> +        vdda-1p2-supply = <&vreg_l1c_1p2>;
> +
> +        ports {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            port@0 {
> +                reg = <0>;
> +                csiphy0_in_ep: endpoint {
> +                    data-lanes = <0 1>;
> +                    clock-lanes = <2>;
> +                    remote-endpoint = <&sensor_out>;
> +                };
> +            };
> +
> +            port@2 {
> +                reg = <2>;
> +                csiphy0_out_ep: endpoint {
> +                    remote-endpoint = <&controller_in>;
> +                };
> +            };
> +        };
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
> +                            <&rpmhpd_opp_low_svs_d1>;
> +        };
> +
> +        opp-480000000 {
> +            opp-hz = /bits/ 64 <480000000>;
> +            required-opps = <&rpmhpd_opp_low_svs>,
> +                            <&rpmhpd_opp_low_svs_d1>;
> +        };
> +    };
> 

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
